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
    <td style="white-space: nowrap">strsim levenshtein</td>
    <td style="white-space: nowrap; text-align: right">649.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±3460.88%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">simetric levensthein</td>
    <td style="white-space: nowrap; text-align: right">110.10 K</td>
    <td style="white-space: nowrap; text-align: right">9.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±585.53%</td>
    <td style="white-space: nowrap; text-align: right">7.90 μs</td>
    <td style="white-space: nowrap; text-align: right">25.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir levenshtein</td>
    <td style="white-space: nowrap; text-align: right">105.23 K</td>
    <td style="white-space: nowrap; text-align: right">9.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±584.00%</td>
    <td style="white-space: nowrap; text-align: right">7.90 μs</td>
    <td style="white-space: nowrap; text-align: right">27.90 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz levensthein</td>
    <td style="white-space: nowrap; text-align: right">13.93 K</td>
    <td style="white-space: nowrap; text-align: right">71.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±432.76%</td>
    <td style="white-space: nowrap; text-align: right">54.90 μs</td>
    <td style="white-space: nowrap; text-align: right">220.90 μs</td>
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
    <td style="white-space: nowrap;text-align: right">649.44 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">simetric levensthein</td>
    <td style="white-space: nowrap; text-align: right">110.10 K</td>
    <td style="white-space: nowrap; text-align: right">5.9x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir levenshtein</td>
    <td style="white-space: nowrap; text-align: right">105.23 K</td>
    <td style="white-space: nowrap; text-align: right">6.17x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz levensthein</td>
    <td style="white-space: nowrap; text-align: right">13.93 K</td>
    <td style="white-space: nowrap; text-align: right">46.63x</td>
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
    <td style="white-space: nowrap">3.15 KB</td>
    <td>134.33x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir levenshtein</td>
    <td style="white-space: nowrap">3.40 KB</td>
    <td>145.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz levensthein</td>
    <td style="white-space: nowrap">25.37 KB</td>
    <td>1082.33x</td>
  </tr>
</table>
<hr/>
