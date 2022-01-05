defmodule ElixirPracticingTest do
  use ExUnit.Case
  doctest ElixirPracticing

  test "greets the world" do
    assert ElixirPracticing.hello() == :world
  end
end
