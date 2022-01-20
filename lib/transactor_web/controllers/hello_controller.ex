defmodule TransactorWeb.HelloController do
  use TransactorWeb, :controller

  action_fallback TransactorWeb.FallbackController

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> assign(:messenger, messenger)
    |> assign(:receiver, "Dweezil")
    |> render("show.html")
    # render(conn, "show.html", messenger: messenger)
    # text(conn, "From messenger: #{messenger}")
    # json(conn, %{id: messenger})
  end
end
