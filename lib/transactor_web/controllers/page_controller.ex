defmodule TransactorWeb.PageController do
  use TransactorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
