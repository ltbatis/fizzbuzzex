defmodule FizzbuzzexTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]
      assert Fizzbuzzex.build("priv/numbers.txt") == expected_response
    end
  end
end
