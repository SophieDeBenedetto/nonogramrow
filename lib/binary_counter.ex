defmodule BinaryCounter do

  def nonogramrow() do
    new()
    |> calculate()
    |> convert()
  end

  def nonogramrow(list) do
    list
    |> new()
    |> calculate()
    |> convert()
  end

  def new() do
    []
  end

  def new(list) do
    list
  end

  def calculate([head | tail]) when head == 1 do
    calculate(tail, [1])
  end

  def calculate([_ | tail]) do
    calculate(tail, [])
  end

  def calculate(list) do
    convert(list)
  end

  def calculate([head | tail], []) when head == 1 do
    calculate(tail, [1])
  end

  def calculate([_ | tail], [] = counts) do
    calculate(tail, counts)
  end

  def calculate([head | tail], [current_count | count_tail ]) when head == 1 do
    counts =  [ current_count + 1 | count_tail]
    calculate(tail, counts)
  end

  def calculate([_ | tail], counts) do
    counts =  [0 | counts]
    calculate(tail, counts)
  end

  def calculate([], counts) do
    counts
  end

  def convert(counts) do
    Enum.reverse(counts)
    |> Enum.reject(fn el -> el == 0 end)
  end
end
