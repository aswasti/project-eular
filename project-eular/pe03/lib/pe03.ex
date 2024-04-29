defmodule Pe03 do
 @moduledoc """
  A module for calculating prime factors of a given number.
  """

  @doc """
  Given an positive integer, calculate the largest prime factor.
  ## Examples

      iex> PrimeFactors.calculate(13195)
      [5, 7, 13, 29] => 29

      iex> PrimeFactors.calculate(600851475143)
      => [6857]

  """
  def largest_prime_factor(n) when n > 1 do
    largest_prime_factor(n, 2, nil)
  end

  defp largest_prime_factor(1, _, largest), do: largest
  defp largest_prime_factor(n, divisor, largest) do
    if rem(n, divisor) == 0 do
      new_n = Enum.reduce_while(1..n, n, fn _, acc ->
        if rem(acc, divisor) == 0, do: {:cont, div(acc, divisor)}, else: {:halt, acc}
      end)
      largest_prime_factor(new_n, divisor, divisor)
    else
      new_divisor = if divisor == 2, do: 3, else: divisor + 2
      largest_prime_factor(n, new_divisor, largest)
    end
  end

end
