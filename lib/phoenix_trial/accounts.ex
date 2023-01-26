defmodule PhoenixTrial.Accounts do
  alias PhoenixTrial.Accounts.User

  def list_users do
    [
      %User{id: "1", first_name: "Kali", last_name: "Ukali"},
      %User{id: "2", first_name: "Erastus", last_name: "Mwangi"},
      %User{id: "3", first_name: "Mutuku", last_name: "Katiku"},
      %User{id: "4", first_name: "Finnese", last_name: "Jadi"},
      %User{id: "5", first_name: "Umo", last_name: "Olo"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
