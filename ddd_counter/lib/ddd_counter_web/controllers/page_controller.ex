defmodule DddCounterWeb.PageController do
  use DddCounterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
