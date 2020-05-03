# Benchmark

This benchmark compares pure Elixir and Rust `jaro_winkler` implementations.

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
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap; text-align: right">766.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±3020.57%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap; text-align: right">209.58 K</td>
    <td style="white-space: nowrap; text-align: right">4.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±698.28%</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
    <td style="white-space: nowrap; text-align: right">10 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">simetric</td>
    <td style="white-space: nowrap; text-align: right">145.94 K</td>
    <td style="white-space: nowrap; text-align: right">6.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±814.64%</td>
    <td style="white-space: nowrap; text-align: right">6 μs</td>
    <td style="white-space: nowrap; text-align: right">15 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap; text-align: right">95.71 K</td>
    <td style="white-space: nowrap; text-align: right">10.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±200.34%</td>
    <td style="white-space: nowrap; text-align: right">9 μs</td>
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
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap;text-align: right">766.09 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap; text-align: right">209.58 K</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">simetric</td>
    <td style="white-space: nowrap; text-align: right">145.94 K</td>
    <td style="white-space: nowrap; text-align: right">5.25x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap; text-align: right">95.71 K</td>
    <td style="white-space: nowrap; text-align: right">8.0x</td>
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
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap">0.0391 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap">2.20 KB</td>
    <td>56.4x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">simetric</td>
    <td style="white-space: nowrap">2.73 KB</td>
    <td>70.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap">5.98 KB</td>
    <td>153.2x</td>
  </tr>
</table>
<hr/>
