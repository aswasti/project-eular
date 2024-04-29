defmodule Pe01 do
  @moduledoc """
  This module provides a function to calculate the sum of all the multiples of 3 or 5 below a given number.
  """

  @doc """
  Calculates the sum of all the multiples of 3 or 5 below a given number.

  ## Examples

      MultiplesSum.sum_multiples_below(10)
      => 23

      MultiplesSum.sum_multiples_below(20)
      => 78

  """
  @spec sum_multiples_below(integer, integer) :: integer
  def sum_multiples_below(n), do: sum_multiples_below(n-1, 0) # has to start from below n

  # Return acc when reached 0
  def sum_multiples_below(0, acc), do: acc

  # add to acc when multiple found
  def sum_multiples_below(n, acc) when rem(n, 3) == 0 or rem(n, 5) == 0 do
    sum_multiples_below(n - 1, acc + n)
  end

  # continue recursing when multiple not found
  def sum_multiples_below(n, acc), do: sum_multiples_below(n - 1, acc)
end
