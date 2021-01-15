# ExStatistic

ExStatistic is a library containing the most common statistical functions

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_statistic` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_statistic, "~> 0.1.0"}
  ]
end
```

### Calculate the mean 

```elixir
list = [3, 7, 5, 13, 20, 23, 39, 23, 40, 23, 14, 12, 56, 23, 29]
ExStatistic.mean(list) == 22
```

### Calculate the variance

```elixir
list = [600 , 470 , 170 , 430 , 300]
ExStatistic.variance(list) == 21704
```

### Calculate the standard deviation
 
```elixir
list = [600 , 470 , 170 , 430 , 300]
ExStatistic.std_dev(list) == 147.32277488562318
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_statistic](https://hexdocs.pm/ex_statistic).

