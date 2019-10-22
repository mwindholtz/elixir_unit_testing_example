defmodule LiveViewCounterWeb.CounterLiveTest do
  use DddCounterWeb.ConnCase
  alias LiveViewCounterWeb.CounterLive
  alias Phoenix.LiveView
  alias Phoenix.LiveView.Socket

  def socket do
    %Socket{}
    |> LiveView.assign(:val, 0)
    |> LiveView.assign(:command, DddCounter.Command)
  end

  test "CounterLive.handle_event(inc ..." do
    {:noreply, mod_socket} = CounterLive.handle_event("inc", %{}, socket())
    assert mod_socket.assigns.val == 1
  end
end
