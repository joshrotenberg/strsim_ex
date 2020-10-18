
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
    <td style="white-space: nowrap">strsim jaro</td>
    <td style="white-space: nowrap; text-align: right">1405.16 K</td>
    <td style="white-space: nowrap; text-align: right">0.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±2145.95%</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
    <td style="white-space: nowrap; text-align: right">1 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap; text-align: right">274.24 K</td>
    <td style="white-space: nowrap; text-align: right">3.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±831.96%</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
    <td style="white-space: nowrap; text-align: right">10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">simetric</td>
    <td style="white-space: nowrap; text-align: right">230.85 K</td>
    <td style="white-space: nowrap; text-align: right">4.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±245.01%</td>
    <td style="white-space: nowrap; text-align: right">4 μs</td>
    <td style="white-space: nowrap; text-align: right">20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap; text-align: right">135.10 K</td>
    <td style="white-space: nowrap; text-align: right">7.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±247.19%</td>
    <td style="white-space: nowrap; text-align: right">7 μs</td>
    <td style="white-space: nowrap; text-align: right">24 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1405.16 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">elixir jaro</td>
    <td style="white-space: nowrap; text-align: right">274.24 K</td>
    <td style="white-space: nowrap; text-align: right">5.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">simetric</td>
    <td style="white-space: nowrap; text-align: right">230.85 K</td>
    <td style="white-space: nowrap; text-align: right">6.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">the_fuzz jaro</td>
    <td style="white-space: nowrap; text-align: right">135.10 K</td>
    <td style="white-space: nowrap; text-align: right">10.4x</td>
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

