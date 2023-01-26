defmodule PhoenixTrialWeb.PhoenixController do
  use PhoenixTrialWeb, :controller

  def world(conn, _params) do
    render(conn, "world.html")
  end
end
