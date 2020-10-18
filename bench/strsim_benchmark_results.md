
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
    <td style="white-space: nowrap">Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">16</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">32 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.11.0</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">23.1.1</td>
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
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">523.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±2214.63%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">1.57 M</td>
    <td style="white-space: nowrap; text-align: right">635.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±1632.64%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">1.52 M</td>
    <td style="white-space: nowrap; text-align: right">657.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±1975.89%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">665.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±2184.15%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">1.45 M</td>
    <td style="white-space: nowrap; text-align: right">691.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±1674.09%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">1.36 M</td>
    <td style="white-space: nowrap; text-align: right">735.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±2699.82%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">1.17 M</td>
    <td style="white-space: nowrap; text-align: right">854.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±2202.04%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">1.11 M</td>
    <td style="white-space: nowrap; text-align: right">899.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±2283.61%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">1.02 M</td>
    <td style="white-space: nowrap; text-align: right">978.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±1288.22%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">0.94 M</td>
    <td style="white-space: nowrap; text-align: right">1063.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±1243.85%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">0.71 M</td>
    <td style="white-space: nowrap; text-align: right">1402.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±1531.18%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">0.63 M</td>
    <td style="white-space: nowrap; text-align: right">1597.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±868.47%</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">0.61 M</td>
    <td style="white-space: nowrap; text-align: right">1635.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±1334.89%</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">1.91 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">levenshtein</td>
    <td style="white-space: nowrap; text-align: right">1.57 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">1.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">jaro</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_hamming</td>
    <td style="white-space: nowrap; text-align: right">1.45 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">normalized_levensthein</td>
    <td style="white-space: nowrap; text-align: right">1.36 M</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_jaro</td>
    <td style="white-space: nowrap; text-align: right">1.17 M</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_jaro_winkler</td>
    <td style="white-space: nowrap; text-align: right">1.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">osa_distance</td>
    <td style="white-space: nowrap; text-align: right">1.02 M</td>
    <td style="white-space: nowrap; text-align: right">1.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">generic_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">0.94 M</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">sorensen_dice</td>
    <td style="white-space: nowrap; text-align: right">0.71 M</td>
    <td style="white-space: nowrap; text-align: right">2.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap; text-align: right">0.63 M</td>
    <td style="white-space: nowrap; text-align: right">3.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap; text-align: right">0.61 M</td>
    <td style="white-space: nowrap; text-align: right">3.12x</td>
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
    <td style="white-space: nowrap">jaro</td>
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
    <td style="white-space: nowrap">damerau_levenshtein</td>
    <td style="white-space: nowrap">24 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">normalized_damerau_levensthein</td>
    <td style="white-space: nowrap">40 B</td>
    <td>1.67x</td>
  </tr>

</table>


<hr/>

