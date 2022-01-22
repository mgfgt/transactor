defmodule Transactor.Repo.Migrations.UpdateProducts do
  use Ecto.Migration

  def change do
    alter table(:products) do
      modify :price, :decimal, precision: 15, scale: 6, null: false
      modify :views, :integer, default: 0, null: false
    end
  end
end
