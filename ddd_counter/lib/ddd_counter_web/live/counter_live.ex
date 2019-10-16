defmodule LiveViewCounterWeb.CounterLive do
  use Phoenix.LiveView
  alias DddCounter.Command

  def mount(_session, socket) do
    {:ok, assign(socket, :val, 0)}
  end

  def render(assigns) do
    ~L"""
    <div>
      <h1>The count is: <%= @val %></h1>
      <button phx-click="dec">-</button>
      <button phx-click="inc">+</button>
    </div>
    """
  end

  def handle_event("inc", _, socket) do
    IO.inspect(socket, label: "inc")
    update_val = Command.inc(socket.assigns.val)
    {:noreply, update(socket, :val, update_val)}
  end

  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :val, &(&1 - 1))}
  end

  def handle_event(event, _, socket) do
    {:noreply, socket}
  end
end
