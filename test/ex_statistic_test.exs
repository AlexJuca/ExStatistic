defmodule ExStatisticTest do
  use ExUnit.Case
  doctest ExStatistic

  test "calculates the mean" do
    list = [6, 11, 7]
    assert ExStatistic.mean(list) == 8

    list = [3, 7, 5, 13, 20, 23, 39, 23, 40, 23, 14, 12, 56, 23, 29]
    assert ExStatistic.mean(list) == 22
  end

  test "calculates the mean of a list with negative numbers" do
    list = [3, -7, 5, 13, -2]
    assert ExStatistic.mean(list) == 2.4
  end

  test "calculate variance" do
    list = [600 , 470 , 170 , 430 , 300]
    assert ExStatistic.variance(list) == 21704
  end

  test "calculate the standard deviation" do
    list = [600 , 470 , 170 , 430 , 300]
    assert ExStatistic.std_dev(list) == 147.32277488562318
  end
end
