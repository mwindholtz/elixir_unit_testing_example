defmodule LiveViewCounterWeb.CounterLiveTest do
  use DddCounterWeb.ConnCase
  alias LiveViewCounterWeb.CounterLive
  alias Phoenix.LiveView
  alias Phoenix.LiveView.Socket

  defmodule CommandStub do
    def inc(val) do
      send(self(), {:inc, val})
      1
    end
  end

  def socket_with_stub do
    %Socket{}
    |> LiveView.assign(:val, 0)
    |> LiveView.assign(:command, CommandStub)
  end

  test "CounterLive.handle_event(inc ..." do
    {:noreply, mod_socket} = CounterLive.handle_event("inc", %{}, socket_with_stub())
    assert mod_socket.assigns.val == 1
    assert_receive {:inc, 0}
  end
end
