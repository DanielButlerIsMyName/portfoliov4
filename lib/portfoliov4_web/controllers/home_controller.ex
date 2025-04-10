defmodule Portfoliov4Web.HomeController do
  use Portfoliov4Web, :controller

  def hero(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # render(conn, :home, layout: false)
    render(conn, :hero)
  end
end
