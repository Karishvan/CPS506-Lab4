defmodule Lab4 do

  @moduledoc """
    Add your functions for lab 4 below. Fuction skeletons with dummy return values are provided. 
    Your task is to fill in these functions to accomplish what is described in the lab description. 
    You may also add additional helper functions if you desire. 
    Hint: You'll need to add tail recursive signatures. See the MyEnum examples from class
    for examples of this.
    Test your code by running 'mix test' from the lab4 directory.
  """

  def catNestedStrings(items), do: catNestedStrings(items, "")
  def catNestedStrings([], res), do: res
  def catNestedStrings([h | t], res) when is_list(h), do: catNestedStrings(t, res <> catNestedStrings(h))
  def catNestedStrings([h | t], res) when is_bitstring(h), do: catNestedStrings(t, res <> h)
  def catNestedStrings([h | t], res), do: catNestedStrings(t, res)
    # cond do
    #   is_bitstring h ->  #Maybe use string.valid but it doesnt work
    #   true -> catNestedStrings(t, res)
    # end 

  def filterNestedStrings(items), do: filterNestedStrings(items, [])
  def filterNestedStrings([], res), do: res
  def filterNestedStrings([h | t], res) when is_list(h), do: filterNestedStrings(t, res ++ [filterNestedStrings(h)])
  def filterNestedStrings([h | t], res) when is_bitstring(h), do: filterNestedStrings(t, res)
  def filterNestedStrings([h | t], res), do: filterNestedStrings(t, res ++ [h])

  def tailFib(n) do 
    :ok
  end
  
  def giveChange(n, coins) do 
    :ok
  end
    
  def reduce(items, fun) do 
    :ok
  end

  def reduce(items, acc, fun) do 
    :ok
  end

end
