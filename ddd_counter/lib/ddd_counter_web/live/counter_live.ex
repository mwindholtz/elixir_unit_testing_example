defmodule LiveViewCounterWeb.CounterLive do
  use Phoenix.LiveView
  alias DddCounter.Command

  def mount(_session, socket) do
    socket =
      socket
      |> assign(:val, 0)
      |> assign(:command, Command)

    {:ok, socket}
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
    updated_val = command(socket).inc(socket.assigns.val)
    {:noreply, assign(socket, :val, updated_val)}
  end

  def handle_event("dec", _, socket) do
    updated_val = command(socket).dec(socket.assigns.val)
    {:noreply, assign(socket, :val, updated_val)}
  end

  def handle_event(_event, _, socket) do
    IO.inspect(socket, label: "UNEXPECTED")

    {:noreply, socket}
  end

  def command(conn), do: conn.assigns.command
end
