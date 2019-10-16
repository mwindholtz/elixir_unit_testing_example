defmodule LiveViewCounterWeb.CounterLiveTest do
  use DddCounterWeb.ConnCase
  alias LiveViewCounterWeb.CounterLive
  alias Phoenix.LiveView
  alias Phoenix.LiveView.Socket

  test "CounterLive.handle_event(inc ..." do
    socket = LiveView.assign(%Socket{}, :val, 0)
    {:noreply, mod_socket} = CounterLive.handle_event("inc", %{}, socket)
    assert mod_socket.assigns.val == 1
  end
end
