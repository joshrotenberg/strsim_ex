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
    <td style="white-space: nowrap; text-align: right">1006.05 K</td>
    <td style="white-space: nowrap; text-align: right">0.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±158.22%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">830.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±154.68%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">761.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±2616.29%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">685.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±742.18%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">619.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±2467.62%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">616.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±1868.97%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">597.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±2288.97%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">571.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±2989.93%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">490.06 K</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±310.56%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">477.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.55%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">316.18 K</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.13%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">6 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">277.56 K</td>
    <td style="white-space: nowrap; text-align: right">3.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±634.67%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">7 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">260.82 K</td>
    <td style="white-space: nowrap; text-align: right">3.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±1251.42%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">8 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1006.05 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">830.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">761.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">685.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">619.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.62x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">616.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">597.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">571.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.76x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">490.06 K</td>
    <td style="white-space: nowrap; text-align: right">2.05x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">477.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.11x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">316.18 K</td>
    <td style="white-space: nowrap; text-align: right">3.18x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">277.56 K</td>
    <td style="white-space: nowrap; text-align: right">3.62x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">260.82 K</td>
    <td style="white-space: nowrap; text-align: right">3.86x</td>
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
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
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
    <td style="white-space: nowrap">normalized_levensthein</td>
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
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
</table>
<hr/>
