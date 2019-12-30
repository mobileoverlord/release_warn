defmodule DepTest do
  use ExUnit.Case
  doctest Dep

  test "greets the world" do
    assert Dep.hello() == :world
  end
end
