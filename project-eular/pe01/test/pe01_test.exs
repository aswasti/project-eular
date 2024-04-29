defmodule Pe01Test do
  use ExUnit.Case
  describe "small" do
    @tag task_id: 1
    test "10" do
      assert Pe01.sum_multiples_below(10) == 23
    end
  end

  describe "medium" do
    @tag task_id: 1
    test "20" do
      assert Pe01.sum_multiples_below(20) == 78
    end
  end

  describe "large" do
    @tag task_id: 1
    test "1000" do
      assert Pe01.sum_multiples_below(1000) == 233168
    end
  end
end
