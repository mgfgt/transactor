defmodule TransactorWeb.CartView do
  use TransactorWeb, :view

  alias Transactor.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
