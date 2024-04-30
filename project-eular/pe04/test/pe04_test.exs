defmodule Pe04Test do
  use ExUnit.Case

  describe "largest_palindrome/1" do
    @tag task_id: 1
    test "returns largest palindrome product of two 2 digit number" do
      assert Pe04.largest_palindrome(2) == 9009
    end

    @tag task_id: 1
    test "returns largest palindrome product of two 3 digit number" do
      assert Pe04.largest_palindrome(3) == 906609
    end
  end
end
