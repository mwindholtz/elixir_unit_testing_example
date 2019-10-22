defmodule DddCounter.Command do
  def inc(val) do
    DddCounter.Gateway.inc(val)
  end

  def dec(val) do
    DddCounter.Gateway.dec(val)
  end
end
