defmodule DddCounter.Gateway do
  def inc(val) do
    val + 1
  end

  def dec(val) do
    # call a service
    val - 1
  end
end
