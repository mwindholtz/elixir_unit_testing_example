defmodule LiveViewCounterWeb.CounterLiveTest do
  use DddCounterWeb.ConnCase
  alias LiveViewCounterWeb.CounterLive
  # 
  test "GET /", %{conn: conn} do
    result = CounterLive.inc(3)
    assert result == 4
  end
end
