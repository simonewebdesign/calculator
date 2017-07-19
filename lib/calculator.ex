defmodule Calculator do
  @moduledoc """
  A Calculator that can do mathematical differentiation of polynomials.
  """

  @doc """
  Input: /differentiate/3/2/1 would represent -> 3x^2 + 2x + 1

  Output would be: 6x+2

  The derivative of ax^b is (a*b)x^(b-1)

  And for input:
  /differentiate/4/3/2/1 would represent -> 4x^3 + 3x^2 + 2x + 1

  Output would be: 12x^2+6x+2

  /differentiate/4/3/0/1 would represent -> 4x^3+3x^2+0+1 and the output should be 12x^2+6x
  /differentiate/4/-5/0/1 would represent -> 4x^3-5x^2+0+1 and the output should be 12x^2-10x

  ## Examples

      iex> Calculator.calculate([3,2,1])
      [6, 2]

      iex> Calculator.calculate([4,3,2,1])
      [12, 6, 2]

      iex> Calculator.calculate([4,3,0,1])
      [12, 6]

      iex> Calculator.calculate([4,5,0,1])
      [12, 10]

  """
  def calculate(list) do
    b = Enum.count(list) -1

    {_, result} = Enum.reduce(list, {b, []}, fn num, {idx, acc} ->
      {idx-1, acc ++ [derivate(num, idx)]}
    end)

    Enum.map(result, fn {coefficient, _power} ->
      coefficient
    end)
    |> Enum.filter(fn x -> x != 0 end)
  end

  defp derivate(a, b) do
    {a*b, b-1}
  end
end
