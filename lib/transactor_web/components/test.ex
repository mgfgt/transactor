defmodule TransactorWeb.Test do
  use Phoenix.Component

  def city(assigns) do
    ~H"""
      The chosen country is: <%= @name %>.
    """
  end
end
