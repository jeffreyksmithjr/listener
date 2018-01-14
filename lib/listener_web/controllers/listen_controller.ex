defmodule ListenerWeb.ListenController do
  use ListenerWeb, :controller
  import Veritaserum

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"utterance" => utterance}) do
    sentiment = analyze(utterance)
    render conn, "show.html", sentiment: sentiment
  end
end
