defmodule PolarisIcons do
  @external_resource "README.md"
  @moduledoc "README.md"
          |> File.read!()
          |> String.split("<!-- MDOC !-->")
          |> Enum.fetch!(1)

  use Phoenix.Component

  defp svg(assigns) do
    case assigns do
      %{minor: true} ->
        ~H"<.svg_element {@rest} class={["Polaris-Icon__Minor", assigns[:class]]}><%%= {:safe, @paths[:minor]} %></.svg_element>"
      %{major: true} ->
        ~H"<.svg_element {@rest} class={["Polaris-Icon__Major", assigns[:class]]}><%%= {:safe, @paths[:major]} %></.svg_element>"
      %{} -> raise ArgumentError, "expected either major or minor, but got neither."
    end
  end

  attr :rest, :global, default: %{"aria-hidden": "true", viewBox: "0 0 20 20"}
  attr :class, :string, required: true
  slot :inner_block, required: true
  defp svg_element(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} {@rest}>
      <%%= render_slot(@inner_block) %>
    </svg>
    """
  end

  <%= for icon <- @icons, {func, %{major: major, minor: nil}} = icon do %>
  @doc """
  Renders the `<%= func %>` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Polaris.<%= func %> />
  <Polaris.<%= func %> major />
  <Polaris.<%= func %> class="w-4 h-4" color="highlight" />
  <Polaris.<%= func %> backdrop />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: ~w(base subdued critical interactive warning highlight success primary)

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{major: ~S|<%= major %>|}))
  end
  <% end %>

  <%= for icon <- @icons, {func, %{major: nil, minor: minor}} = icon do %>
  @doc """
  Renders the `<%= func %>` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Polaris.<%= func %> minor />
  <Polaris.<%= func %> minor class="w-4 h-4" color="highlight" />
  <Polaris.<%= func %> minor backdrop />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: ~w(base subdued critical interactive warning highlight success primary)

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{minor: ~S|<%= minor %>|}))
  end
  <% end %>

  <%= for icon <- @icons, {func, %{major: major, minor: minor}} = icon do %>
  @doc """
  Renders the `<%= func %>` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Polaris.<%= func %> />
  <Polaris.<%= func %> minor />
  <Polaris.<%= func %> class="w-4 h-4" color="highlight" />
  <Polaris.<%= func %> minor backdrop />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: ~w(base subdued critical interactive warning highlight success primary)

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{major: ~S|<%= major %>|, minor: ~S|<%= minor %>|}))
  end
  <% end %>
end
