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
    <td style="white-space: nowrap; text-align: right">930.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±353.98%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">709.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±1103.83%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">696.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±2770.16%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">675.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±2993.87%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">627.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±2887.62%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">587.98 K</td>
    <td style="white-space: nowrap; text-align: right">1.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±2978.32%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">551.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±1980.08%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">541.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±2810.99%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">462.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±916.67%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">458.63 K</td>
    <td style="white-space: nowrap; text-align: right">2.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±529.07%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">5 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">296.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±437.70%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">8 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">254.23 K</td>
    <td style="white-space: nowrap; text-align: right">3.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±1177.84%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">11 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">149.26 K</td>
    <td style="white-space: nowrap; text-align: right">6.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±3472.82%</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
    <td style="white-space: nowrap; text-align: right">21 μs</td>
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
    <td style="white-space: nowrap;text-align: right">930.93 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">709.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">696.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">675.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">627.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">587.98 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">551.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.69x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">541.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.72x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">462.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">458.63 K</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">296.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.14x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">254.23 K</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">149.26 K</td>
    <td style="white-space: nowrap; text-align: right">6.24x</td>
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
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
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
