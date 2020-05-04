# Benchmark

This benchmark compares all of the implemented strsim functions.

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">4</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">8 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.10.3</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">22.3.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">10 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">hamming</td>
    <td style="white-space: nowrap; text-align: right">1037.48 K</td>
    <td style="white-space: nowrap; text-align: right">0.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±468.92%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">779.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±327.35%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">762.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±3670.54%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">757.40 K</td>
    <td style="white-space: nowrap; text-align: right">1.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±207.92%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">711.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±3265.11%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">663.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±3887.15%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">494.57 K</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±2314.36%</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">3.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">467.92 K</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±3516.57%</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">3.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">443.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±1836.83%</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">4.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">398.07 K</td>
    <td style="white-space: nowrap; text-align: right">2.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±560.99%</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">5.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">317.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±975.79%</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">6.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">298.04 K</td>
    <td style="white-space: nowrap; text-align: right">3.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±696.33%</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">6.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">231.43 K</td>
    <td style="white-space: nowrap; text-align: right">4.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±1133.50%</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">11.98 μs</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">hamming</td>
    <td style="white-space: nowrap;text-align: right">1037.48 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">779.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">762.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">757.40 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">711.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">663.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.56x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">494.57 K</td>
    <td style="white-space: nowrap; text-align: right">2.1x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">467.92 K</td>
    <td style="white-space: nowrap; text-align: right">2.22x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">443.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.34x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">398.07 K</td>
    <td style="white-space: nowrap; text-align: right">2.61x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">317.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.27x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">298.04 K</td>
    <td style="white-space: nowrap; text-align: right">3.48x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">231.43 K</td>
    <td style="white-space: nowrap; text-align: right">4.48x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">hamming</td>
    <td style="white-space: nowrap">24 B</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
</table>
<hr/>
