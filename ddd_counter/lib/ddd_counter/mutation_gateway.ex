defmodule DddCounter.MutationGateway do
  alias DddCounter.MutationAdapter, as: Adapter

  def inc(val, adapter \\ Adapter) do
    adapter.inc(val)
  end

  def dec(val, adapter \\ Adapter) do
    adapter.dec(val)
  end
end
