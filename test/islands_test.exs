defmodule IslandsTest do
  use ExUnit.Case
  doctest Islands

  test "greets the world" do
    assert Islands.hello() == :world
  end
end
