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
    <td style="white-space: nowrap; text-align: right">999.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±740.99%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap; text-align: right">875.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±560.15%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">857.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±3349.63%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap; text-align: right">825.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±3031.27%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">814.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±3028.62%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim osa_distance</td>
    <td style="white-space: nowrap; text-align: right">582.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.60%</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">342.32 K</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±937.25%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">4.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">316.46 K</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±943.36%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">4.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">300.54 K</td>
    <td style="white-space: nowrap; text-align: right">3.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±193.95%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">7.90 μs</td>
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
    <td style="white-space: nowrap;text-align: right">999.70 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap; text-align: right">875.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">857.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap; text-align: right">825.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">814.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim osa_distance</td>
    <td style="white-space: nowrap; text-align: right">582.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.72x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">342.32 K</td>
    <td style="white-space: nowrap; text-align: right">2.92x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">316.46 K</td>
    <td style="white-space: nowrap; text-align: right">3.16x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">300.54 K</td>
    <td style="white-space: nowrap; text-align: right">3.33x</td>
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
    <td style="white-space: nowrap">strsim jaro_winkler</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">strsim jaro</td>
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
