defmodule Portfoliov4Web.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use Portfoliov4Web, :controller` and
  `use Portfoliov4Web, :live_view`.
  """
  use Portfoliov4Web, :html

  embed_templates "layouts/*"
end
