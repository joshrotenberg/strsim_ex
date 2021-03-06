
# Benchmark

This benchmark compares a pure Elixir and Rust `hamming` implementation.


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
    <td style="white-space: nowrap">strsim hamming</td>
    <td style="white-space: nowrap; text-align: right">2.03 M</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±2284.09%</td>
    <td style="white-space: nowrap; text-align: right">0 μs</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz hamming</td>
    <td style="white-space: nowrap; text-align: right">0.45 M</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±1171.75%</td>
    <td style="white-space: nowrap; text-align: right">2 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.03 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz hamming</td>
    <td style="white-space: nowrap; text-align: right">0.45 M</td>
    <td style="white-space: nowrap; text-align: right">4.56x</td>
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
    <td style="white-space: nowrap">0.0234 KB</td>

      <td>&nbsp;</td>

  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz hamming</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>91.33x</td>
  </tr>

</table>


<hr/>

