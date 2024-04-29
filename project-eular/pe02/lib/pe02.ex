defmodule Pe02 do
  @moduledoc """
  This module provides a function to calculate the sum of even-valued terms in the Fibonacci sequence.
  """

  @doc """
  Calculates the sum of even-valued terms in the Fibonacci sequence whose values do not exceed a given limit where limit > 0.

  ## Examples

      iex> Pe02.sum_even_fibonacci(4000000)
      4613732

  """
  @spec sum_even_fibonacci(integer) :: integer
  def sum_even_fibonacci(limit), do: sum_even_fibonacci(limit, 1, 2, 0)
  def sum_even_fibonacci(limit, fib1, fib2, acc) when fib2>limit, do: acc
  def sum_even_fibonacci(limit, fib1, fib2, acc) when rem(fib2,2) == 0, do: sum_even_fibonacci(limit,fib2,fib1+fib2,acc+fib2)
  def sum_even_fibonacci(limit, fib1, fib2, acc) when rem(fib2, 2) != 0, do: sum_even_fibonacci(limit,fib2,fib1+fib2,acc)
end
