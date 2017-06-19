defmodule PhoenixWechat.PageController do
  use PhoenixWechat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
