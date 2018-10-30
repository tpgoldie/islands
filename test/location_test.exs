defmodule LocationTest do
  use ExUnit.Case
  doctest Islands.Location

  test "create a valid new location" do
    assert Islands.Location.new(2, 3) == {:ok, %Islands.Location{row: 2, col: 3}}
  end

  test "row out of bounds in location" do
    assert Islands.Location.new(11, 3) == {:error, :invalid_coordinate}
  end

  test "col out of bounds in location" do
    assert Islands.Location.new(2, 0) == {:error, :invalid_coordinate}
  end
end