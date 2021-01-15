defmodule ExStatistic do
  @moduledoc """
  ExStatistic is a library containing the most common statistical functions.
  These functions are not optimized for performance but they work. :)
  """

  @doc """
  The arithmetic mean, more commonly known as “the average,”
  is the sum of a list of numbers divided by the number of items on the list.
  The mean is useful in determining the overall trend of a data set or providing
  a rapid snapshot of your data.
  """
  def mean(list) when is_list(list) do
    Enum.sum(list) / Enum.count(list)
  end

  @doc """

  """
  def ssd(mean, list) do
    Enum.map(list, fn x -> :math.pow(x - mean, 2) end) |> Enum.sum()
  end

  def variance(list) do
    mean = mean(list)
    ssd = ssd(mean, list)
    variance = ssd / Enum.count(list)
  end

  @doc """
  The standard deviation, is the measure of a spread of data around the mean
  """
  def std_dev(list) do
    mean = mean(list)
    ssd = ssd(mean, list)
    variance = ssd / Enum.count(list)
    :math.sqrt(variance)
  end
end
