defmodule FizzbuzzexTest do
  use ExUnit.Case
  doctest Fizzbuzzex

  test "greets the world" do
    assert Fizzbuzzex.hello() == :world
  end
end
