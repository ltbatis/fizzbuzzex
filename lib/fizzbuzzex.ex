defmodule Fizzbuzzex do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(fn number -> String.to_integer(number) end)
  end

  def handle_file_read({:error, reason}), do: reason
end
