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
    <td style="white-space: nowrap; text-align: right">808.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±1449.60%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">698.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±2357.80%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">669.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±1257.38%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">632.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±542.37%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">599.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±2186.80%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">525.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±2464.40%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">515.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±2928.56%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">490.34 K</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±2004.99%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">440.62 K</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±222.23%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">5 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">335.71 K</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±6773.32%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">5 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">295.85 K</td>
    <td style="white-space: nowrap; text-align: right">3.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±509.08%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">7 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">240.32 K</td>
    <td style="white-space: nowrap; text-align: right">4.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±845.84%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">12 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">220.89 K</td>
    <td style="white-space: nowrap; text-align: right">4.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±1709.77%</td>
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
    <td style="white-space: nowrap;text-align: right">808.84 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">698.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">669.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">632.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">599.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">525.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">515.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">490.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">440.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.84x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">335.71 K</td>
    <td style="white-space: nowrap; text-align: right">2.41x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">295.85 K</td>
    <td style="white-space: nowrap; text-align: right">2.73x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">240.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.37x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">220.89 K</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
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
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
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
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
</table>
<hr/>
