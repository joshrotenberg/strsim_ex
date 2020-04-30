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
    <td style="white-space: nowrap">strsim hamming</td>
    <td style="white-space: nowrap; text-align: right">1021.46 K</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±1054.25%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap; text-align: right">864.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±127.78%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap; text-align: right">746.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±2231.29%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">685.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±11694.07%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">575.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±4878.28%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim osa_distance</td>
    <td style="white-space: nowrap; text-align: right">512.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.42%</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">3.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">322.81 K</td>
    <td style="white-space: nowrap; text-align: right">3.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±1022.88%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">5.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">251.74 K</td>
    <td style="white-space: nowrap; text-align: right">3.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±618.44%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">9.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">242.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±5967.93%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">6.90 μs</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">strsim hamming</td>
    <td style="white-space: nowrap;text-align: right">1021.46 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap; text-align: right">864.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap; text-align: right">746.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">685.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">575.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.77x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim osa_distance</td>
    <td style="white-space: nowrap; text-align: right">512.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">322.81 K</td>
    <td style="white-space: nowrap; text-align: right">3.16x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">251.74 K</td>
    <td style="white-space: nowrap; text-align: right">4.06x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">242.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.22x</td>
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
    <td style="white-space: nowrap">strsim hamming</td>
    <td style="white-space: nowrap">24 B</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim osa_distance</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim sorensen_dice</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_damerau_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim damerau_levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>
</table>
<hr/>
