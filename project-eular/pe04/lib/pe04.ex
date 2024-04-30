defmodule Pe04 do
  @moduledoc """
  A palindromic number reads the same both ways.
  The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
  Find the largest palindrome made from the product of two 3-digit numbers."
  """

  @doc """
  Finds the largest palindrome made from the product of two n-digit numbers.

  ## Examples
      iex> Pe04.largest_palindrome(3)
      906609
  """
  def largest_palindrome(n) do
    range = round(:math.pow(10,n-1))..round(:math.pow(10,n))-1 # 10..99   or 100..999
    # Use a comprehension to calculate products and store them in a list
    products = for i <- range, j <- range, do: i * j
    products = Enum.sort(products, :desc)
    palindrome?(products)
  end

  defp palindrome?([h|t]) do
    if Integer.to_string(h) == String.reverse(Integer.to_string(h)) do
      h
    else
      palindrome?(t)
    end
  end
end
