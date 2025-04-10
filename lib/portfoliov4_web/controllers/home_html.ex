defmodule Portfoliov4Web.HomeHTML do
  @moduledoc """
  This module contains homes rendered by PageController.

  See the `home_html` directory for all templates available.
  """
  use Portfoliov4Web, :html

  embed_templates "home_html/*"

end
