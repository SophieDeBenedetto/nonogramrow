defmodule BinaryCounterTest do
  use ExUnit.Case
  doctest BinaryCounter

  test "greets the world" do
    assert BinaryCounter.nonogramrow() == []
    assert BinaryCounter.nonogramrow([]) == []
    assert BinaryCounter.nonogramrow([0,0,0,0,0]) == []
    assert BinaryCounter.nonogramrow([1,1,1,1,1]) == [5]
    assert BinaryCounter.nonogramrow([0,1,1,1,1,1,0,1,1,1,1]) == [5,4]
    assert BinaryCounter.nonogramrow([1,1,0,1,0,0,1,1,1,0,0]) == [2,1,3]
    assert BinaryCounter.nonogramrow([0,0,0,0,1,1,0,0,1,0,1,1,1]) == [2,1,3]
    assert BinaryCounter.nonogramrow([1,0,1,0,1,0,1,0,1,0,1,0,1,0,1]) == [1,1,1,1,1,1,1,1]
  end
end
