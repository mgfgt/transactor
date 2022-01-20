defmodule TransactorWeb.PageController do
  use TransactorWeb, :controller

  action_fallback TransactorWeb.FallbackController

  def index(conn, _params) do
    conn
    # |> put_root_layout("admin.html")
    # |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    # |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:index)

    # |> redirect(to: Routes.page_path(conn, :redirect_test))
    # |> put_resp_content_type("text/plain")
    # |> send_resp(201, "")
  end

  def redirect_test(conn, _params) do
    conn
    |> render(:index)
  end
end
