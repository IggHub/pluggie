defmodule PluggieTest do
  use ExUnit.Case
  doctest Pluggie

  test "greets the world" do
    assert Pluggie.hello() == :world
  end
end
