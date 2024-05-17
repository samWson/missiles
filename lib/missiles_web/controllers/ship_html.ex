defmodule MissilesWeb.ShipHTML do
  use MissilesWeb, :html

  embed_templates "ship_html/*"

  @doc """
  Renders a game form.
  """
  attr :form, Phoenix.HTML.Form, required: true
  attr :action, :string, required: true

  def ship_form(assigns)
end