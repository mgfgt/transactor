defmodule TransactorWeb.FallbackController do
  use TransactorWeb, :controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(TransactorWeb.ErrorView)
    |> render(:"404")
  end

  def call(conn, {:error, :unauthorized}) do
    conn
    |> put_status(403)
    |> put_view(TransactorWeb.ErrorView)
    |> render(:"403")
  end
end
