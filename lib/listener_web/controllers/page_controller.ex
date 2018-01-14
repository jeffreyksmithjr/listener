defmodule ListenerWeb.PageController do
  use ListenerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
