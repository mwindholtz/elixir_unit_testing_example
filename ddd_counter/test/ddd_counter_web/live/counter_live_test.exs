defmodule LiveViewCounterWeb.CounterLiveTest do
  use DddCounterWeb.ConnCase
  alias LiveViewCounterWeb.CounterLive
  alias Phoenix.LiveView
  alias Phoenix.LiveView.Socket

  test "GET /", %{conn: conn} do
    socket = LiveView.assign(%Socket{}, :val, 0)
    result = CounterLive.handle_event("inc", %{}, socket)
    assert result == 1
  end
end
