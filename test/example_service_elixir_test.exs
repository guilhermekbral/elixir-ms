defmodule ExampleServiceElixirTest do
  use ExUnit.Case
  doctest ExampleServiceElixir

  test "greets the world" do
    assert ExampleServiceElixir.hello() == :world
  end
end
