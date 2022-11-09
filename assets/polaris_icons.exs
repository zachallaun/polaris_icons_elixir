# Generated at <%= DateTime.to_iso8601(DateTime.utc_now()) %>

defmodule PolarisIcons do
  @external_resource "README.md"
  @moduledoc "README.md"
          |> File.read!()
          |> String.split("<!-- MDOC !-->")
          |> Enum.fetch!(1)

  use Phoenix.Component

  @shopify_color_values [
    nil | ~w(base subdued critical interactive warning highlight success primary)
  ]

  @rest_defaults %{"aria-hidden": "true", viewBox: "0 0 20 20"}

  attr :major, :boolean, default: false
  attr :minor, :boolean, default: false
  attr :paths, :any, required: true
  attr :class, :any, default: nil
  attr :color, :string, default: nil, values: @shopify_color_values
  attr :backdrop, :boolean, default: false
  attr :rest, :global, default: %{}

  defp svg(assigns) do
    assigns = Map.update(assigns, :rest, @rest_defaults, &Map.merge(&1, @rest_defaults))

    case assigns do
      %{minor: true} ->
        ~H"""
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class={["Polaris-Icon__Minor", @class]}
          {@rest}
        >
          <%%= {:safe, @paths[:minor]} %>
        </svg>
        """

      %{major: true} ->
        ~H"""
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class={["Polaris-Icon__Major", @class]}
          {@rest}
        >
          <%%= {:safe, @paths[:major]} %>
        </svg>
        """

      %{} ->
        raise ArgumentError, "expected either major or minor, but got neither."
    end
  end

  attr :rest, :global, default: %{"aria-hidden": "true", viewBox: "0 0 20 20"}
  attr :class, :any, required: true
  slot :inner_block, required: true
  defp svg_element(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} {@rest}>
      <%%= render_slot(@inner_block) %>
    </svg>
    """
  end

  <%= for {func, variants} <- @icons do %>
  <%= case variants do %>
  <% %{major: major, minor: minor} -> %>
  @doc """
  Renders the `<%= func %>` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.<%= func %> />
  <PolarisIcons.<%= func %> minor />
  <PolarisIcons.<%= func %> class="w-4 h-4" color="highlight" />
  <PolarisIcons.<%= func %> minor backdrop />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{major: ~S|<%= major %>|, minor: ~S|<%= minor %>|}))
  end

  <% %{major: major} -> %>
  @doc """
  Renders the `<%= func %>` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.<%= func %> />
  <PolarisIcons.<%= func %> major />
  <PolarisIcons.<%= func %> class="w-4 h-4" color="highlight" />
  <PolarisIcons.<%= func %> backdrop />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{major: ~S|<%= major %>|}))
  end

  <% %{minor: minor} -> %>
  @doc """
  Renders the `<%= func %>` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.<%= func %> minor />
  <PolarisIcons.<%= func %> minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.<%= func %> minor backdrop />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{minor: ~S|<%= minor %>|}))
  end
  <% end %>
  <% end %>
end
