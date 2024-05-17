defmodule MissilesWeb.GameHTML do
  use MissilesWeb, :html

  embed_templates "game_html/*"

  @doc """
  Renders a game form, which is defined in:
  lib/missiles_web/controllers/game_html/game_form.html.heex
  """
  attr :form, Phoenix.HTML.Form, required: true
  attr :action, :string, required: true

  def game_form(assigns)
end
