defmodule DefrTest do
  use ExUnit.Case
  doctest Defr

  test "greets the world" do
    assert Defr.hello() == :world
  end
end
