
# Benchmark

This benchmark compares a pure Elixir and Rust `levenshtein` implementation.


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
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap; text-align: right">1436.23 K</td>
    <td style="white-space: nowrap; text-align: right">0.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±1688.33%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">simetric levensthein</td>
    <td style="white-space: nowrap; text-align: right">147.41 K</td>
    <td style="white-space: nowrap; text-align: right">6.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±228.95%</td>
    <td style="white-space: nowrap; text-align: right">6 μs</td>
    <td style="white-space: nowrap; text-align: right">26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">elixir levenshtein</td>
    <td style="white-space: nowrap; text-align: right">142.70 K</td>
    <td style="white-space: nowrap; text-align: right">7.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±600.44%</td>
    <td style="white-space: nowrap; text-align: right">6 μs</td>
    <td style="white-space: nowrap; text-align: right">26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz levensthein</td>
    <td style="white-space: nowrap; text-align: right">24.71 K</td>
    <td style="white-space: nowrap; text-align: right">40.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.38%</td>
    <td style="white-space: nowrap; text-align: right">38 μs</td>
    <td style="white-space: nowrap; text-align: right">104 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap;text-align: right">1436.23 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">simetric levensthein</td>
    <td style="white-space: nowrap; text-align: right">147.41 K</td>
    <td style="white-space: nowrap; text-align: right">9.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">elixir levenshtein</td>
    <td style="white-space: nowrap; text-align: right">142.70 K</td>
    <td style="white-space: nowrap; text-align: right">10.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz levensthein</td>
    <td style="white-space: nowrap; text-align: right">24.71 K</td>
    <td style="white-space: nowrap; text-align: right">58.12x</td>
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
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap">0.0234 KB</td>

      <td>&nbsp;</td>

  </tr>

  <tr>
    <td style="white-space: nowrap">simetric levensthein</td>
    <td style="white-space: nowrap">3.18 KB</td>
    <td>135.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">elixir levenshtein</td>
    <td style="white-space: nowrap">3.43 KB</td>
    <td>146.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz levensthein</td>
    <td style="white-space: nowrap">23.27 KB</td>
    <td>993.0x</td>
  </tr>

</table>


<hr/>

