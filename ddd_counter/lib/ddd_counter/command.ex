defmodule DddCounter.Command do
  alias DddCounter.MutationGateway, as: Gateway

  def inc(val) do
    Gateway.inc(val)
  end

  def dec(val) do
    Gateway.dec(val)
  end
end
