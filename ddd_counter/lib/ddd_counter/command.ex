defmodule DddCounter.Command do
  def inc(val) do
    val + 1
  end

  def dec(val) do
    val - 1
  end
end
