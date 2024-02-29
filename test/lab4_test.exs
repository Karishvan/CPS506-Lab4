defmodule Lab4Test do
  use ExUnit.Case
  doctest Lab4

  test "1.1 ", do: assert Lab4.catNestedStrings([5, 3, 7, "cat", 9, ["dog", ["horse", -5]], "mouse"]) == "catdoghorsemouse"
  test "1.2 ", do: assert Lab4.catNestedStrings([1, "mouse", [2, "cat", [3, "dog", [4, "horse"]]]]) == "mousecatdoghorse"
  test "1.3 ", do: assert Lab4.catNestedStrings([1, [2, [3, [4, "horse"], "dog"], "cat"], "mouse"]) == "horsedogcatmouse"
  test "1.4 ", do: assert Lab4.catNestedStrings([ "a", [ "b", [ "c", [ "d" ], "c"], "b"], "a"]) == "abcdcba"

  test "2.1 ", do: assert Lab4.filterNestedStrings([5, 3, 7, "cat", 9, ["dog", ["horse", -5]], "mouse"]) == [5, 3, 7, 9, [[-5]]]
  test "2.2 ", do: assert Lab4.filterNestedStrings([1, "mouse", [2, "cat", [3, "dog", [4, "horse"]]]]) == [1, [2, [3, [4]]]]
  test "2.3 ", do: assert Lab4.filterNestedStrings([ "a", [ 1, [ "c", [ 2 ], "c"], 3], "a"]) == [[ 1, [[ 2 ]], 3]]
  test "2.4 ", do: assert Lab4.filterNestedStrings([ "a", [ "b", [ "c", [ "d" ], "c"], "b"], "a"]) == [[[[]]]]
  
  test "3.1 ", do: assert Lab4.tailFib(1) == 1
  test "3.2 ", do: assert Lab4.tailFib(2) == 1
  test "3.3 ", do: assert Lab4.tailFib(5) == 5
  test "3.4 ", do: assert Lab4.tailFib(10) == 55
  test "3.5 ", do: assert Lab4.tailFib(20) == 6765
  test "3.6 ", do: assert Lab4.tailFib(40) == 102334155
  
  test "4.1 ", do: assert Lab4.giveChange(64, [50, 25, 10, 5, 1]) == [50, 10, 1, 1, 1, 1]
  test "4.2 ", do: assert Lab4.giveChange(123, [100, 25, 10, 5, 1]) == [100, 10, 10, 1, 1, 1]
  test "4.3 ", do: assert Lab4.giveChange(100, [42, 17, 11, 6, 1]) == [42, 42, 11, 1, 1, 1, 1, 1]
  test "4.4 ", do: assert Lab4.giveChange(64, [50, 25, 10, 5]) == :error
  test "4.5 ", do: assert Lab4.giveChange(42, [25, 10, 5, 1]) == [25, 10, 5, 1, 1]
  test "4.6 ", do: assert Lab4.giveChange(42, [25, 10, 5]) == :error

  test "5.1 ", do: assert Lab4.reduce([1, 2, 3], &(&2 + &1)) == 6
  test "5.2 ", do: assert Lab4.reduce([1, 2, 3], 10, &(&2 + &1)) == 16
  test "5.3 ", do: assert Lab4.reduce(["1", "2", "3"], &(&2 <> &1)) == "123"
  test "5.4 ", do: assert Lab4.reduce(["1", "2", "3"], "10", &(&2 <> &1)) == "10123"
  test "5.5 ", do: assert Lab4.reduce([1, 2, 3], &(&2 * &1)) == 6
  test "5.6 ", do: assert Lab4.reduce([1, 2, 3], 10, &(&2 * &1)) == 60
 
end
