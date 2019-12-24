defmodule StappsWeb.PageController do
  use StappsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
