#[macro_use]
extern crate rustler;

extern crate strsim;

use rustler::{Encoder, Env, Error, NifResult, Term};
use strsim::{
    damerau_levenshtein as _damerau_levenshtein,
    generic_damerau_levenshtein as _generic_damerau_levenshtein,
    generic_hamming as _generic_hamming, generic_jaro as _generic_jaro,
    generic_jaro_winkler as _generic_jaro_winkler, generic_levenshtein as _generic_levenshtein,
    hamming as _hamming, jaro as _jaro, jaro_winkler as _jaro_winkler, levenshtein as _levenshtein,
    normalized_damerau_levenshtein as _normalized_damerau_levenshtein,
    normalized_levenshtein as _normalized_levenshtein, osa_distance as _osa_distance,
    sorensen_dice as _sorensen_dice, StrSimError::DifferentLengthArgs,
};

mod atoms {
    rustler_atoms! {
        atom ok;
        atom error;

        // https://docs.rs/strsim/0.10.0/strsim/enum.StrSimError.html
        atom different_length_args;
    }
}

rustler::rustler_export_nifs! {
    "Elixir.Strsim.Nif",
    [
        ("damerau_levenshtein", 2, damerau_levenshtein),
        ("generic_damerau_levenshtein", 2, generic_damerau_levenshtein),
        ("generic_hamming", 2, generic_hamming),
        ("generic_jaro", 2, generic_jaro),
        ("generic_jaro_winkler", 2, generic_jaro_winkler),
        ("generic_levenshtein", 2, generic_levenshtein),
        ("hamming", 2, hamming),
        ("jaro", 2, jaro),
        ("jaro_winkler", 2, jaro_winkler),
        ("normalized_damerau_levenshtein", 2, normalized_damerau_levenshtein),
        ("normalized_levenshtein", 2, normalized_levenshtein),
        ("levenshtein", 2, levenshtein),
        ("osa_distance", 2, osa_distance),
        ("sorensen_dice", 2, sorensen_dice)
    ],
    None
}

fn do_match_usize<'a>(f: fn(&str, &str) -> usize, args: &[Term<'a>]) -> Result<usize, Error> {
    let str1: String = args[0].decode()?;
    let str2: String = args[1].decode()?;

    Ok(f(&str1, &str2))
}

fn do_match_f64<'a>(f: fn(&str, &str) -> f64, args: &[Term<'a>]) -> Result<f64, Error> {
    let str1: String = args[0].decode()?;
    let str2: String = args[1].decode()?;

    Ok(f(&str1, &str2))
}

fn damerau_levenshtein<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_usize(_damerau_levenshtein, args)?).encode(env))
}

fn generic_damerau_levenshtein<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    match args[0].list_length() {
        Ok(l) => println!("{}", l),
        // Err(err) => println!("error"),
        None => println!("nones")
    }
    match args[0].list_get_cell() {
        Ok((one, two)) => println!("got em"),
        Err(err) => println!("an error")
    }
    // println!("{:?}", _generic_damerau_levenshtein(&["one", "two"], &["one", "three"]));
    let list_iterator: rustler::ListIterator = args[0].decode()?;
    match list_iterator.peekable().peek() {
        Some(item) => match item.get_type() {
            rustler::TermType::Binary => println!("string"),
            rustler::TermType::Number => println!("number"),
            _ => println!("dunno"),
        },
        None => println!("shits empty"),
    }

    // match args[0].decode()?.next().get_type() {
    // rustler::TermType::List => println!("list"),
    // _ => println!("dunno")
    // }
    // Ok((atoms::ok(), 2).encode(env))
    let vec1: Vec<String> = args[0].decode()?;
    let vec2: Vec<String> = args[1].decode()?;
    let res = _generic_damerau_levenshtein(&vec1, &vec2);
    Ok((atoms::ok(), res).encode(env))
}

fn generic_hamming<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let vec1: Vec<Term> = args[0].decode()?;
    let vec2: Vec<Term> = args[1].decode()?;

    match _generic_hamming(&vec1, &vec2) {
        Ok(num) => Ok((atoms::ok(), num).encode(env)),
        Err(DifferentLengthArgs) => {
            Ok((atoms::error(), atoms::different_length_args()).encode(env))
        }
    }
}

fn generic_jaro<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let vec1: Vec<Term> = args[0].decode()?;
    let vec2: Vec<Term> = args[1].decode()?;

    Ok((atoms::ok(), _generic_jaro(&vec1, &vec2)).encode(env))
}

fn generic_jaro_winkler<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let vec1: Vec<Term> = args[0].decode()?;
    let vec2: Vec<Term> = args[1].decode()?;

    Ok((atoms::ok(), _generic_jaro_winkler(&vec1, &vec2)).encode(env))
}

fn generic_levenshtein<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let vec1: Vec<Term> = args[0].decode()?;
    let vec2: Vec<Term> = args[1].decode()?;

    Ok((atoms::ok(), _generic_levenshtein(&vec1, &vec2)).encode(env))
}

fn hamming<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let str1: String = args[0].decode()?;
    let str2: String = args[1].decode()?;

    match _hamming(&str1, &str2) {
        Ok(num) => Ok((atoms::ok(), num).encode(env)),
        Err(DifferentLengthArgs) => {
            Ok((atoms::error(), atoms::different_length_args()).encode(env))
        }
    }
}

fn jaro<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_f64(_jaro, args)?).encode(env))
}

fn jaro_winkler<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_f64(_jaro_winkler, args)?).encode(env))
}

fn normalized_damerau_levenshtein<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((
        atoms::ok(),
        do_match_f64(_normalized_damerau_levenshtein, args)?,
    )
        .encode(env))
}

fn normalized_levenshtein<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_f64(_normalized_levenshtein, args)?).encode(env))
}

fn levenshtein<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_usize(_levenshtein, args)?).encode(env))
}

fn osa_distance<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_usize(_osa_distance, args)?).encode(env))
}

fn sorensen_dice<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    Ok((atoms::ok(), do_match_f64(_sorensen_dice, args)?).encode(env))
}
