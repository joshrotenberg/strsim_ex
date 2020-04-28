#[macro_use]
extern crate rustler;

extern crate strsim;

use rustler::{Encoder, Env, Error, NifResult, Term};
use strsim::{
    damerau_levenshtein as _damerau_levenshtein, hamming as _hamming, jaro as _jaro,
    jaro_winkler as _jaro_winkler, levenshtein as _levenshtein,
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
