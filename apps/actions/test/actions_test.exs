defmodule ActionsTest do
  use ExUnit.Case
  doctest Actions

  test "greets the world" do
    assert Actions.hello() == :world
  end
end
