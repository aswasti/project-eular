defmodule Pe03Test do
  use ExUnit.Case
  describe "returns the largest prime factor of 13195" do
    @tag task_id: 1
    test "13195" do
      assert Pe03.largest_prime_factor(13195) == 29
    end
  end

  describe "returns the largest prime factor of a large number" do
    @tag task_id: 1
    test "600851475143" do
      assert Pe03.largest_prime_factor(600851475143) == 6857
    end
  end

  describe "handles cases where the largest factor is the number itself (prime numbers)" do
    @tag task_id: 1
    test "29" do
      assert Pe03.largest_prime_factor(29) == 29
    end
  end
end
