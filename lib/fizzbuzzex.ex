defmodule Fizzbuzzex do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_number()
  end

  def evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_number(number), do: number
end
