# Benchmark

This benchmark compares a pure Elixir and Rust `jaro` implementation.

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
    <td style="white-space: nowrap; text-align: right">580.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±6359.04%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap; text-align: right">191.86 K</td>
    <td style="white-space: nowrap; text-align: right">5.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±873.98%</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
    <td style="white-space: nowrap; text-align: right">18 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap; text-align: right">155.67 K</td>
    <td style="white-space: nowrap; text-align: right">6.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±400.33%</td>
    <td style="white-space: nowrap; text-align: right">5 μs</td>
    <td style="white-space: nowrap; text-align: right">19 μs</td>
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
    <td style="white-space: nowrap;text-align: right">580.93 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap; text-align: right">191.86 K</td>
    <td style="white-space: nowrap; text-align: right">3.03x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap; text-align: right">155.67 K</td>
    <td style="white-space: nowrap; text-align: right">3.73x</td>
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
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap">3.40 KB</td>
    <td>87.0x</td>
  </tr>
</table>
<hr/>
