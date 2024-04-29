defmodule Pe02Test do
  use ExUnit.Case
  describe "sum_even_fibonacci/1" do
    test "sum of even-valued Fibonacci terms for limit 10" do
      assert Pe02.sum_even_fibonacci(10) == 10
    end

    test "sum of even-valued Fibonacci terms for limit 4000000" do
      assert Pe02.sum_even_fibonacci(4000000) == 4613732
    end

    test "sum of even-valued Fibonacci terms for very small limits" do
      assert Pe02.sum_even_fibonacci(1) == 0
      assert Pe02.sum_even_fibonacci(2) == 2
    end

    test "handle large numbers efficiently" do
      assert Pe02.sum_even_fibonacci(100000000) == 82790070
    end
  end
end
