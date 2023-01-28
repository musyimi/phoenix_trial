defmodule PhoenixTrialWeb.UserView do
  use PhoenixTrialWeb, :view

  alias PhoenixTrial.Accounts

  def name(%Accounts.User{first_name: first_name}) do
    first_name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
