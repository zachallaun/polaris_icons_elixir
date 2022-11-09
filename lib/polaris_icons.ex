# Generated at 2022-11-09T22:02:15.767195Z

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
        <svg xmlns="http://www.w3.org/2000/svg" class={["Polaris-Icon__Minor", @class]} {@rest}>
          <%= {:safe, @paths[:minor]} %>
        </svg>
        """

      %{major: true} ->
        ~H"""
        <svg xmlns="http://www.w3.org/2000/svg" class={["Polaris-Icon__Major", @class]} {@rest}>
          <%= {:safe, @paths[:major]} %>
        </svg>
        """

      %{} ->
        raise ArgumentError, "expected either major or minor, but got neither."
    end
  end

  attr :rest, :global, default: %{"aria-hidden": "true", viewBox: "0 0 20 20"}
  attr :class, :any, required: true
  slot(:inner_block, required: true)

  defp svg_element(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} {@rest}>
      <%= render_slot(@inner_block) %>
    </svg>
    """
  end

  @doc """
  Renders the `abandoned_cart` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.abandoned_cart />
  <PolarisIcons.abandoned_cart major />
  <PolarisIcons.abandoned_cart class="w-4 h-4" color="highlight" />
  <PolarisIcons.abandoned_cart backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def abandoned_cart(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9.707 1.293a1 1 0 00-1.414 1.414L9.586 4 8.293 5.293a1 1 0 001.414 1.414L11 5.414l1.293 1.293a1 1 0 101.414-1.414L12.414 4l1.293-1.293a1 1 0 00-1.414-1.414L11 2.586 9.707 1.293z" fill="#5C5F62"/><path fill-rule="evenodd" d="M1 1a1 1 0 011-1h1.5A1.5 1.5 0 015 1.5V10h11.133l.877-6.141a1 1 0 111.98.282l-.939 6.571A1.5 1.5 0 0116.566 12H5v2h10a3 3 0 11-2.83 2H6.83A3 3 0 113 14.17V2H2a1 1 0 01-1-1zm13 16a1 1 0 112 0 1 1 0 01-2 0zM3 17a1 1 0 112 0 1 1 0 01-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `accessibility` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.accessibility />
  <PolarisIcons.accessibility major />
  <PolarisIcons.accessibility class="w-4 h-4" color="highlight" />
  <PolarisIcons.accessibility backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def accessibility(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 18C2.334 18 .061 10.352.038 10.274a1 1 0 010-.548C.061 9.648 2.334 2 10 2c7.633 0 9.927 6.617 9.948 6.684a1 1 0 11-1.895.635A8.348 8.348 0 0010 4c-5.467 0-7.513 4.772-7.948 6 .434 1.225 2.479 6 7.948 6a1 1 0 010 2zm0-4c-2.206 0-4-1.794-4-4s1.794-4 4-4 4 1.794 4 4a1 1 0 11-2 0c0-1.103-.897-2-2-2s-2 .897-2 2 .897 2 2 2a1 1 0 010 2zm5 4a.997.997 0 01-.707-.293l-2-2a1 1 0 011.414-1.414L15 15.586l3.293-3.293a1 1 0 011.414 1.414l-4 4A.995.995 0 0115 18z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `activities` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.activities />
  <PolarisIcons.activities major />
  <PolarisIcons.activities class="w-4 h-4" color="highlight" />
  <PolarisIcons.activities backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def activities(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M18.111.221a3.04 3.04 0 011.002.66h-.003a2.992 2.992 0 01.89 2.18c-.224 14.324-4.22 16.692-16.931 16.94h-.06c-.797 0-1.548-.31-2.12-.88A2.989 2.989 0 010 16.937C.226 2.615 4.22.248 16.932 0c.404-.005.805.07 1.179.221zM7.879 7.88a1 1 0 011.414 0l.708.707 1.414-1.414-.707-.707a1 1 0 011.414-1.414l.707.707 1.464-1.465a1 1 0 111.415 1.414l-1.465 1.465.707.707a1 1 0 01-1.414 1.414l-.707-.707L11.415 10l.707.707a1 1 0 11-1.414 1.415L10 11.415l-1.415 1.414.707.707A1 1 0 117.88 14.95l-.707-.707-1.464 1.464a1 1 0 01-1.415-1.414l1.465-1.464-.707-.707a1 1 0 111.414-1.415l.707.707L8.586 10l-.707-.707a1 1 0 010-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `add` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.add />
  <PolarisIcons.add major />
  <PolarisIcons.add class="w-4 h-4" color="highlight" />
  <PolarisIcons.add backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def add(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h1V1H2.5A1.5 1.5 0 001 2.5V4h2V3zM6 3h3V1H6v2zM11 3h3V1h-3v2zM9 19H6v-2h3v2zM11 19h3v-2h-3v2zM17 4V3h-1V1h1.5A1.5 1.5 0 0119 2.5V4h-2zM3 17v-1H1v1.5A1.5 1.5 0 002.5 19H4v-2H3zM16 17h1v-1h2v1.5a1.5 1.5 0 01-1.5 1.5H16v-2zM10 6a1 1 0 011 1v2h2a1 1 0 110 2h-2v2a1 1 0 11-2 0v-2H7a1 1 0 110-2h2V7a1 1 0 011-1zM1 9V6h2v3H1zM1 11v3h2v-3H1zM17 9V6h2v3h-2zM17 11v3h2v-3h-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `add_code` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.add_code />
  <PolarisIcons.add_code major />
  <PolarisIcons.add_code class="w-4 h-4" color="highlight" />
  <PolarisIcons.add_code backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def add_code(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 9c0 .266-.105.52-.293.707L2.414 10l.293.293A.996.996 0 013 11v4a1 1 0 001 1 1 1 0 010 2c-1.654 0-3-1.346-3-3v-3.586l-.707-.707a1 1 0 010-1.414L1 8.586V5c0-1.654 1.346-3 3-3a1 1 0 010 2 1 1 0 00-1 1v4zm16.707.293a1.001 1.001 0 010 1.414l-.707.707V15c0 1.654-1.346 3-3 3a1 1 0 110-2 1 1 0 001-1v-4c0-.266.105-.52.293-.707l.293-.293-.293-.293A.996.996 0 0117 9V5a1 1 0 00-1-1 1 1 0 110-2c1.654 0 3 1.346 3 3v3.586l.707.707zM13 9a1 1 0 010 2h-2v2a1 1 0 01-2 0v-2H7a1 1 0 010-2h2V7a1 1 0 112 0v2h2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `add_image` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.add_image />
  <PolarisIcons.add_image major />
  <PolarisIcons.add_image class="w-4 h-4" color="highlight" />
  <PolarisIcons.add_image backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def add_image(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 2.5A1.5 1.5 0 0017.5 1h-15A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19H10v-2H3.497c-.41 0-.64-.46-.4-.79l3.553-4.051c.19-.21.52-.21.72-.01L9 14l3.06-4.781a.5.5 0 01.84.02l.72 1.251A5.98 5.98 0 0116 10h3V2.5zm-11.5 2c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2zm12.207 10.793A1 1 0 0019 15h-2v-2a1 1 0 00-2 0v2h-2a1 1 0 000 2h2v2a1 1 0 102 0v-2h2a1 1 0 00.707-1.707z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `add_note` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.add_note />
  <PolarisIcons.add_note major />
  <PolarisIcons.add_note class="w-4 h-4" color="highlight" />
  <PolarisIcons.add_note backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def add_note(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10.379 0a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0116 5.622V10a6 6 0 00-6 6v4H3.5A1.5 1.5 0 012 18.5v-17A1.5 1.5 0 013.5 0h6.879zM5 5h8v2H5V5zm5 4H5v2h5V9zm-5 4h3v2H5v-2zm14.707 2.293A1 1 0 0019 15h-2v-2a1 1 0 00-2 0v2h-2a1 1 0 000 2h2v2a1 1 0 002 0v-2h2a1 1 0 00.707-1.707z" fill="#5C5F62" fill-rule="evenodd" />|
        }
      )
    )
  end

  @doc """
  Renders the `add_product` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.add_product />
  <PolarisIcons.add_product major />
  <PolarisIcons.add_product class="w-4 h-4" color="highlight" />
  <PolarisIcons.add_product backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def add_product(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 1H17C18.1046 1 19 1.89543 19 3V9C19 9.33853 19 10 17.5 10H16C12.6863 10 10 12.6863 10 16V18C10 19.17 9.09077 19.2143 7.99998 18.8296C7.59053 18.6852 7.20617 18.4493 6.87868 18.1218L1.87868 13.1218C0.707107 11.9502 0.707107 10.0507 1.87868 8.87913L8.87868 1.87913C9.46447 1.29335 10.2322 1 11 1ZM14 8C15.1046 8 16 7.10457 16 6C16 4.89543 15.1046 4 14 4C12.8954 4 12 4.89543 12 6C12 7.10457 12.8954 8 14 8ZM19 15C19.2652 15 19.5196 15.1054 19.7071 15.2929C19.8946 15.4804 20 15.7348 20 16C20 16.2652 19.8946 16.5196 19.7071 16.7071C19.5196 16.8946 19.2652 17 19 17H17V19C17 19.2652 16.8946 19.5196 16.7071 19.7071C16.5196 19.8946 16.2652 20 16 20C15.7348 20 15.4804 19.8946 15.2929 19.7071C15.1054 19.5196 15 19.2652 15 19V17H13C12.7348 17 12.4804 16.8946 12.2929 16.7071C12.1054 16.5196 12 16.2652 12 16C12 15.7348 12.1054 15.4804 12.2929 15.2929C12.4804 15.1054 12.7348 15 13 15H15V13C15 12.7348 15.1054 12.4804 15.2929 12.2929C15.4804 12.1054 15.7348 12 16 12C16.2652 12 16.5196 12.1054 16.7071 12.2929C16.8946 12.4804 17 12.7348 17 13V15H19Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `adjust` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.adjust minor />
  <PolarisIcons.adjust minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.adjust minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def adjust(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M2 5a1 1 0 0 1 1-1h2a1 1 0 0 1 0 2H3a1 1 0 0 1-1-1Zm6 0a1 1 0 0 1 1-1h8a1 1 0 1 1 0 2H9a1 1 0 0 1-1-1Zm0 10a1 1 0 0 1 1-1h8a1 1 0 1 1 0 2H9a1 1 0 0 1-1-1Zm-6 0a1 1 0 0 1 1-1h2a1 1 0 1 1 0 2H3a1 1 0 0 1-1-1Zm12-5a1 1 0 0 1 1-1h2a1 1 0 1 1 0 2h-2a1 1 0 0 1-1-1ZM2 10a1 1 0 0 1 1-1h8a1 1 0 1 1 0 2H3a1 1 0 0 1-1-1Z" fill="#5C5F62"/><path fill-rule="evenodd" d="M7 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm0-2a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm6 7a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm0-2a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z" fill="#5C5F62"/><path fill-rule="evenodd" d="M13 13a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm0-2a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm-6 7a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm0-2a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `affiliate` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.affiliate />
  <PolarisIcons.affiliate major />
  <PolarisIcons.affiliate class="w-4 h-4" color="highlight" />
  <PolarisIcons.affiliate backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def affiliate(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M5.116 5.407a2.5 2.5 0 10-1.916.575l.788 2.624a5.5 5.5 0 107.406 7.406l2.624.787a2.5 2.5 0 10.575-1.915l-2.625-.788a5.474 5.474 0 00-.936-3.714l4.554-4.554a2.5 2.5 0 10-1.414-1.414L9.618 8.968a5.475 5.475 0 00-3.714-.936l-.788-2.625zM10 13.5a3.5 3.5 0 11-7 0 3.5 3.5 0 017 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `alert` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.alert minor />
  <PolarisIcons.alert minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.alert minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def alert(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 18a8 8 0 110-16 8 8 0 010 16zM9 9a1 1 0 002 0V7a1 1 0 10-2 0v2zm0 4a1 1 0 102 0 1 1 0 00-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `analytics` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.analytics />
  <PolarisIcons.analytics minor />
  <PolarisIcons.analytics class="w-4 h-4" color="highlight" />
  <PolarisIcons.analytics minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def analytics(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15.5 3A1.5 1.5 0 0014 4.5v12a1.5 1.5 0 001.5 1.5h1a1.5 1.5 0 001.5-1.5v-12A1.5 1.5 0 0016.5 3h-1zM8 8.5A1.5 1.5 0 019.5 7h1A1.5 1.5 0 0112 8.5v8a1.5 1.5 0 01-1.5 1.5h-1A1.5 1.5 0 018 16.5v-8zM2 12.5A1.5 1.5 0 013.5 11h1A1.5 1.5 0 016 12.5v4A1.5 1.5 0 014.5 18h-1A1.5 1.5 0 012 16.5v-4z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M7 11a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0v-5ZM11 6a1 1 0 1 1 2 0v10a1 1 0 1 1-2 0V6ZM15 4a1 1 0 1 1 2 0v12a1 1 0 1 1-2 0V4ZM3 8a1 1 0 0 1 2 0v8a1 1 0 1 1-2 0V8Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `app_extension` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.app_extension minor />
  <PolarisIcons.app_extension minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.app_extension minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def app_extension(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M9 17H4.5A1.5 1.5 0 013 15.5V11h6v6zm8-6v4.5a1.5 1.5 0 01-1.5 1.5H11v-6h6zM9 9H3V4.5A1.5 1.5 0 014.5 3H9v6zm10-7v5c0 .55-.45 1-1 1s-1-.45-1-1V4.42l-4.29 4.29c-.2.19-.45.29-.71.29-.26 0-.51-.1-.71-.29-.39-.39-.39-1.03 0-1.42L15.58 3H13c-.55 0-1-.45-1-1s.45-1 1-1h5c.08 0 .17.01.25.04.05 0 .09.02.14.04.12.05.23.12.32.21s.16.2.21.32c.02.05.04.09.04.14.03.08.04.17.04.25z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `apps` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.apps />
  <PolarisIcons.apps minor />
  <PolarisIcons.apps class="w-4 h-4" color="highlight" />
  <PolarisIcons.apps minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def apps(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9 9H1V2.5A1.5 1.5 0 012.5 1H9v8zM9 11v8H2.5A1.5 1.5 0 011 17.5V11h8zM11 11v8h6.5a1.5 1.5 0 001.5-1.5V11h-8zM15 1a1 1 0 011 1v2h2a1 1 0 110 2h-2v2a1 1 0 11-2 0V6h-2a1 1 0 110-2h2V2a1 1 0 011-1z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M5 17a2 2 0 0 1-2-2v-4h6v6H5ZM11 17v-6h6v4a2 2 0 0 1-2 2h-4ZM3 5v4h6V3H5a2 2 0 0 0-2 2ZM11 6a1 1 0 0 1 1-1h1V4a1 1 0 1 1 2 0v1h1a1 1 0 1 1 0 2h-1v1a1 1 0 1 1-2 0V7h-1a1 1 0 0 1-1-1Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `archive` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.archive />
  <PolarisIcons.archive minor />
  <PolarisIcons.archive class="w-4 h-4" color="highlight" />
  <PolarisIcons.archive minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def archive(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2.5 1A1.5 1.5 0 001 2.5V4h18V2.5A1.5 1.5 0 0017.5 1h-15zM2 17.5A1.5 1.5 0 003.5 19h13a1.5 1.5 0 001.5-1.5V6H2v11.5zM7 9h6v2H7V9z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M4.5 3A1.5 1.5 0 003 4.5V6h14V4.5A1.5 1.5 0 0015.5 3h-11zM4 15.5A1.5 1.5 0 005.5 17h9a1.5 1.5 0 001.5-1.5V8H4v7.5zM7 11h6v2H7v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `arrow_down` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.arrow_down minor />
  <PolarisIcons.arrow_down minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.arrow_down minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def arrow_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10.707 17.707l5-5a.999.999 0 10-1.414-1.414L11 14.586V3a1 1 0 10-2 0v11.586l-3.293-3.293a.999.999 0 10-1.414 1.414l5 5a.999.999 0 001.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `arrow_left` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.arrow_left minor />
  <PolarisIcons.arrow_left minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.arrow_left minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def arrow_left(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M17 9H5.414l3.293-3.293a.999.999 0 10-1.414-1.414l-5 5a.999.999 0 000 1.414l5 5a.997.997 0 001.414 0 .999.999 0 000-1.414L5.414 11H17a1 1 0 100-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `arrow_right` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.arrow_right minor />
  <PolarisIcons.arrow_right minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.arrow_right minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def arrow_right(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M17.707 9.293l-5-5a.999.999 0 10-1.414 1.414L14.586 9H3a1 1 0 100 2h11.586l-3.293 3.293a.999.999 0 101.414 1.414l5-5a.999.999 0 000-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `arrow_up` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.arrow_up minor />
  <PolarisIcons.arrow_up minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.arrow_up minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def arrow_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M11 17V5.414l3.293 3.293a.999.999 0 101.414-1.414l-5-5a.999.999 0 00-1.414 0l-5 5a.997.997 0 000 1.414.999.999 0 001.414 0L9 5.414V17a1 1 0 102 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `attachment` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.attachment />
  <PolarisIcons.attachment major />
  <PolarisIcons.attachment class="w-4 h-4" color="highlight" />
  <PolarisIcons.attachment backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def attachment(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M5.243 20a5.228 5.228 0 01-3.707-1.533A5.213 5.213 0 010 14.759c0-1.402.546-2.719 1.536-3.708l9.515-9.519a5.25 5.25 0 018.553 1.7A5.21 5.21 0 0120 5.24a5.208 5.208 0 01-1.535 3.708l-4.258 4.26a3.124 3.124 0 01-5.092-1.012A3.098 3.098 0 018.879 11c0-.835.324-1.619.914-2.208l4.5-4.501a1 1 0 111.414 1.414l-4.5 4.501a1.112 1.112 0 00-.328.794A1.114 1.114 0 0012 12.12c.297 0 .582-.118.793-.327l4.258-4.26A3.223 3.223 0 0018 5.24c0-.866-.337-1.681-.949-2.293a3.248 3.248 0 00-4.586 0L2.95 12.465A3.224 3.224 0 002 14.76c0 .866.338 1.68.95 2.293a3.248 3.248 0 004.586 0l1.757-1.758a1 1 0 111.414 1.414L8.95 18.467A5.236 5.236 0 015.243 20z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `automation` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.automation />
  <PolarisIcons.automation major />
  <PolarisIcons.automation class="w-4 h-4" color="highlight" />
  <PolarisIcons.automation backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def automation(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M8.03774 0.858582C8.10805 0.365936 8.52993 0 9.02749 0H11.2931C11.7907 0 12.2125 0.365936 12.2829 0.858582L12.6542 3.45728C13.3566 3.72517 14.0048 4.10292 14.5778 4.56953L17.0155 3.591C17.4774 3.40564 18.0053 3.58806 18.254 4.01904L19.3869 5.98094C19.6356 6.41193 19.5297 6.96028 19.1383 7.26755L17.0727 8.88898C17.1115 9.13266 17.1378 9.38052 17.1508 9.6319C17.1571 9.7538 17.1603 9.87653 17.1603 10C17.1603 10.3781 17.1303 10.7492 17.0727 11.111L19.1383 12.7324C19.5297 13.0397 19.6356 13.5881 19.3869 14.019L18.254 15.9809C18.0053 16.4119 17.4774 16.5943 17.0155 16.409L14.5778 15.4305C14.0048 15.8971 13.3566 16.2748 12.6542 16.5427L12.2829 19.1414C12.2125 19.6341 11.7907 20 11.2931 20H9.02749C8.52993 20 8.10805 19.6341 8.03774 19.1414L7.6664 16.5427C6.96401 16.2748 6.31582 15.897 5.74282 15.4304L3.30483 16.409C2.84292 16.5943 2.31509 16.4119 2.06631 15.9809L0.933738 14.019C0.684714 13.5881 0.790671 13.0397 1.18227 12.7324L3.24795 11.1109C3.19033 10.7491 3.1603 10.3781 3.1603 10C3.1603 9.62193 3.19033 9.25085 3.24795 8.88904L1.18227 7.26755C0.790671 6.96028 0.684714 6.41193 0.933738 5.98094L2.06631 4.01904C2.31509 3.58806 2.84292 3.40564 3.30483 3.591L5.74282 4.5696C6.31582 4.10295 6.96401 3.72517 7.6664 3.45728L8.03774 0.858582ZM8.77735 6.51823L13.376 9.58397C13.6728 9.78189 13.6728 10.2181 13.376 10.416L8.77735 13.4818C8.44507 13.7033 8 13.4651 8 13.0657V10V6.93426C8 6.53491 8.44507 6.29672 8.77735 6.51823Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `backspace` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.backspace />
  <PolarisIcons.backspace major />
  <PolarisIcons.backspace class="w-4 h-4" color="highlight" />
  <PolarisIcons.backspace backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def backspace(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M20 15.5v-11A1.5 1.5 0 0018.5 3H7.622a1.5 1.5 0 00-1.061.44L.439 8.94a1.5 1.5 0 000 2.121l6.122 5.5c.282.281.662.439 1.06.439h10.88a1.5 1.5 0 001.5-1.5zm-3.292-9.307a1 1 0 010 1.414L14.415 9.9l2.293 2.293a1 1 0 01-1.415 1.414l-2.292-2.293-2.293 2.293a1 1 0 11-1.415-1.414L11.586 9.9 9.293 7.607a1 1 0 111.415-1.414L13 8.486l2.292-2.293a1 1 0 011.415 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `balance` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.balance />
  <PolarisIcons.balance major />
  <PolarisIcons.balance class="w-4 h-4" color="highlight" />
  <PolarisIcons.balance backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def balance(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M4 1c-.493 0-1.211.14-1.834.588C1.492 2.074 1 2.874 1 4v13.5A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5V15h-3c-.493 0-1.211-.14-1.834-.588C13.49 13.925 13 13.126 13 12s.492-1.926 1.166-2.412A3.233 3.233 0 0116 9h3V6.5c0-.824-.665-1.5-1.498-1.5H17V2.5A1.5 1.5 0 0015.5 1H4zm12 10h3v2h-3c-.173 0-.456-.06-.666-.211-.159-.115-.334-.315-.334-.789 0-.474.175-.674.334-.789.21-.15.493-.211.666-.211zM4 3a1 1 0 00-1 1v1h12V3H4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `bank` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.bank />
  <PolarisIcons.bank major />
  <PolarisIcons.bank class="w-4 h-4" color="highlight" />
  <PolarisIcons.bank backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def bank(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 6h20c0-.604-.368-1.147-.928-1.371l-8.515-3.406a1.5 1.5 0 00-1.114 0L.928 4.629C.368 4.853 0 5.396 0 6zm0 2v1a1 1 0 001 1v7a1 1 0 000 2h18a1 1 0 100-2v-7a1 1 0 001-1V8H0zm4 2h2v7H4v-7zm7 0H9v7h2v-7zm3 0h2v7h-2v-7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `barcode` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.barcode />
  <PolarisIcons.barcode major />
  <PolarisIcons.barcode class="w-4 h-4" color="highlight" />
  <PolarisIcons.barcode backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def barcode(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h1V1H2.5A1.5 1.5 0 001 2.5V4h2V3zM17 3v1h2V2.5A1.5 1.5 0 0017.5 1H16v2h1zM16 17h1v-1h2v1.5a1.5 1.5 0 01-1.5 1.5H16v-2zM3 17v-1H1v1.5A1.5 1.5 0 002.5 19H4v-2H3zM2 14h3V6H2v8zM14 14h-3V6h3v8zM7 14h2V6H7v8zM16 14h2V6h-2v8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `behavior` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.behavior />
  <PolarisIcons.behavior minor />
  <PolarisIcons.behavior class="w-4 h-4" color="highlight" />
  <PolarisIcons.behavior minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def behavior(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M9.37 8.07l10 4a1 1 0 01.08 1.82l-3.7 1.86-1.85 3.7a1 1 0 01-.9.55h-.04a1 1 0 01-.89-.63l-4-10a1 1 0 011.3-1.3zM9.707 4.707A1 1 0 018 4V1a1 1 0 012 0v3a1 1 0 01-.293.707zM4.707 8.293A1 1 0 014 10H1a1 1 0 010-2h3a1 1 0 01.707.293zM3.707 2.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414-1.414l-2-2zM15.707 2.293a1 1 0 00-1.414 0l-2 2a1 1 0 001.414 1.414l2-2a1 1 0 000-1.414zM2.293 14.293l2-2a1 1 0 011.414 1.414l-2 2a1 1 0 01-1.414-1.414z"/>|,
          minor:
            ~S|<path fill="#5C5F62" d="M10.2747 9.03847C9.92555 8.9387 9.54972 9.03609 9.29292 9.29289C9.03612 9.54969 8.93873 9.92552 9.0385 10.2747L10.7528 16.2747C10.869 16.6816 11.2288 16.9712 11.6511 16.998C12.0733 17.0248 12.4668 16.7828 12.6335 16.3939L13.7616 13.7616L16.3939 12.6334C16.7829 12.4667 17.0248 12.0733 16.998 11.651C16.9713 11.2287 16.6816 10.869 16.2747 10.7528L10.2747 9.03847Z M10 3C10.5523 3 11 3.44772 11 4V6C11 6.55228 10.5523 7 10 7C9.44772 7 9 6.55228 9 6V4C9 3.44772 9.44772 3 10 3Z M5.05025 5.05025C5.44078 4.65973 6.07394 4.65973 6.46447 5.05025L7.87868 6.46447C8.2692 6.85499 8.2692 7.48816 7.87868 7.87868C7.48815 8.2692 6.85499 8.2692 6.46447 7.87868L5.05025 6.46447C4.65973 6.07394 4.65973 5.44078 5.05025 5.05025Z M14.9497 5.05025C15.3403 5.44078 15.3403 6.07394 14.9497 6.46447L13.5355 7.87868C13.145 8.2692 12.5118 8.2692 12.1213 7.87868C11.7308 7.48816 11.7308 6.85499 12.1213 6.46447L13.5355 5.05025C13.9261 4.65973 14.5592 4.65973 14.9497 5.05025Z M7.87868 12.1213C8.2692 12.5118 8.2692 13.145 7.87868 13.5355L6.46447 14.9497C6.07394 15.3403 5.44078 15.3403 5.05025 14.9497C4.65973 14.5592 4.65973 13.9261 5.05025 13.5355L6.46447 12.1213C6.85499 11.7308 7.48815 11.7308 7.87868 12.1213Z M7 10C7 10.5523 6.55228 11 6 11H4C3.44772 11 3 10.5523 3 10C3 9.44772 3.44772 9 4 9H6C6.55228 9 7 9.44772 7 10Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `billing_statement_dollar` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.billing_statement_dollar />
  <PolarisIcons.billing_statement_dollar major />
  <PolarisIcons.billing_statement_dollar class="w-4 h-4" color="highlight" />
  <PolarisIcons.billing_statement_dollar backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def billing_statement_dollar(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M4.5 0h11A1.5 1.5 0 0117 1.5v18.223a.2.2 0 01-.335.148l-1.662-1.513a.5.5 0 00-.673 0l-1.66 1.51a.5.5 0 01-.673 0l-1.66-1.51a.5.5 0 00-.674 0l-1.66 1.51a.5.5 0 01-.673 0l-1.66-1.51a.5.5 0 00-.673 0L3.335 19.87A.2.2 0 013 19.723V1.5A1.5 1.5 0 014.5 0zm4.207 11.293c.667.667 1.29.706 1.316.707.528 0 .977-.448.977-1 0-.646-.128-.751-1.243-1.03h-.001C8.725 9.712 7 9.28 7 7a2.993 2.993 0 012-2.815V4a1 1 0 012 0v.2c.645.23 1.228.604 1.707 1.093a1 1 0 01-1.414 1.414c-.667-.667-1.291-.706-1.317-.707C9.448 6 9 6.448 9 7c0 .646.127.751 1.242 1.03h.002C11.274 8.288 13 8.72 13 11a2.995 2.995 0 01-2 2.815V14a1 1 0 01-2 0v-.2a4.49 4.49 0 01-1.707-1.093 1 1 0 111.414-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `billing_statement_euro` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.billing_statement_euro />
  <PolarisIcons.billing_statement_euro major />
  <PolarisIcons.billing_statement_euro class="w-4 h-4" color="highlight" />
  <PolarisIcons.billing_statement_euro backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def billing_statement_euro(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.5 0h11c.828 0 1.5.677 1.5 1.512v18.21a.2.2 0 01-.334.149l-1.664-1.515a.497.497 0 00-.67 0l-1.664 1.514a.497.497 0 01-.67 0l-1.663-1.514a.497.497 0 00-.67 0L8.002 19.87a.497.497 0 01-.67 0l-1.664-1.514a.497.497 0 00-.67 0l-1.664 1.515a.2.2 0 01-.334-.15V1.512C3 .677 3.672 0 4.5 0zm2.543 8.865c-.02.324-.025.65-.014.974h-.268a.778.778 0 00-.538.214.716.716 0 00-.223.517c0 .194.08.38.223.517a.778.778 0 00.538.214h.433C7.612 13.424 8.774 15 10.392 15h.052c1.178.001 1.838-.227 2.401-1.207a.94.94 0 00-.095-1.07.999.999 0 00-.3-.244 1.038 1.038 0 00-1.115.091.977.977 0 00-.254.29c-.042.074-.07.122-.11.152-.072.056-.188.055-.525.055h-.054c-.375 0-.86-.692-1.136-1.766h1.058a.778.778 0 00.538-.214.716.716 0 00.223-.517c0-.194-.08-.38-.223-.517a.778.778 0 00-.538-.214h-1.27a7.719 7.719 0 01.02-.974h1.249a.778.778 0 00.538-.214.716.716 0 00.223-.517c0-.194-.08-.38-.223-.517a.778.778 0 00-.538-.214H9.34c.283-.903.711-1.47 1.051-1.47.487 0 .569.034.731.325.13.216.344.376.595.445.25.068.52.04.75-.077a.978.978 0 00.484-.554.931.931 0 00-.053-.722C12.331 4.325 11.55 4 10.391 4 8.85 4 7.721 5.43 7.26 7.403H6.76a.778.778 0 00-.538.214.716.716 0 00-.223.517c0 .194.08.38.223.517a.778.778 0 00.538.214h.282z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `billing_statement_pound` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.billing_statement_pound />
  <PolarisIcons.billing_statement_pound major />
  <PolarisIcons.billing_statement_pound class="w-4 h-4" color="highlight" />
  <PolarisIcons.billing_statement_pound backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def billing_statement_pound(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.5 0h11c.828 0 1.5.677 1.5 1.512v18.21a.2.2 0 01-.334.149l-1.664-1.515a.497.497 0 00-.67 0l-1.664 1.514a.497.497 0 01-.67 0l-1.663-1.514a.497.497 0 00-.67 0L8.002 19.87a.497.497 0 01-.67 0l-1.664-1.514a.497.497 0 00-.67 0l-1.664 1.515a.2.2 0 01-.334-.15V1.512C3 .677 3.672 0 4.5 0zm2.511 9.827h.247c-.16.943-.39 1.863-.696 2.76-.04.12-.06.244-.056.37 0 .276.106.542.296.737.19.196.447.306.715.306h4.472c.268 0 .525-.11.715-.306a1.06 1.06 0 00.296-.737 1.06 1.06 0 00-.296-.738.996.996 0 00-.715-.305H8.88c.18-.687.322-1.384.427-2.087h1.75c.268 0 .525-.11.714-.305a1.06 1.06 0 00.297-.738 1.06 1.06 0 00-.297-.738.996.996 0 00-.715-.305H9.513c.017-.355.026-.712.026-1.072 0-.985.385-1.492.877-1.573.35-.057.561.107.561.444 0 .276.107.542.297.737.19.196.447.306.715.306.268 0 .525-.11.715-.306A1.06 1.06 0 0013 5.54c0-1.685-1.378-2.753-2.9-2.504-1.514.247-2.583 1.659-2.583 3.633 0 .36-.01.717-.028 1.072H7.01a.996.996 0 00-.715.305A1.06 1.06 0 006 8.784c0 .277.107.542.296.738.19.195.447.305.715.305z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `billing_statement_rupee` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.billing_statement_rupee />
  <PolarisIcons.billing_statement_rupee major />
  <PolarisIcons.billing_statement_rupee class="w-4 h-4" color="highlight" />
  <PolarisIcons.billing_statement_rupee backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def billing_statement_rupee(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.5 0h11c.828 0 1.5.677 1.5 1.512v18.21a.2.2 0 01-.334.149l-1.664-1.515a.497.497 0 00-.67 0l-1.664 1.514a.497.497 0 01-.67 0l-1.663-1.514a.497.497 0 00-.67 0L8.002 19.87a.497.497 0 01-.67 0l-1.664-1.514a.497.497 0 00-.67 0l-1.664 1.515a.2.2 0 01-.334-.15V1.512C3 .677 3.672 0 4.5 0zm6.808 13.4l-1.96-2.63c1.342-.21 2.254-1.288 2.552-2.694h.85a.75.75 0 100-1.499h-.763a4.427 4.427 0 00-.432-1.579h.945A1 1 0 1012.5 3h-5a1 1 0 100 1.998h2.135c.449.297.754.86.844 1.58H7.25a.75.75 0 100 1.498h3.1c-.252.756-.791 1.234-1.493 1.234-.285 0-.543-.02-.777-.056a1 1 0 00-1.258 1.489l2.89 3.86a1 1 0 001.596-1.204z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `billing_statement_yen` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.billing_statement_yen />
  <PolarisIcons.billing_statement_yen major />
  <PolarisIcons.billing_statement_yen class="w-4 h-4" color="highlight" />
  <PolarisIcons.billing_statement_yen backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def billing_statement_yen(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.5 0h11c.828 0 1.5.677 1.5 1.512v18.21a.2.2 0 01-.334.149l-1.664-1.515a.497.497 0 00-.67 0l-1.664 1.514a.497.497 0 01-.67 0l-1.663-1.514a.497.497 0 00-.67 0L8.002 19.87a.497.497 0 01-.67 0l-1.664-1.514a.497.497 0 00-.67 0l-1.664 1.515a.2.2 0 01-.334-.15V1.512C3 .677 3.672 0 4.5 0zm7.744 10.523h-1.25v-.75h1.25a.75.75 0 100-1.5h-.847l1.85-3.204a1 1 0 00-1.732-1L10 6.693 8.485 4.069a1 1 0 00-1.732 1l1.85 3.204h-.859a.75.75 0 000 1.5h1.25v.75h-1.25a.75.75 0 100 1.5h1.25v1a1 1 0 002 0v-1h1.25a.75.75 0 000-1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `block` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.block minor />
  <PolarisIcons.block minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.block minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def block(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M2 3.6A1.6 1.6 0 013.6 2H7a1 1 0 010 2H4v3a1 1 0 01-2 0V3.6zM16.4 2A1.6 1.6 0 0118 3.6V7a1 1 0 11-2 0V4h-3a1 1 0 110-2h3.4zM16.4 18H13a1 1 0 110-2h3v-3a1 1 0 112 0v3.4a1.6 1.6 0 01-1.6 1.6zM3.6 18A1.6 1.6 0 012 16.4V13a1 1 0 112 0v3h3a1 1 0 110 2H3.6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `blockquote` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.blockquote />
  <PolarisIcons.blockquote major />
  <PolarisIcons.blockquote class="w-4 h-4" color="highlight" />
  <PolarisIcons.blockquote backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def blockquote(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3.5a1 1 0 00-1 1V5h.5A1.5 1.5 0 014 6.5v1A1.5 1.5 0 012.5 9h-1A1.5 1.5 0 010 7.5v-3a3 3 0 013-3v2zM8.5 5H8v-.5a1 1 0 011-1v-2a3 3 0 00-3 3v3A1.5 1.5 0 007.5 9h1A1.5 1.5 0 0010 7.5v-1A1.5 1.5 0 008.5 5zM12 8a1 1 0 011-1h6a1 1 0 110 2h-6a1 1 0 01-1-1zm-8 3a1 1 0 100 2h15a1 1 0 100-2H4zm-1 5a1 1 0 011-1h15a1 1 0 110 2H4a1 1 0 01-1-1zM13 3a1 1 0 100 2h6a1 1 0 100-2h-6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `blog` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.blog />
  <PolarisIcons.blog major />
  <PolarisIcons.blog class="w-4 h-4" color="highlight" />
  <PolarisIcons.blog backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def blog(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M16 2a2 2 0 014 0v1h-4V2zM8.379 1a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0114 6.622V17.5a1.5 1.5 0 01-1.5 1.5h-10A1.5 1.5 0 011 17.5v-15A1.5 1.5 0 012.5 1h5.879zM4 5h4v2H4V5zm7 4v2H4V9h7zm-7 6v-2h5v2H4zM16 5h4v11l-2 4-2-4V5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `bug` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.bug />
  <PolarisIcons.bug major />
  <PolarisIcons.bug class="w-4 h-4" color="highlight" />
  <PolarisIcons.bug backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def bug(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4 2a1 1 0 10-2 0v.228a7.166 7.166 0 003.187 5.96c-.056.338-.1.685-.131 1.039a11.254 11.254 0 00-3.357-1.124l-.534-.09a1 1 0 10-.329 1.973l.534.09a9.254 9.254 0 013.648 1.452c.012.347.03.687.057 1.02l-.607.729a11 11 0 00-2.4 5.233l-.054.326a1 1 0 101.973.328l.054-.325a9 9 0 011.473-3.636C6.153 17.492 7.482 19 10 19s3.848-1.508 4.487-3.797a8.999 8.999 0 011.473 3.636l.054.325a1 1 0 101.973-.328l-.055-.326a11 11 0 00-2.4-5.233l-.607-.729c.027-.337.046-.683.058-1.035l.4-.3a5.236 5.236 0 012.282-.977l1.5-.25a1 1 0 10-.329-1.972l-1.5.25a7.236 7.236 0 00-2.401.855c-.03-.317-.072-.628-.122-.932A7.166 7.166 0 0018 2.228V2a1 1 0 10-2 0v.228c0 1.502-.65 2.894-1.727 3.855C13.395 3.635 11.81 2 10 2 8.19 2 6.605 3.635 5.728 6.083A5.165 5.165 0 014 2.228V2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `button` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.button minor />
  <PolarisIcons.button minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.button minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def button(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M2 5.5A1.5 1.5 0 013.5 4h13A1.5 1.5 0 0118 5.5v4.95l-4.014-2.59c-1.71-1.104-3.953.19-3.853 2.224L10.278 13H3.5A1.5 1.5 0 012 11.5v-6z" fill="#5C5F62"/><path d="M12.131 9.999a.5.5 0 01.77-.445l4.869 3.142a.5.5 0 01-.021.853l-1.425.823 1.229 2.128a1 1 0 11-1.732 1l-1.23-2.128-1.424.822a.5.5 0 01-.75-.408L12.131 10z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `button_corner_pill` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.button_corner_pill />
  <PolarisIcons.button_corner_pill major />
  <PolarisIcons.button_corner_pill class="w-4 h-4" color="highlight" />
  <PolarisIcons.button_corner_pill backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def button_corner_pill(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M16.28 2.79c-7.45 0-13.49 6.04-13.49 13.49V20H0v-3.72C0 7.287 7.288 0 16.28 0H20v2.79h-3.72z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `button_corner_rounded` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.button_corner_rounded />
  <PolarisIcons.button_corner_rounded major />
  <PolarisIcons.button_corner_rounded class="w-4 h-4" color="highlight" />
  <PolarisIcons.button_corner_rounded backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def button_corner_rounded(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M8.837 2.79a6.047 6.047 0 00-6.046 6.047V20H0V8.837A8.837 8.837 0 018.837 0H20v2.79H8.837z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `button_corner_square` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.button_corner_square />
  <PolarisIcons.button_corner_square major />
  <PolarisIcons.button_corner_square class="w-4 h-4" color="highlight" />
  <PolarisIcons.button_corner_square backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def button_corner_square(assigns) do
    svg(
      assign(assigns, paths: %{major: ~S|<path d="M0 0h20v2.79H2.79V20H0V0z" fill="#5C5F62"/>|})
    )
  end

  @doc """
  Renders the `buy_button` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.buy_button />
  <PolarisIcons.buy_button major />
  <PolarisIcons.buy_button class="w-4 h-4" color="highlight" />
  <PolarisIcons.buy_button backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def buy_button(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 1.5A1.5 1.5 0 011.5 0h17A1.5 1.5 0 0120 1.5v6A1.5 1.5 0 0118.5 9h-5.889a1.5 1.5 0 01-1.5-1.5V5.111a1.111 1.111 0 10-2.222 0V7.5a1.5 1.5 0 01-1.5 1.5H1.5A1.5 1.5 0 010 7.5v-6z" fill="#5C5F62"/><path d="M7 5a3 3 0 016 0v4.384a.5.5 0 00.356.479l2.695.808a2.5 2.5 0 011.756 2.748l-.633 4.435A2.5 2.5 0 0114.699 20H6.96a2.5 2.5 0 01-2.27-1.452l-2.06-4.464a2.417 2.417 0 01-.106-1.777c.21-.607.719-1.16 1.516-1.273 1.035-.148 2.016.191 2.961.82V5zm3-1a1 1 0 00-1 1v7.793c0 1.39-1.609 1.921-2.527 1.16-.947-.784-1.59-.987-2.069-.948a.486.486 0 00.042.241l2.06 4.463A.5.5 0 006.96 18h7.74a.5.5 0 00.494-.43l.633-4.434a.5.5 0 00-.35-.55l-2.695-.808A2.5 2.5 0 0111 9.384V5a1 1 0 00-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `buy_button_button_layout` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.buy_button_button_layout />
  <PolarisIcons.buy_button_button_layout major />
  <PolarisIcons.buy_button_button_layout class="w-4 h-4" color="highlight" />
  <PolarisIcons.buy_button_button_layout backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def buy_button_button_layout(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h1V1H2.5A1.5 1.5 0 001 2.5V4h2V3zM1 10a4 4 0 014-4h10a4 4 0 010 8H5a4 4 0 01-4-4zM17 4V3h-1V1h1.5A1.5 1.5 0 0119 2.5V4h-2zM17 17h-1v2h1.5a1.5 1.5 0 001.5-1.5V16h-2v1zM3 16v1h1v2H2.5A1.5 1.5 0 011 17.5V16h2zM9 19H6v-2h3v2zM11 19h3v-2h-3v2zM9 3H6V1h3v2zM11 3h3V1h-3v2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `buy_button_horizontal_layout` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.buy_button_horizontal_layout />
  <PolarisIcons.buy_button_horizontal_layout major />
  <PolarisIcons.buy_button_horizontal_layout class="w-4 h-4" color="highlight" />
  <PolarisIcons.buy_button_horizontal_layout backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def buy_button_horizontal_layout(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h1V1H2.5A1.5 1.5 0 001 2.5V4h2V3zM17 3v1h2V2.5A1.5 1.5 0 0017.5 1H16v2h1zM3 16v1h1v2H2.5A1.5 1.5 0 011 17.5V16h2zM17 17h-1v2h1.5a1.5 1.5 0 001.5-1.5V16h-2v1zM9 14V6H3v8h6zM9 19H6v-2h3v2zM6 3h3V1H6v2zM14 19h-3v-2h3v2zM11 3h3V1h-3v2zM17 8h-6V6h6v2zM11 12h4v-2h-4v2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `buy_button_vertical_layout` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.buy_button_vertical_layout />
  <PolarisIcons.buy_button_vertical_layout major />
  <PolarisIcons.buy_button_vertical_layout class="w-4 h-4" color="highlight" />
  <PolarisIcons.buy_button_vertical_layout backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def buy_button_vertical_layout(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h1V1H2.5A1.5 1.5 0 001 2.5V4h2V3zM17 3v1h2V2.5A1.5 1.5 0 0017.5 1H16v2h1zM3 16v1h1v2H2.5A1.5 1.5 0 011 17.5V16h2zM17 17h-1v2h1.5a1.5 1.5 0 001.5-1.5V16h-2v1zM1 6v3h2V6H1zM1 14v-3h2v3H1zM17 6v3h2V6h-2zM17 14v-3h2v3h-2zM14 9V3H6v6h8zM12 17H6v-2h6v2zM6 13h8v-2H6v2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `calendar` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.calendar />
  <PolarisIcons.calendar minor />
  <PolarisIcons.calendar class="w-4 h-4" color="highlight" />
  <PolarisIcons.calendar minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def calendar(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M17.5 2H15V1a1 1 0 10-2 0v1H6V1a1 1 0 00-2 0v1H2.5C1.7 2 1 2.7 1 3.5v15c0 .8.7 1.5 1.5 1.5h15c.8 0 1.5-.7 1.5-1.5v-15c0-.8-.7-1.5-1.5-1.5zM3 18h14V8H3v10z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M7 2C7.55228 2 8 2.44772 8 3V4H12V3C12 2.44772 12.4477 2 13 2C13.5523 2 14 2.44772 14 3V4H15C16.1046 4 17 4.89543 17 6V15C17 16.1046 16.1046 17 15 17H5C3.89543 17 3 16.1046 3 15V6C3 4.89543 3.89543 4 5 4H6V3C6 2.44772 6.44772 2 7 2ZM5 8L5 15H15V8H5Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `calendar_tick` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.calendar_tick />
  <PolarisIcons.calendar_tick major />
  <PolarisIcons.calendar_tick class="w-4 h-4" color="highlight" />
  <PolarisIcons.calendar_tick backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def calendar_tick(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M15 2h2.5c.8 0 1.5.7 1.5 1.5v15c0 .8-.7 1.5-1.5 1.5h-15c-.8 0-1.5-.7-1.5-1.5v-15C1 2.7 1.7 2 2.5 2H4V1a1 1 0 012 0v1h7V1a1 1 0 112 0v1zm2 16H3V8h14v10zm-4.707-7.707L9 13.586l-1.293-1.293A1.001 1.001 0 006 13a1 1 0 00.293.707l2 2a.997.997 0 001.414 0l4-4a1 1 0 00-1.414-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `camera` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.camera />
  <PolarisIcons.camera major />
  <PolarisIcons.camera class="w-4 h-4" color="highlight" />
  <PolarisIcons.camera backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def camera(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M5.74 1.786A1.5 1.5 0 017.059 1h5.855a1.5 1.5 0 011.315.777l.55 1c.04.074.073.148.1.223H18.5A1.5 1.5 0 0120 4.5v11a1.5 1.5 0 01-1.5 1.5h-17A1.5 1.5 0 010 15.5v-11A1.5 1.5 0 011.5 3h3.603c.025-.072.057-.144.095-.214l.542-1zM2 5h3v2H2V5zm12 5a4 4 0 11-8 0 4 4 0 018 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cancel` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cancel />
  <PolarisIcons.cancel minor />
  <PolarisIcons.cancel class="w-4 h-4" color="highlight" />
  <PolarisIcons.cancel minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cancel(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M16.7071 4.70711C17.0976 4.31658 17.0976 3.68342 16.7071 3.29289C16.3166 2.90237 15.6834 2.90237 15.2929 3.29289L10 8.58579L4.70711 3.29289C4.31658 2.90237 3.68342 2.90237 3.29289 3.29289C2.90237 3.68342 2.90237 4.31658 3.29289 4.70711L8.58579 10L3.29289 15.2929C2.90237 15.6834 2.90237 16.3166 3.29289 16.7071C3.68342 17.0976 4.31658 17.0976 4.70711 16.7071L10 11.4142L15.2929 16.7071C15.6834 17.0976 16.3166 17.0976 16.7071 16.7071C17.0976 16.3166 17.0976 15.6834 16.7071 15.2929L11.4142 10L16.7071 4.70711Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M6.707 5.293a1 1 0 0 0-1.414 1.414L8.586 10l-3.293 3.293a1 1 0 1 0 1.414 1.414L10 11.414l3.293 3.293a1 1 0 0 0 1.414-1.414L11.414 10l3.293-3.293a1 1 0 0 0-1.414-1.414L10 8.586 6.707 5.293Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cancel_small` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cancel_small minor />
  <PolarisIcons.cancel_small minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.cancel_small minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cancel_small(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M6.707 5.293a1 1 0 0 0-1.414 1.414L8.586 10l-3.293 3.293a1 1 0 1 0 1.414 1.414L10 11.414l3.293 3.293a1 1 0 0 0 1.414-1.414L11.414 10l3.293-3.293a1 1 0 0 0-1.414-1.414L10 8.586 6.707 5.293Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `capital` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.capital />
  <PolarisIcons.capital major />
  <PolarisIcons.capital class="w-4 h-4" color="highlight" />
  <PolarisIcons.capital backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def capital(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M6.32755 11.0184H9.40152C8.97561 11.9693 8.6982 13.0511 8.57696 14.1698C6.42696 14.6927 4.73026 16.3739 4.18514 18.5152C3.98076 19.318 4.67157 20 5.5 20H14.5C15.3284 20 16.0192 19.318 15.8149 18.5152C15.2002 16.1009 13.1215 14.2714 10.5798 14.0277C10.7522 12.5047 11.4179 11.0799 12.4755 9.97047L15.6093 9.32174C17.5056 8.92252 18.9029 7.52526 19.2023 5.72879L20.0007 1.2376C20.0007 0.95327 19.9501 0.719568 19.8489 0.500435C19.7658 0.320659 19.62 0.17416 19.4364 0.0998387C19.1903 0.000202935 18.9205 -0.0324694 18.7033 0.0399471L14.1123 1.63681C12.216 2.23564 11.0184 3.93231 11.0184 5.82859V8.62311L10.8187 8.84268L10.2199 6.0282C9.8207 4.13192 8.22383 2.73466 6.22775 2.33544L1.13773 1.53701C0.775554 1.49017 0.439103 1.53701 0.239494 1.83642C0.039886 2.13584 -0.0599181 2.53505 0.0398861 2.83447L1.73656 7.82468C2.43519 9.72096 4.23166 11.0184 6.32755 11.0184ZM14.6113 3.53309L17.7052 2.53505L17.1064 5.32957C16.9068 6.32761 16.1084 7.12605 15.1103 7.32566L12.9146 7.82468V5.82859C12.9146 4.83055 13.6133 3.83251 14.6113 3.53309ZM3.63284 7.22585L2.53499 3.83251L5.92834 4.33153C7.12599 4.53114 8.12403 5.42938 8.32364 6.52722L8.72285 9.02233H6.32755C5.1299 9.02233 4.03206 8.3237 3.63284 7.22585Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `capture_payment` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.capture_payment minor />
  <PolarisIcons.capture_payment minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.capture_payment minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def capture_payment(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M15 9a2 2 0 11-.001 4.001A2 2 0 0115 9zm-5 0a2 2 0 11.001-4.001A2 2 0 0110 9zm6-7a2 2 0 11-.001 4.001A2 2 0 0116 2zm-3 14a1 1 0 110 2H7a.998.998 0 01-.243-.03l-4-1A1 1 0 012 16v-3c0-.431.275-.813.684-.948l3-1a.947.947 0 01.294-.047C5.985 11.004 5.992 11 6 11h3a1 1 0 110 2H7.166c.599 1.807 2.828 3 5.834 3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `card_reader` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.card_reader />
  <PolarisIcons.card_reader major />
  <PolarisIcons.card_reader class="w-4 h-4" color="highlight" />
  <PolarisIcons.card_reader backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def card_reader(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 1.5A1.5 1.5 0 011.5 0h17A1.5 1.5 0 0120 1.5V3H0V1.5zM0 5v7.5A1.5 1.5 0 001.5 14H4a6 6 0 0112 0h2.5a1.5 1.5 0 001.5-1.5V5H0z" fill="#5C5F62"/><path d="M10 10a4 4 0 00-4 4v3h3v2a1 1 0 102 0v-2h3v-3a4 4 0 00-4-4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `card_reader_chip` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.card_reader_chip />
  <PolarisIcons.card_reader_chip major />
  <PolarisIcons.card_reader_chip class="w-4 h-4" color="highlight" />
  <PolarisIcons.card_reader_chip backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def card_reader_chip(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M14.5 0A1.5 1.5 0 0116 1.5V9h-3V0h1.5zM11 0H5.5A1.5 1.5 0 004 1.5V9h7V0zM3.5 11A1.5 1.5 0 002 12.5V18H1a1 1 0 100 2h18a1 1 0 100-2h-1v-5.5a1.5 1.5 0 00-1.5-1.5h-13z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `card_reader_tap` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.card_reader_tap />
  <PolarisIcons.card_reader_tap major />
  <PolarisIcons.card_reader_tap class="w-4 h-4" color="highlight" />
  <PolarisIcons.card_reader_tap backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def card_reader_tap(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 8a6 6 0 016-6 1 1 0 000-2 8 8 0 00-8 8 1 1 0 002 0z" fill="#5C5F62"/><path d="M8 6a2 2 0 00-2 2 1 1 0 01-2 0 4 4 0 014-4 1 1 0 010 2zM15 6h-4.5A1.5 1.5 0 009 7.5v11a1.5 1.5 0 001.5 1.5H15V6zM18.5 6A1.5 1.5 0 0120 7.5v11a1.5 1.5 0 01-1.5 1.5H17V6h1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `caret_down` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.caret_down minor />
  <PolarisIcons.caret_down minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.caret_down minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def caret_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill="#5C5F62" d="M13.098 8H6.902c-.751 0-1.172.754-.708 1.268L9.292 12.7c.36.399 1.055.399 1.416 0l3.098-3.433C14.27 8.754 13.849 8 13.098 8Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `caret_up` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.caret_up minor />
  <PolarisIcons.caret_up minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.caret_up minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def caret_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill="#5C5F62" d="M6.902 12h6.196c.751 0 1.172-.754.708-1.268L10.708 7.3c-.36-.399-1.055-.399-1.416 0l-3.098 3.433C5.73 11.246 6.151 12 6.902 12Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cart` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cart />
  <PolarisIcons.cart major />
  <PolarisIcons.cart class="w-4 h-4" color="highlight" />
  <PolarisIcons.cart backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cart(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1 1c0-.552.45-1 1.004-1h1.505c.831 0 1.505.672 1.505 1.5v.56l12.574.908c.877.055 1.52.843 1.397 1.71l-.866 6.034A1.504 1.504 0 0116.63 12H5.014v2h10.043a3.005 3.005 0 013.011 3c0 1.657-1.348 3-3.01 3a3.005 3.005 0 01-2.84-4H6.85a3.005 3.005 0 01-2.84 4A3.005 3.005 0 011 17c0-1.306.838-2.418 2.007-2.83V3.01 2H2.004A1.002 1.002 0 011 1zm4.014 3.064V10h11.18l.727-5.07-11.907-.866zM14.054 17c0-.552.449-1 1.003-1 .554 0 1.004.448 1.004 1s-.45 1-1.004 1a1.002 1.002 0 01-1.003-1zM3.007 17c0-.552.45-1 1.004-1s1.003.448 1.003 1-.449 1-1.003 1a1.002 1.002 0 01-1.004-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cart_down` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cart_down />
  <PolarisIcons.cart_down major />
  <PolarisIcons.cart_down class="w-4 h-4" color="highlight" />
  <PolarisIcons.cart_down backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cart_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M12 1a1 1 0 10-2 0v3.586L8.707 3.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L12 4.586V1z" fill="#5C5F62"/><path fill-rule="evenodd" d="M1 1a1 1 0 011-1h1.5A1.5 1.5 0 015 1.5V10h11.133l.877-6.141a1 1 0 111.98.282l-.939 6.571A1.5 1.5 0 0116.566 12H5v2h10a3 3 0 11-2.83 2H6.83A3 3 0 113 14.17V2H2a1 1 0 01-1-1zm13 16a1 1 0 112 0 1 1 0 01-2 0zM3 17a1 1 0 112 0 1 1 0 01-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cart_up` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cart_up />
  <PolarisIcons.cart_up major />
  <PolarisIcons.cart_up class="w-4 h-4" color="highlight" />
  <PolarisIcons.cart_up backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cart_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 3.414V7a1 1 0 102 0V3.414l1.293 1.293a1 1 0 101.414-1.414l-3-3a.998.998 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L10 3.414z" fill="#5C5F62"/><path fill-rule="evenodd" d="M1 1a1 1 0 011-1h1.5A1.5 1.5 0 015 1.5V10h11.133l.877-6.141a1 1 0 111.98.282l-.939 6.571A1.5 1.5 0 0116.566 12H5v2h10a3 3 0 11-2.83 2H6.83A3 3 0 113 14.17V2H2a1 1 0 01-1-1zm13 16a1 1 0 112 0 1 1 0 01-2 0zM3 17a1 1 0 112 0 1 1 0 01-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cash_dollar` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cash_dollar />
  <PolarisIcons.cash_dollar minor />
  <PolarisIcons.cash_dollar class="w-4 h-4" color="highlight" />
  <PolarisIcons.cash_dollar minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cash_dollar(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zm1-15a1 1 0 10-2 0v.17A3 3 0 007 8c0 1.013.36 1.77 1.025 2.269.54.405 1.215.572 1.666.685l.066.016c.55.138.835.224 1.018.361.085.064.225.182.225.669a1 1 0 01-.984 1 1.611 1.611 0 01-.325-.074 2.533 2.533 0 01-.984-.633 1 1 0 00-1.414 1.414A4.548 4.548 0 009 14.804V15a1 1 0 102 0v-.17A3 3 0 0013 12c0-1.013-.36-1.77-1.025-2.269-.54-.405-1.215-.572-1.666-.685l-.066-.016c-.55-.138-.835-.224-1.018-.361C9.14 8.605 9 8.487 9 8a1 1 0 01.984-1 1.618 1.618 0 01.325.074c.245.081.606.255.984.633a1 1 0 101.414-1.414A4.547 4.547 0 0011 5.196V5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10 18a8 8 0 1 0 0-16 8 8 0 0 0 0 16Zm0-13c.46 0 .833.373.833.833v.164c.413.145.924.415 1.423.914a.833.833 0 1 1-1.179 1.178s-.472-.589-1.09-.589c-.487 0-.82.377-.82.833 0 .406.117.505.187.558.152.114.39.186.848.3l.055.014c.377.094.939.233 1.389.571.554.416.854 1.046.854 1.89a2.5 2.5 0 0 1-1.667 2.358v.143a.833.833 0 0 1-1.666 0v-.164a3.79 3.79 0 0 1-1.423-.914.833.833 0 0 1 1.179-1.178c.314.315.615.46.82.528a1.357 1.357 0 0 0 .27.06.833.833 0 0 0 .82-.832c0-.406-.117-.505-.187-.558-.152-.114-.39-.186-.848-.3l-.055-.014c-.377-.094-.939-.233-1.389-.571C7.8 9.808 7.5 9.178 7.5 8.334a2.5 2.5 0 0 1 1.667-2.358v-.143c0-.46.373-.833.833-.833Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cash_euro` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cash_euro />
  <PolarisIcons.cash_euro major />
  <PolarisIcons.cash_euro class="w-4 h-4" color="highlight" />
  <PolarisIcons.cash_euro backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cash_euro(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M20 10c0-5.514-4.486-10-10-10S0 4.486 0 10s4.486 10 10 10 10-4.486 10-10zm-12.986.392a10.62 10.62 0 01.014-1H6.75a.75.75 0 110-1.5h.49C7.696 5.868 8.807 4.4 10.326 4.4c1.142 0 1.911.334 2.47 1.385a.992.992 0 01-1.75.932c-.16-.298-.24-.333-.72-.333-.335 0-.757.581-1.036 1.508h.959a.75.75 0 110 1.5H9.018a8.247 8.247 0 00-.019 1h1.251a.75.75 0 110 1.5H9.208c.272 1.102.749 1.812 1.119 1.812h.053c.329 0 .444.001.516-.054.04-.032.067-.081.11-.159a.993.993 0 011.738.958c-.555 1.006-1.205 1.24-2.366 1.239h-.051c-1.594 0-2.739-1.617-3.151-3.796H6.75a.75.75 0 110-1.5h.264z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cash_pound` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cash_pound />
  <PolarisIcons.cash_pound major />
  <PolarisIcons.cash_pound class="w-4 h-4" color="highlight" />
  <PolarisIcons.cash_pound backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cash_pound(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M20 10c0 5.523-4.477 10-10 10S0 15.523 0 10 4.477 0 10 0s10 4.477 10 10zM7.783 11h-.244a.997.997 0 01-1-1 1.003 1.003 0 011-1h.472c.018-.34.028-.682.028-1.027 0-1.893 1.057-3.246 2.555-3.483 1.504-.239 2.867.785 2.867 2.4a1 1 0 11-2 0c0-.323-.21-.48-.555-.425-.487.077-.867.563-.867 1.508 0 .345-.009.687-.026 1.027h1.526a1.003 1.003 0 011 1 1 1 0 01-1 1h-1.73a18.65 18.65 0 01-.422 2h2.652a1.003 1.003 0 011 1 1 1 0 01-1 1h-4a.997.997 0 01-1-1 .994.994 0 01.056-.354c.302-.86.53-1.742.688-2.646z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cash_rupee` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cash_rupee />
  <PolarisIcons.cash_rupee major />
  <PolarisIcons.cash_rupee class="w-4 h-4" color="highlight" />
  <PolarisIcons.cash_rupee backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cash_rupee(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M20 10c0-5.514-4.486-10-10-10S0 4.486 0 10s4.486 10 10 10 10-4.486 10-10zM9.526 12.062l2.08 2.761a1 1 0 11-1.597 1.204L7 12.034a1 1 0 011.258-1.49c.234.037.492.056.777.056.702 0 1.241-.478 1.493-1.235h-3.1a.75.75 0 110-1.5h3.229c-.09-.72-.395-1.283-.844-1.58H7.678a1 1 0 110-2h5a1 1 0 110 2h-.945c.233.467.38 1.004.432 1.58h.763a.75.75 0 110 1.5h-.85c-.298 1.407-1.21 2.486-2.552 2.697z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `cash_yen` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.cash_yen />
  <PolarisIcons.cash_yen major />
  <PolarisIcons.cash_yen class="w-4 h-4" color="highlight" />
  <PolarisIcons.cash_yen backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def cash_yen(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M20 10c0-5.514-4.486-10-10-10S0 4.486 0 10s4.486 10 10 10 10-4.486 10-10zm-9.025 1.754h1.25a.75.75 0 110 1.5h-1.25v1a1 1 0 01-2 0v-1h-1.25a.75.75 0 110-1.5h1.25v-.75h-1.25a.75.75 0 110-1.5h.859L6.734 6.3a1 1 0 011.732-1l1.515 2.624L11.496 5.3a1 1 0 011.732 1l-1.85 3.204h.847a.75.75 0 110 1.5h-1.25v.75z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `categories` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.categories />
  <PolarisIcons.categories major />
  <PolarisIcons.categories class="w-4 h-4" color="highlight" />
  <PolarisIcons.categories backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def categories(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M5.5 2A1.5 1.5 0 004 3.5V4h12v-.5A1.5 1.5 0 0014.5 2h-9zM2 7.5A1.5 1.5 0 013.5 6h13A1.5 1.5 0 0118 7.5V8H2v-.5zm-1 4A1.5 1.5 0 012.5 10h15a1.5 1.5 0 011.5 1.5v7a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 18.5v-7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `channels` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.channels />
  <PolarisIcons.channels major />
  <PolarisIcons.channels class="w-4 h-4" color="highlight" />
  <PolarisIcons.channels backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def channels(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15.284 14.546A2.975 2.975 0 0117 14c1.654 0 3 1.346 3 3s-1.346 3-3 3-3-1.346-3-3c.004-.279.047-.555.129-.822l-1.575-1.125A3.964 3.964 0 0110 16a3.964 3.964 0 01-2.554-.947l-1.575 1.125c.076.262.129.535.129.822 0 1.654-1.346 3-3 3s-3-1.346-3-3 1.346-3 3-3c.615 0 1.214.191 1.716.546l1.56-1.114A3.97 3.97 0 016 12c0-1.858 1.28-3.411 3-3.858V5.815A2.993 2.993 0 017 3c0-1.654 1.346-3 3-3s3 1.346 3 3a2.996 2.996 0 01-2 2.816v2.326c1.72.447 3 2 3 3.858-.003.49-.096.976-.276 1.432l1.56 1.114zm1.037 3.146A1 1 0 0017 18a1 1 0 000-2 1 1 0 00-.679 1.692zm-14 0A1 1 0 003 18a1 1 0 000-2 1 1 0 00-.679 1.692zM11 3c0-.551-.449-1-1-1-.551 0-1 .449-1 1 0 .551.449 1 1 1 .551 0 1-.449 1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `chat` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.chat />
  <PolarisIcons.chat major />
  <PolarisIcons.chat class="w-4 h-4" color="highlight" />
  <PolarisIcons.chat backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def chat(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M10 0C4.486 0 0 4.486 0 10c0 1.728.45 3.42 1.304 4.924L.101 17.965c-.458 1.209.726 2.393 1.935 1.934l3.04-1.204A9.944 9.944 0 0010 20c5.514 0 10-4.486 10-10S15.514 0 10 0zM5.293 9.293a.997.997 0 011.414 0 .997.997 0 010 1.414.997.997 0 01-1.414 0 .997.997 0 010-1.414zm4 0a.997.997 0 011.414 0 .997.997 0 010 1.414 1.003 1.003 0 01-1.414 0 1.003 1.003 0 010-1.414zM14 9a.997.997 0 00-1 1 .997.997 0 001 1 .997.997 0 001-1 .997.997 0 00-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `checklist` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.checklist />
  <PolarisIcons.checklist major />
  <PolarisIcons.checklist class="w-4 h-4" color="highlight" />
  <PolarisIcons.checklist backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def checklist(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 0a2 2 0 00-2 2H3.5A1.5 1.5 0 002 3.5v15A1.5 1.5 0 003.5 20h13a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0016.5 2H12a2 2 0 00-2-2zM6 6v-.5A1.5 1.5 0 017.5 4h5A1.5 1.5 0 0114 5.5V6H6zm7.707 3.293a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0l-2-2a1 1 0 111.414-1.414L9 12.586l3.293-3.293a1 1 0 011.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `checklist_alternate` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.checklist_alternate />
  <PolarisIcons.checklist_alternate major />
  <PolarisIcons.checklist_alternate class="w-4 h-4" color="highlight" />
  <PolarisIcons.checklist_alternate backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def checklist_alternate(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M8 2a2 2 0 114 0h3.5A1.5 1.5 0 0117 3.5v15a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5v-15A1.5 1.5 0 014.5 2H8zm-1 9a1 1 0 11-2 0 1 1 0 012 0zm-1 5a1 1 0 100-2 1 1 0 000 2zm8-10.5A1.5 1.5 0 0012.5 4h-5A1.5 1.5 0 006 5.5V6h8v-.5zM9 12h6v-2H9v2zm0 2h6v2H9v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `checkout` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.checkout />
  <PolarisIcons.checkout major />
  <PolarisIcons.checkout class="w-4 h-4" color="highlight" />
  <PolarisIcons.checkout backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def checkout(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1 1c0-.552.45-1 1.004-1h1.505c.831 0 1.505.672 1.505 1.5v.56l12.574.908c.877.055 1.52.843 1.397 1.71l-.866 6.034A1.504 1.504 0 0116.63 12H5.014v2h10.043a3.005 3.005 0 013.011 3c0 1.657-1.348 3-3.01 3a3.005 3.005 0 01-2.84-4H6.85a3.005 3.005 0 01-2.84 4A3.005 3.005 0 011 17c0-1.306.838-2.418 2.007-2.83V3.01 2H2.004A1.002 1.002 0 011 1zm13.054 16c0-.552.449-1 1.003-1 .554 0 1.004.448 1.004 1s-.45 1-1.004 1a1.002 1.002 0 01-1.003-1zM3.007 17c0-.552.45-1 1.004-1s1.003.448 1.003 1-.449 1-1.003 1a1.002 1.002 0 01-1.004-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `chevron_down` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.chevron_down minor />
  <PolarisIcons.chevron_down minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.chevron_down minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def chevron_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 14a.997.997 0 01-.707-.293l-5-5a.999.999 0 111.414-1.414L10 11.586l4.293-4.293a.999.999 0 111.414 1.414l-5 5A.997.997 0 0110 14z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `chevron_left` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.chevron_left minor />
  <PolarisIcons.chevron_left minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.chevron_left minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def chevron_left(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M12 16a.997.997 0 01-.707-.293l-5-5a.999.999 0 010-1.414l5-5a.999.999 0 111.414 1.414L8.414 10l4.293 4.293A.999.999 0 0112 16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `chevron_right` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.chevron_right minor />
  <PolarisIcons.chevron_right minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.chevron_right minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def chevron_right(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M8 16a.999.999 0 01-.707-1.707L11.586 10 7.293 5.707a.999.999 0 111.414-1.414l5 5a.999.999 0 010 1.414l-5 5A.997.997 0 018 16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `chevron_up` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.chevron_up minor />
  <PolarisIcons.chevron_up minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.chevron_up minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def chevron_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M15 13a.997.997 0 01-.707-.293L10 8.414l-4.293 4.293a.999.999 0 11-1.414-1.414l5-5a.999.999 0 011.414 0l5 5A.999.999 0 0115 13z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_alert` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_alert />
  <PolarisIcons.circle_alert major />
  <PolarisIcons.circle_alert class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_alert backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_alert(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M10 0C4.486 0 0 4.486 0 10s4.486 10 10 10 10-4.486 10-10S15.514 0 10 0zM9 6a1 1 0 112 0v4a1 1 0 11-2 0V6zm1 9a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_cancel` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_cancel />
  <PolarisIcons.circle_cancel minor />
  <PolarisIcons.circle_cancel class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_cancel minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_cancel(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 10C0 4.486 4.486 0 10 0s10 4.486 10 10-4.486 10-10 10S0 15.514 0 10zm7.707-3.707a1 1 0 00-1.414 1.414L8.586 10l-2.293 2.293a1 1 0 101.414 1.414L10 11.414l2.293 2.293a1 1 0 001.414-1.414L11.414 10l2.293-2.293a1 1 0 00-1.414-1.414L10 8.586 7.707 6.293z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M10 2a8 8 0 100 16 8 8 0 000-16zM7.707 6.293a1 1 0 00-1.414 1.414L8.586 10l-2.293 2.293a1 1 0 101.414 1.414L10 11.414l2.293 2.293a1 1 0 101.414-1.414L11.414 10l2.293-2.293a1 1 0 00-1.414-1.414L10 8.586 7.707 6.293z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_chevron_down` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_chevron_down minor />
  <PolarisIcons.circle_chevron_down minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_chevron_down minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_chevron_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-4.293-1.707a1 1 0 00-1.414 0L10 10.586 7.707 8.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 000-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_chevron_left` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_chevron_left minor />
  <PolarisIcons.circle_chevron_left minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_chevron_left minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_chevron_left(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 2a8 8 0 100 16 8 8 0 000-16zm1.707 4.293a1 1 0 010 1.414L9.414 10l2.293 2.293a1 1 0 01-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 011.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_chevron_right` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_chevron_right minor />
  <PolarisIcons.circle_chevron_right minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_chevron_right minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_chevron_right(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 2a8 8 0 110 16 8 8 0 010-16zM8.293 6.293a1 1 0 000 1.414L10.586 10l-2.293 2.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 00-1.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_chevron_up` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_chevron_up minor />
  <PolarisIcons.circle_chevron_up minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_chevron_up minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_chevron_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M18 10a8 8 0 10-16 0 8 8 0 0016 0zm-4.293 1.707a1 1 0 01-1.414 0L10 9.414l-2.293 2.293a1 1 0 01-1.414-1.414l3-3a1 1 0 011.414 0l3 3a1 1 0 010 1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_disable` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_disable minor />
  <PolarisIcons.circle_disable minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_disable minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_disable(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M4 10c0-1.294.416-2.49 1.115-3.471l8.356 8.356A5.961 5.961 0 0110 16c-3.309 0-6-2.691-6-6zm12 0c0 1.294-.416 2.49-1.115 3.471L6.529 5.115A5.961 5.961 0 0110 4c3.309 0 6 2.691 6 6zM2 10c0 4.411 3.589 8 8 8s8-3.589 8-8-3.589-8-8-8-8 3.589-8 8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_disabled` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_disabled />
  <PolarisIcons.circle_disabled major />
  <PolarisIcons.circle_disabled class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_disabled backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_disabled(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 10c0-1.846.635-3.543 1.688-4.897l11.209 11.209A7.954 7.954 0 0110 18c-4.411 0-8-3.589-8-8zm14.312 4.897L5.103 3.688A7.954 7.954 0 0110 2c4.411 0 8 3.589 8 8a7.952 7.952 0 01-1.688 4.897zM0 10c0 5.514 4.486 10 10 10s10-4.486 10-10S15.514 0 10 0 0 4.486 0 10z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_dots` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_dots />
  <PolarisIcons.circle_dots major />
  <PolarisIcons.circle_dots class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_dots backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_dots(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10C0 4.486 4.486 0 10 0s10 4.486 10 10-4.486 10-10 10S0 15.514 0 10zm10 1a1 1 0 100-2 1 1 0 000 2zm-3-1a1 1 0 11-2 0 1 1 0 012 0zm7 1a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_down` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_down />
  <PolarisIcons.circle_down major />
  <PolarisIcons.circle_down class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_down backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zm-1-8.414l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a.998.998 0 001.414 0l3-3a1 1 0 00-1.414-1.414L11 11.586V6a1 1 0 00-2 0v5.586z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_information` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_information />
  <PolarisIcons.circle_information major />
  <PolarisIcons.circle_information class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_information backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_information(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M10 20c5.514 0 10-4.486 10-10S15.514 0 10 0 0 4.486 0 10s4.486 10 10 10zm1-6a1 1 0 11-2 0v-4a1 1 0 112 0v4zm-1-9a1 1 0 100 2 1 1 0 000-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_left` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_left />
  <PolarisIcons.circle_left major />
  <PolarisIcons.circle_left class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_left backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_left(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 10C0 4.486 4.486 0 10 0s10 4.486 10 10-4.486 10-10 10S0 15.514 0 10zm8.414-1l1.293-1.293a1 1 0 00-1.414-1.414l-3 3a.997.997 0 000 1.414l3 3a1 1 0 001.414-1.414L8.414 11H14a1 1 0 000-2H8.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_minus` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_minus />
  <PolarisIcons.circle_minus minor />
  <PolarisIcons.circle_minus class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_minus minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_minus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zM6 9a1 1 0 100 2h8a1 1 0 100-2H6z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M15 10a1 1 0 01-1 1H6a1 1 0 110-2h8a1 1 0 011 1zm-5-8a8 8 0 100 16 8 8 0 000-16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_minus_outline` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_minus_outline minor />
  <PolarisIcons.circle_minus_outline minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_minus_outline minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_minus_outline(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 2c-4.411 0-8 3.589-8 8s3.589 8 8 8 8-3.589 8-8-3.589-8-8-8zm0 14c-3.309 0-6-2.691-6-6s2.691-6 6-6 6 2.691 6 6-2.691 6-6 6zM7 9a1 1 0 100 2h6a1 1 0 100-2H7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_plus` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_plus />
  <PolarisIcons.circle_plus minor />
  <PolarisIcons.circle_plus class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_plus minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_plus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 10c0 5.514 4.486 10 10 10s10-4.486 10-10S15.514 0 10 0 0 4.486 0 10zm5 0a1 1 0 011-1h3V6a1 1 0 112 0v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 01-1-1z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M15 10a1 1 0 01-1 1h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 012 0v3h3a1 1 0 011 1zm-5-8a8 8 0 100 16 8 8 0 000-16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_plus_outline` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_plus_outline minor />
  <PolarisIcons.circle_plus_outline minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_plus_outline minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_plus_outline(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 2c-4.411 0-8 3.589-8 8s3.589 8 8 8 8-3.589 8-8-3.589-8-8-8zm0 14c-3.309 0-6-2.691-6-6s2.691-6 6-6 6 2.691 6 6-2.691 6-6 6zm3-7h-2V7a1 1 0 10-2 0v2H7a1 1 0 100 2h2v2a1 1 0 102 0v-2h2a1 1 0 100-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_right` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_right />
  <PolarisIcons.circle_right major />
  <PolarisIcons.circle_right class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_right backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_right(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M20 10c0 5.514-4.486 10-10 10S0 15.514 0 10 4.486 0 10 0s10 4.486 10 10zm-8.414 1l-1.293 1.293a1 1 0 001.414 1.414l3-3a.997.997 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L11.586 9H6a1 1 0 000 2h5.586z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_tick` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_tick />
  <PolarisIcons.circle_tick minor />
  <PolarisIcons.circle_tick class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_tick minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_tick(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10a10 10 0 1020 0 10 10 0 00-20 0zm15.2-1.8a1 1 0 00-1.4-1.4L9 11.6 6.7 9.3a1 1 0 00-1.4 1.4l3 3c.4.4 1 .4 1.4 0l5.5-5.5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill="#5C5F62" fill-rule="evenodd" d="M2 10a8 8 0 1 0 16 0 8 8 0 0 0-16 0Zm12.16-1.44a.8.8 0 0 0-1.12-1.12L9.2 11.28 7.36 9.44a.8.8 0 0 0-1.12 1.12l2.4 2.4c.32.32.8.32 1.12 0l4.4-4.4Z" />|
        }
      )
    )
  end

  @doc """
  Renders the `circle_tick_outline` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_tick_outline minor />
  <PolarisIcons.circle_tick_outline minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_tick_outline minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_tick_outline(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8zm0-14c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6zm-1 9a.997.997 0 01-.707-.293l-2-2a1 1 0 111.414-1.414L9 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4A.996.996 0 019 13z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `circle_up` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.circle_up />
  <PolarisIcons.circle_up major />
  <PolarisIcons.circle_up class="w-4 h-4" color="highlight" />
  <PolarisIcons.circle_up backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def circle_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 0c5.514 0 10 4.486 10 10s-4.486 10-10 10S0 15.514 0 10 4.486 0 10 0zm1 8.414l1.293 1.293a1 1 0 101.414-1.414l-3-3a.998.998 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L9 8.414V14a1 1 0 102 0V8.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `clipboard` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.clipboard minor />
  <PolarisIcons.clipboard minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.clipboard minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def clipboard(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M15 2a1 1 0 011 1v13.5a1.5 1.5 0 01-1.5 1.5h-9A1.5 1.5 0 014 16.5V3a1 1 0 112 0v1a2 2 0 002 2h4a2 2 0 002-2V3a1 1 0 011-1zm-4 2H9a1 1 0 110-2h2a1 1 0 110 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `clock` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.clock />
  <PolarisIcons.clock minor />
  <PolarisIcons.clock class="w-4 h-4" color="highlight" />
  <PolarisIcons.clock minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def clock(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zm1-15a1 1 0 10-2 0v5a1 1 0 00.293.707l3 3a1 1 0 001.414-1.414L11 9.586V5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M10 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8zm2.293-4.707a.997.997 0 01-.707-.293l-2.293-2.293A.997.997 0 019 10V6a1 1 0 112 0v3.586l2 2a.999.999 0 01-.707 1.707z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `code` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.code />
  <PolarisIcons.code minor />
  <PolarisIcons.code class="w-4 h-4" color="highlight" />
  <PolarisIcons.code minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def code(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2.707 9.707A.996.996 0 003 9V5a1 1 0 011-1 1 1 0 000-2C2.346 2 1 3.346 1 5v3.586l-.707.707a.999.999 0 000 1.414l.707.707V15c0 1.654 1.346 3 3 3a1 1 0 000-2 1 1 0 01-1-1v-4a.996.996 0 00-.293-.707L2.414 10l.293-.293zm17.217-.09a1.001 1.001 0 00-.217-.324L19 8.586V5c0-1.654-1.346-3-3-3a1 1 0 100 2 1 1 0 011 1v4a.997.997 0 00.293.707l.293.293-.293.293A.996.996 0 0017 11v4a1 1 0 01-1 1 1 1 0 100 2c1.654 0 3-1.346 3-3v-3.586l.707-.707a1.001 1.001 0 00.217-1.09zm-7.227-4.333a1.002 1.002 0 00-1.63.346l-3.996 8a.999.999 0 00.56 1.299 1.006 1.006 0 001.302-.557l3.995-8a.997.997 0 00-.23-1.088z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M4.707 9.707A.996.996 0 0 0 5 9V5a1 1 0 0 1 1-1 1 1 0 0 0 0-2C4.346 2 3 3.346 3 5v3.586l-.707.707a.999.999 0 0 0 0 1.414l.707.707V15c0 1.654 1.346 3 3 3a1 1 0 0 0 0-2 1 1 0 0 1-1-1v-4a.997.997 0 0 0-.293-.707L4.414 10l.293-.293ZM17.924 9.617a1 1 0 0 0-.217-.324L17 8.586V5c0-1.654-1.346-3-3-3a1 1 0 1 0 0 2 1 1 0 0 1 1 1v4a.996.996 0 0 0 .293.707l.293.293-.293.293A.996.996 0 0 0 15 11v4a1 1 0 0 1-1 1 1 1 0 0 0 0 2c1.654 0 3-1.346 3-3v-3.586l.707-.707a1 1 0 0 0 .217-1.09Z" fill="#5C5F62"/><path d="M12.626 5.284a1.002 1.002 0 0 0-1.63.346l-1.998 4-1.998 4a.999.999 0 0 0 .56 1.299 1.006 1.006 0 0 0 1.302-.557l3.995-8a1.001 1.001 0 0 0-.231-1.088Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `collections` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.collections />
  <PolarisIcons.collections major />
  <PolarisIcons.collections class="w-4 h-4" color="highlight" />
  <PolarisIcons.collections backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def collections(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M6.948.001C7.342.001 7.72.16 8 .44l1.477 1.68-3.638 4.12a3.568 3.568 0 00-.872 2.33V18H2.487a1.48 1.48 0 01-1.051-.44A1.507 1.507 0 011 16.5V6.62a1.497 1.497 0 01.377-1l3.48-4L5.897.44A1.48 1.48 0 016.949.001zM14.04 2.44l4.58 5.13c.247.275.383.631.381 1v9.93c0 .399-.159.78-.441 1.062a1.51 1.51 0 01-1.065.439H8.456a1.509 1.509 0 01-1.033-.457A1.497 1.497 0 017 18.5V8.62a1.487 1.487 0 01.382-1l3.524-4.001 1.005-1.18a1.51 1.51 0 012.128 0zm-1.9 5.807a1.51 1.51 0 001.901-.186 1.497 1.497 0 00-.489-2.447 1.512 1.512 0 00-1.641.325 1.498 1.498 0 00.228 2.308z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `color_none` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.color_none minor />
  <PolarisIcons.color_none minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.color_none minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def color_none(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M17.759 4.35a1 1 0 00-1.41-.108S2.313 16.274 2.294 16.292a1 1 0 000 1.415.992.992 0 001.35.043l.008.01 1.963-1.683A5.97 5.97 0 0010 18a6 6 0 006-6c0-1.157-.51-2.48-1.223-3.777L17.65 5.76a.999.999 0 00.108-1.41zm-13.75 7.834c-.002-.062-.01-.121-.01-.184 0-4 6-10 6-10s1.2 1.203 2.526 2.885l-8.516 7.299z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `colors` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.colors />
  <PolarisIcons.colors major />
  <PolarisIcons.colors class="w-4 h-4" color="highlight" />
  <PolarisIcons.colors backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def colors(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="m18.8676 12.4803c.7724-.8739 1.178-2.0113 1.1325-3.17608v-.19011c-.1647-1.82396-.8275-3.56779-1.9162-5.04148-1.0886-1.4737-2.5614-2.62071-4.2579-3.316073-1.6964-.6953597-3.5514-.912385-5.36283-.627428-1.81142.284957-3.50979 1.060961-4.91004 2.243461-1.40025 1.18251-2.44867 2.72614-3.031007 4.4627-.5823405 1.73656-.676266 3.59941-.271543 5.38561.404724 1.7862 1.29257 3.4272 2.5668 4.7442 1.27422 1.317 2.88595 2.2595 4.65955 2.7247 1.32188.2384 2.66457.3423 4.00737.3102h1.1522c.3758 0 .7345-.1949.9859-.4739.2515-.2791.3866-.6436.3777-1.0188 0-.3981-.1584-.7798-.4402-1.0613-.2818-.2814-.6613-.4387-1.0598-.4387-.3986 0-.7947-.1671-1.0765-.4485-.2819-.2815-.4402-.6632-.4402-1.0612 0-.3981.1583-.7798.4402-1.0613.2818-.2814.664-.4396 1.0626-.4396h3.3662c1.1629-.0994 2.2427-.6425 3.0152-1.5164zm-6.8675-8.98032c0 .82843-.6716 1.5-1.5 1.5-.82845 0-1.50003-.67157-1.50003-1.5s.67158-1.5 1.50003-1.5c.8284 0 1.5.67157 1.5 1.5zm-6.50003 3.5c.82843 0 1.5-.67157 1.5-1.5s-.67157-1.5-1.5-1.5c-.82842 0-1.5.67157-1.5 1.5s.67158 1.5 1.5 1.5zm-1 5.00002c.82843 0 1.5-.6716 1.5-1.5 0-.82845-.67157-1.50002-1.5-1.50002-.82842 0-1.5.67157-1.5 1.50002 0 .8284.67158 1.5 1.5 1.5zm10.00003-4.00002c.8284 0 1.5-.67157 1.5-1.5s-.6716-1.5-1.5-1.5c-.8285 0-1.5.67157-1.5 1.5s.6715 1.5 1.5 1.5z" fill="#5c5f62" />|
        }
      )
    )
  end

  @doc """
  Renders the `column1` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.column1 />
  <PolarisIcons.column1 major />
  <PolarisIcons.column1 class="w-4 h-4" color="highlight" />
  <PolarisIcons.column1 backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def column1(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M16 2H4V18H16V2ZM4 0C2.89543 0 2 0.895431 2 2V18C2 19.1046 2.89543 20 4 20H16C17.1046 20 18 19.1046 18 18V2C18 0.895431 17.1046 0 16 0H4Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `column_with_text` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.column_with_text />
  <PolarisIcons.column_with_text major />
  <PolarisIcons.column_with_text class="w-4 h-4" color="highlight" />
  <PolarisIcons.column_with_text backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def column_with_text(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9 7V1H2.5A1.5 1.5 0 001 2.5V7h8zM19 2.5A1.5 1.5 0 0017.5 1H11v6h8V2.5zM1 9h8v2H1V9zM19 9h-8v2h8V9zM1 13h8v2H1v-2zM19 13h-8v2h8v-2zM1 17h4v2H1v-2zM15 17h-4v2h4v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `columns2` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.columns2 />
  <PolarisIcons.columns2 major />
  <PolarisIcons.columns2 class="w-4 h-4" color="highlight" />
  <PolarisIcons.columns2 backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def columns2(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 2C0 0.895431 0.895431 0 2 0H18C19.1046 0 20 0.895431 20 2V18C20 19.1046 19.1046 20 18 20H2C0.895431 20 0 19.1046 0 18V2ZM11 2H18V18H11L11 2ZM9 2H2V18H9L9 2Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `columns3` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.columns3 />
  <PolarisIcons.columns3 minor />
  <PolarisIcons.columns3 class="w-4 h-4" color="highlight" />
  <PolarisIcons.columns3 minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def columns3(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M2 0C0.895431 0 0 0.895431 0 2V18C0 19.1046 0.895431 20 2 20H18C19.1046 20 20 19.1046 20 18V2C20 0.895431 19.1046 0 18 0H2ZM18 2H14L14 18H18V2ZM8 2H12L12 18H8L8 2ZM6 2H2V18H6L6 2Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M16 2a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h12Zm-2.667 2H16v12h-2.667V4ZM8.667 4h2.666v12H8.667V4Zm-2 0H4v12h2.667V4Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `compose` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.compose />
  <PolarisIcons.compose major />
  <PolarisIcons.compose class="w-4 h-4" color="highlight" />
  <PolarisIcons.compose backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def compose(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M18 9a1 1 0 00-1 1v7H3V3h7a1 1 0 100-2H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5V10a1 1 0 00-1-1z"/><path fill="#5C5F62" d="M15.53 2.029l2.439 2.44-7.739 7.738-3.23.792.792-3.231 7.738-7.74zM19.088 3.35L16.65.913l.406-.407a1.725 1.725 0 012.44 2.439l-.408.407z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `confetti` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.confetti />
  <PolarisIcons.confetti major />
  <PolarisIcons.confetti class="w-4 h-4" color="highlight" />
  <PolarisIcons.confetti backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def confetti(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M12.384 8.92a1.01 1.01 0 01-.363.08 1.01 1.01 0 01-.553-.17.914.914 0 01-.373-.452.93.93 0 01-.08-.572c.036-.198.13-.38.271-.522l1.007-1.004a1.01 1.01 0 011.54.17 1.001 1.001 0 01-.12 1.255L12.706 8.71a1.158 1.158 0 01-.322.21zM8.03 3.757a1 1 0 001.94.486l-1.94-.486zm2.44-1.514a1 1 0 10-1.94-.486l1.94.486zm-.5 2l.5-2-1.94-.486-.5 2 1.94.486zM15.725 10.039a1 1 0 10.55 1.922l-.55-1.922zm2.532 1.355a1 1 0 10-.55-1.922l.55 1.922zm-1.982.567l1.982-.567-.55-1.922-1.982.567.55 1.922zM4.515 7.518L.182 16.877a2.238 2.238 0 002.942 2.94l9.367-4.338a.921.921 0 00.465-1.102.918.918 0 00-.226-.369L5.987 7.27a.92.92 0 00-.8-.258.92.92 0 00-.672.506z" fill="#5C5F62"/><path d="M1.801 3.98c.109.022.197.11.219.219a1 1 0 001.96 0A.283.283 0 014.2 3.98a1 1 0 000-1.96.283.283 0 01-.219-.219 1 1 0 00-1.96 0 .283.283 0 01-.219.219 1 1 0 000 1.96zM15.801 3.98c.109.022.197.11.219.219a1 1 0 001.96 0 .283.283 0 01.219-.219 1 1 0 000-1.96.283.283 0 01-.219-.219 1 1 0 00-1.96 0 .283.283 0 01-.219.219 1 1 0 000 1.96zM15.801 17.98c.109.022.197.11.219.219a1 1 0 001.96 0 .283.283 0 01.219-.219 1 1 0 000-1.96.283.283 0 01-.219-.219 1 1 0 00-1.96 0 .283.283 0 01-.219.219 1 1 0 000 1.96z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `connect` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.connect minor />
  <PolarisIcons.connect minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.connect minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def connect(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M14 8c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm-6 6c0 1.103-.897 2-2 2s-2-.897-2-2 .897-2 2-2 2 .897 2 2zm6-12c-1.858 0-3.411 1.28-3.857 3H10c-2.757 0-5 2.243-5 5v.142c-1.721.447-3 2-3 3.858 0 2.206 1.794 4 4 4s4-1.794 4-4c0-1.858-1.279-3.411-3-3.858V10c0-1.654 1.346-3 3-3h.143c.446 1.72 1.999 3 3.857 3 2.206 0 4-1.794 4-4s-1.794-4-4-4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `conversation` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.conversation minor />
  <PolarisIcons.conversation minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.conversation minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def conversation(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M13 10a1 1 0 102 0 1 1 0 00-2 0zm-4 0a1 1 0 102 0 1 1 0 00-2 0zm-4 0a1 1 0 102 0 1 1 0 00-2 0zm5-8c-4.411 0-8 3.589-8 8 0 1.504.425 2.908 1.15 4.111l-1.069 2.495a1 1 0 001.314 1.313l2.494-1.069A7.939 7.939 0 0010 18c4.411 0 8-3.589 8-8s-3.589-8-8-8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `credit_card` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.credit_card />
  <PolarisIcons.credit_card major />
  <PolarisIcons.credit_card class="w-4 h-4" color="highlight" />
  <PolarisIcons.credit_card backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def credit_card(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 4.5A1.5 1.5 0 011.5 3h17A1.5 1.5 0 0120 4.5V6H0V4.5z" fill="#5C5F62"/><path d="M0 8v7.5A1.5 1.5 0 001.5 17h17a1.5 1.5 0 001.5-1.5V8H0zm7 4H2v-2h5v2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `credit_card_cancel` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.credit_card_cancel />
  <PolarisIcons.credit_card_cancel major />
  <PolarisIcons.credit_card_cancel class="w-4 h-4" color="highlight" />
  <PolarisIcons.credit_card_cancel backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def credit_card_cancel(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15.5 9.90039C13.0149 9.90039 11 11.9153 11 14.4004C11 16.8861 13.0149 18.9004 15.5 18.9004C17.9851 18.9004 20 16.8861 20 14.4004C20 11.9153 17.9851 9.90039 15.5 9.90039ZM14.2102 12.3154C13.9906 12.0957 13.6344 12.0957 13.4148 12.3154C13.1951 12.535 13.1951 12.8912 13.4148 13.1109L14.7045 14.4006L13.4148 15.6904C13.1951 15.91 13.1951 16.2662 13.4148 16.4859C13.6344 16.7055 13.9906 16.7055 14.2102 16.4859L15.5 15.1961L16.7898 16.4859C17.0094 16.7055 17.3656 16.7055 17.5852 16.4859C17.8049 16.2662 17.8049 15.91 17.5852 15.6904L16.2955 14.4006L17.5852 13.1109C17.8049 12.8912 17.8049 12.535 17.5852 12.3154C17.3656 12.0957 17.0094 12.0957 16.7898 12.3154L15.5 13.6051L14.2102 12.3154Z" fill="#5C5F62" fill-rule="evenodd"/>
  <path d="M1.5 0C0.671573 0 0 0.671573 0 1.5V3H20V1.5C20 0.671573 19.3284 0 18.5 0H1.5Z" fill="#5C5F62"/>
  <path d="M0 12.5V5H20V8H14C11.2429 8 9 10.2356 9 12.987C9 13.5465 9 13.5 9 14H1.5C0.671573 14 0 13.3284 0 12.5ZM2 9H7V7H2V9Z" fill="#5C5F62" fill-rule="evenodd"/>|
        }
      )
    )
  end

  @doc """
  Renders the `credit_card_percent` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.credit_card_percent />
  <PolarisIcons.credit_card_percent major />
  <PolarisIcons.credit_card_percent class="w-4 h-4" color="highlight" />
  <PolarisIcons.credit_card_percent backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def credit_card_percent(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.5 1A1.5 1.5 0 000 2.5V4h20V2.5A1.5 1.5 0 0018.5 1h-17z" fill="#5C5F62"/><path d="M0 13.5V6h20v3h-6c-2.757 0-5 2.236-5 4.987V15H1.5A1.5 1.5 0 010 13.5zM2 10h5V8H2v2z" fill="#5C5F62"/><circle cx="13.5" cy="12.5" r="1.5" fill="#5C5F62"/><circle cx="18.5" cy="17.5" r="1.5" fill="#5C5F62"/><path d="M19.707 11.293a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414l6-6a1 1 0 011.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `credit_card_secure` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.credit_card_secure />
  <PolarisIcons.credit_card_secure major />
  <PolarisIcons.credit_card_secure class="w-4 h-4" color="highlight" />
  <PolarisIcons.credit_card_secure backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def credit_card_secure(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.5 1A1.5 1.5 0 000 2.5V4h20V2.5A1.5 1.5 0 0018.5 1h-17z" fill="#5C5F62"/><path fill-rule="evenodd" d="M0 13.5V6h20v3h-5c-2.757 0-5 2.236-5 4.987V15H1.5A1.5 1.5 0 010 13.5zM2 10h5V8H2v2z" fill="#5C5F62"/><path fill-rule="evenodd" d="M13 14v1a1 1 0 00-1 1v3a1 1 0 001 1h6a1 1 0 001-1v-3a1 1 0 00-1-1v-1a3 3 0 10-6 0zm3-1a1 1 0 00-1 1v1h2v-1a1 1 0 00-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `currency_convert` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.currency_convert minor />
  <PolarisIcons.currency_convert minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.currency_convert minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def currency_convert(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M4.977 7c.026.001.649.039 1.316.707a.999.999 0 101.414-1.414A4.491 4.491 0 006 5.2V5a1 1 0 10-2 0v.185A2.995 2.995 0 002 8c0 2.281 1.727 2.713 2.758 2.971C5.873 11.249 6 11.354 6 12c0 .552-.448 1-.976 1-.026-.001-.65-.04-1.317-.707a.999.999 0 10-1.414 1.414A4.506 4.506 0 004 14.8v.2a1 1 0 102 0v-.185A2.993 2.993 0 008 12c0-2.281-1.726-2.713-2.757-2.971C4.128 8.751 4 8.646 4 8c0-.551.449-1 .977-1zM17 13h-3.585l.292-.293a.999.999 0 10-1.414-1.414l-2 1.999a.988.988 0 00-.215.326.992.992 0 000 .764c.05.123.124.234.216.326l1.999 1.999a1 1 0 001.414-1.414L13.415 15H17a1 1 0 100-2zm-7-7a1 1 0 011-1h3.586l-.293-.293a1 1 0 011.414-1.414l1.999 1.999a.985.985 0 01.217.326.992.992 0 010 .764.985.985 0 01-.217.326l-2 1.999a.997.997 0 01-1.413 0 1 1 0 010-1.414L14.586 7H11a1 1 0 01-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `customer_minus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.customer_minus />
  <PolarisIcons.customer_minus major />
  <PolarisIcons.customer_minus class="w-4 h-4" color="highlight" />
  <PolarisIcons.customer_minus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def customer_minus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M14 11h4a1 1 0 000-2h-4a1 1 0 000 2zM12.363 5.22a4.22 4.22 0 11-8.439-.001 4.22 4.22 0 018.439 0zM.67 14.469c1.384-1.09 4.141-2.853 7.474-2.853 3.332 0 6.089 1.764 7.474 2.853.618.486.81 1.308.567 2.056l-.333 1.02A2.11 2.11 0 0113.846 19H2.441a2.11 2.11 0 01-2.005-1.455l-.333-1.02c-.245-.748-.052-1.57.566-2.056zM-2651 445h100v100h-100V445z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `customer_plus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.customer_plus />
  <PolarisIcons.customer_plus major />
  <PolarisIcons.customer_plus class="w-4 h-4" color="highlight" />
  <PolarisIcons.customer_plus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def customer_plus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15 11a1 1 0 102 0v-1h1a1 1 0 100-2h-1V7a1 1 0 10-2 0v1h-1a1 1 0 100 2h1v1zM12.363 5.22a4.22 4.22 0 11-8.439 0 4.22 4.22 0 018.439 0zM.67 14.469c1.385-1.09 4.141-2.853 7.474-2.853 3.332 0 6.089 1.764 7.474 2.853.618.486.81 1.308.567 2.056l-.333 1.02A2.11 2.11 0 0113.845 19H2.441a2.11 2.11 0 01-2.005-1.455l-.333-1.02c-.245-.748-.052-1.57.567-2.056z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `customers` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.customers />
  <PolarisIcons.customers minor />
  <PolarisIcons.customers class="w-4 h-4" color="highlight" />
  <PolarisIcons.customers minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def customers(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M14.363 5.22a4.22 4.22 0 11-8.439 0 4.22 4.22 0 018.439 0zM2.67 14.469c1.385-1.09 4.141-2.853 7.474-2.853 3.332 0 6.089 1.764 7.474 2.853.618.486.81 1.308.567 2.056l-.333 1.02A2.11 2.11 0 0115.846 19H4.441a2.11 2.11 0 01-2.005-1.455l-.333-1.02c-.245-.748-.052-1.57.567-2.056z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6ZM6.5 17a2.5 2.5 0 0 1-1.768-4.268C5.322 12.155 7.2 11 10 11s4.678 1.155 5.268 1.732A2.5 2.5 0 0 1 13.5 17h-7Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `data_visualization` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.data_visualization />
  <PolarisIcons.data_visualization major />
  <PolarisIcons.data_visualization class="w-4 h-4" color="highlight" />
  <PolarisIcons.data_visualization backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def data_visualization(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 2a1 1 0 011-1h18a1 1 0 110 2h-1v11.5a1.5 1.5 0 01-1.5 1.5h-3.22l.69 2.758a1 1 0 11-1.94.485L11.22 16H8.78l-.81 3.242a1 1 0 11-1.94-.485L6.72 16H3.5A1.5 1.5 0 012 14.5V3H1a1 1 0 01-1-1zm15 3h-2v8h2V5zM9 7h2v6H9V7zM7 9H5v4h2V9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `delete` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.delete />
  <PolarisIcons.delete minor />
  <PolarisIcons.delete class="w-4 h-4" color="highlight" />
  <PolarisIcons.delete minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def delete(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M14 4h3a1 1 0 011 1v1H2V5a1 1 0 011-1h3V1.5A1.5 1.5 0 017.5 0h5A1.5 1.5 0 0114 1.5V4zM8 2v2h4V2H8zM3 8h14v10.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5V8zm4 3H5v6h2v-6zm4 0H9v6h2v-6zm2 0h2v6h-2v-6z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M8 3.994C8 2.893 8.895 2 10 2s2 .893 2 1.994h4c.552 0 1 .446 1 .997 0 .55-.448.997-1 .997H4c-.552 0-1-.447-1-.997s.448-.997 1-.997h4zM5 14.508V8h2v6.508a.5.5 0 00.5.498H9V8h2v7.006h1.5a.5.5 0 00.5-.498V8h2v6.508A2.496 2.496 0 0112.5 17h-5C6.12 17 5 15.884 5 14.508z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `desktop` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.desktop />
  <PolarisIcons.desktop major />
  <PolarisIcons.desktop class="w-4 h-4" color="highlight" />
  <PolarisIcons.desktop backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def desktop(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M2.5 1A1.5 1.5 0 001 2.5v11A1.5 1.5 0 002.5 15H7c0 .525-.015.793-.144 1.053-.12.239-.416.61-1.303 1.053A1 1 0 006.022 19h7.956a1.004 1.004 0 00.995-.77 1.001 1.001 0 00-.544-1.134c-.873-.439-1.166-.806-1.285-1.043-.13-.26-.144-.528-.144-1.053h4.5a1.5 1.5 0 001.5-1.5v-11A1.5 1.5 0 0017.5 1h-15zm8.883 16a2.621 2.621 0 01-.027-.053c-.357-.714-.357-1.42-.356-1.895V15H9v.052c0 .475.001 1.181-.356 1.895a2.913 2.913 0 01-.027.053h2.766zM17 11H3v2h14v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `detailed_pop_up` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.detailed_pop_up />
  <PolarisIcons.detailed_pop_up major />
  <PolarisIcons.detailed_pop_up class="w-4 h-4" color="highlight" />
  <PolarisIcons.detailed_pop_up backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def detailed_pop_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3.1 3h1V1H2.6c-.8 0-1.5.7-1.5 1.5V4h2V3zM9.1 19h-3v-2h3v2zM11.1 19h3v-2h-3v2zM3.1 17v-1h-2v1.5c0 .8.7 1.5 1.5 1.5h1.5v-2h-1zM16.1 17h1v-1h2v1.5c0 .8-.7 1.5-1.5 1.5h-1.5v-2zM1.1 9V6h2v3h-2zM1.1 11v3h2v-3h-2z" fill="#5C5F62"/><path fill-rule="evenodd" d="M9 3v8h8V3H9zm-.5-2C7.7 1 7 1.7 7 2.5v9c0 .8.7 1.5 1.5 1.5h9c.8 0 1.5-.7 1.5-1.5v-9c0-.8-.7-1.5-1.5-1.5h-9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `diamond_alert` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.diamond_alert />
  <PolarisIcons.diamond_alert major />
  <PolarisIcons.diamond_alert class="w-4 h-4" color="highlight" />
  <PolarisIcons.diamond_alert backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def diamond_alert(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11.768.768a2.5 2.5 0 00-3.536 0L.768 8.232a2.5 2.5 0 000 3.536l7.464 7.464a2.5 2.5 0 003.536 0l7.464-7.464a2.5 2.5 0 000-3.536L11.768.768zM9 6a1 1 0 112 0v4a1 1 0 11-2 0V6zm2 8a1 1 0 11-2 0 1 1 0 012 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `digital_media_receiver` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.digital_media_receiver />
  <PolarisIcons.digital_media_receiver major />
  <PolarisIcons.digital_media_receiver class="w-4 h-4" color="highlight" />
  <PolarisIcons.digital_media_receiver backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def digital_media_receiver(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 10a8 8 0 018-8 1 1 0 100-2C4.477 0 0 4.477 0 10a1 1 0 102 0zm8-4a4 4 0 00-4 4 1 1 0 11-2 0 6 6 0 016-6 1 1 0 110 2zm1 4a1 1 0 011 1v3h6.5a1.5 1.5 0 011.5 1.5v3a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 012 18.5v-3A1.5 1.5 0 013.5 14H10v-3a1 1 0 011-1zm-4 6H4v2h3v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `discount_automatic` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.discount_automatic />
  <PolarisIcons.discount_automatic major />
  <PolarisIcons.discount_automatic class="w-4 h-4" color="highlight" />
  <PolarisIcons.discount_automatic backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def discount_automatic(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M8.707 7.707l6-6A1 1 0 0013.293.293l-6 6a1 1 0 001.414 1.414z" fill="#5C5F62"/><path fill-rule="evenodd" d="M2 0a1 1 0 000 2h1v12.17A3.001 3.001 0 106.83 16h5.34A3 3 0 1015 14H5v-2h11.566a1.5 1.5 0 001.485-1.288l.939-6.57a1 1 0 00-1.98-.283L16.133 10H5V1.5A1.5 1.5 0 003.5 0H2zm13 16a1 1 0 100 2 1 1 0 000-2zM4 16a1 1 0 100 2 1 1 0 000-2z" fill="#5C5F62"/><path d="M8.5 3a1.5 1.5 0 100-3 1.5 1.5 0 000 3zM15 6.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `discount_code` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.discount_code />
  <PolarisIcons.discount_code major />
  <PolarisIcons.discount_code class="w-4 h-4" color="highlight" />
  <PolarisIcons.discount_code backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def discount_code(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4 3H3v1H1V2.5A1.5 1.5 0 012.5 1H4v2zM9 3H6V1h3v2zM14 3h-3V1h3v2zM1 9V6h2v3H1zM1 11v3h2v-3H1zM17 6h2v3h-2V6zM19 11h-2v3h2v-3zM9 19v-2H6v2h3zM14 17v2h-3v-2h3zM9 7.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM12.5 14a1.5 1.5 0 100-3 1.5 1.5 0 000 3zM13.707 6.293a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414l6-6a1 1 0 011.414 0zM18 19a1 1 0 001-1v-2h-2v1h-1v2h2zM2 19a1 1 0 01-1-1v-2h2v1h1v2H2zM17 4V3h-1V1h1.5A1.5 1.5 0 0119 2.5V4h-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `discounts` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.discounts />
  <PolarisIcons.discounts minor />
  <PolarisIcons.discounts class="w-4 h-4" color="highlight" />
  <PolarisIcons.discounts minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def discounts(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11.566.66a2.189 2.189 0 00-3.132 0l-.962.985a2.189 2.189 0 01-1.592.66l-1.377-.017a2.189 2.189 0 00-2.215 2.215l.016 1.377a2.189 2.189 0 01-.66 1.592l-.984.962a2.189 2.189 0 000 3.132l.985.962c.428.418.667.994.66 1.592l-.017 1.377a2.189 2.189 0 002.215 2.215l1.377-.016a2.189 2.189 0 011.592.66l.962.984c.859.88 2.273.88 3.132 0l.962-.985a2.189 2.189 0 011.592-.66l1.377.017a2.189 2.189 0 002.215-2.215l-.016-1.377a2.189 2.189 0 01.66-1.592l.984-.962c.88-.859.88-2.273 0-3.132l-.985-.962a2.189 2.189 0 01-.66-1.592l.017-1.377a2.189 2.189 0 00-2.215-2.215l-1.377.016a2.189 2.189 0 01-1.592-.66L11.566.66zM7 8.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm6 6a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm.778-8.278a1.1 1.1 0 010 1.556l-6 6a1.1 1.1 0 11-1.556-1.556l6-6a1.1 1.1 0 011.556 0z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M6 3.072a2 2 0 0 0-.99 1.939 2 2 0 0 0-1.826 3.163 2 2 0 0 0 0 3.652A2 2 0 0 0 5.01 14.99a2 2 0 0 0 3.164 1.828 2 2 0 0 0 3.652 0 2 2 0 0 0 3.164-1.827 2 2 0 0 0 1.826-3.164 2 2 0 0 0 0-3.652A2 2 0 0 0 14.99 5.01a2 2 0 0 0-3.163-1.826 2 2 0 0 0-3.654 0A2 2 0 0 0 6 3.072Zm6.832 4.483a1 1 0 1 0-1.664-1.11l-4 6a1 1 0 0 0 1.664 1.11l4-6ZM7 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm7 3a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `dispute` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.dispute minor />
  <PolarisIcons.dispute minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.dispute minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def dispute(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M9 9a1 1 0 002 0V7a1 1 0 10-2 0v2zm0 4a1 1 0 102 0 1 1 0 00-2 0zm-7-3c0 4.411 3.589 8 8 8a7.939 7.939 0 004.111-1.15l2.494 1.069a1 1 0 001.314-1.313l-1.069-2.495A7.939 7.939 0 0018 10c0-4.411-3.589-8-8-8s-8 3.589-8 8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `dns_settings` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.dns_settings />
  <PolarisIcons.dns_settings major />
  <PolarisIcons.dns_settings class="w-4 h-4" color="highlight" />
  <PolarisIcons.dns_settings backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def dns_settings(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1 3.5A1.5 1.5 0 012.5 2h15A1.5 1.5 0 0119 3.5v2A1.5 1.5 0 0117.5 7h-15A1.5 1.5 0 011 5.5v-2zm3.5 1a1 1 0 11-2 0 1 1 0 012 0zM1 9.5A1.5 1.5 0 012.5 8h6.073a1.5 1.5 0 011.342 2.17l-1 2a1.5 1.5 0 01-1.342.83H2.5A1.5 1.5 0 011 11.5v-2zm3.5 1a1 1 0 11-2 0 1 1 0 012 0zM1 15.5A1.5 1.5 0 012.5 14h5.27a1.5 1.5 0 011.471 1.206l.4 2A1.5 1.5 0 018.171 19H2.5A1.5 1.5 0 011 17.5v-2zm3.5 1a1 1 0 11-2 0 1 1 0 012 0zM12.159 13.059l-.682-.429a.987.987 0 01-.452-.611.946.946 0 01.134-.742.983.983 0 01.639-.425 1.023 1.023 0 01.758.15l.682.427c.369-.31.8-.54 1.267-.676V9.97c0-.258.104-.504.291-.686.187-.182.44-.284.704-.284.264 0 .517.102.704.284a.957.957 0 01.291.686v.783c.472.138.903.37 1.267.676l.682-.429a1.02 1.02 0 01.735-.107c.25.058.467.208.606.419.14.21.19.465.141.71a.97.97 0 01-.403.608l-.682.429a3.296 3.296 0 010 1.882l.682.43a.987.987 0 01.452.611.946.946 0 01-.134.742.982.982 0 01-.639.425 1.02 1.02 0 01-.758-.15l-.682-.428c-.369.31-.8.54-1.267.676v.783a.957.957 0 01-.291.686A1.01 1.01 0 0115.5 19a1.01 1.01 0 01-.704-.284.957.957 0 01-.291-.686v-.783a3.503 3.503 0 01-1.267-.676l-.682.429a1.02 1.02 0 01-.75.132.999.999 0 01-.627-.421.949.949 0 01-.135-.73.97.97 0 01.434-.61l.68-.43a3.296 3.296 0 010-1.882zm3.341-.507c-.82 0-1.487.65-1.487 1.449s.667 1.448 1.487 1.448c.82 0 1.487-.65 1.487-1.448 0-.8-.667-1.45-1.487-1.45z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `domain_new` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.domain_new />
  <PolarisIcons.domain_new major />
  <PolarisIcons.domain_new class="w-4 h-4" color="highlight" />
  <PolarisIcons.domain_new backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def domain_new(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M2.5 1A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1h-15zM9 9a1 1 0 012 0v2h2a1 1 0 110 2h-2v2a1 1 0 11-2 0v-2H7a1 1 0 110-2h2V9zM7 5V3h10v2H7zM3 3v2h2V3H3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `domain_redirect` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.domain_redirect minor />
  <PolarisIcons.domain_redirect minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.domain_redirect minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def domain_redirect(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 3.778a6.222 6.222 0 1 0 3.726 11.205l-4.869-4.869v2.208a.889.889 0 0 1-1.778 0V7.968c0-.49.398-.889.89-.889h4.353a.889.889 0 0 1 0 1.778h-2.208l4.87 4.87A6.193 6.193 0 0 0 16.221 10 6.222 6.222 0 0 0 10 3.778ZM2 10a8 8 0 1 1 16 0 8 8 0 0 1-16 0Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `domains` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.domains />
  <PolarisIcons.domains major />
  <PolarisIcons.domains class="w-4 h-4" color="highlight" />
  <PolarisIcons.domains backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def domains(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M13.903 8c.06.629.097 1.292.097 2a1 1 0 01-2 0c0-.713-.039-1.378-.105-2H8.092c-.139 1.33-.14 2.67-.004 4H10a1 1 0 010 2H8.416c.469 2.08 1.202 3.41 1.585 4 0 0 .789.013.926.002a1.008 1.008 0 011.07.925 1 1 0 01-.924 1.07C10.979 20.004 10 20 10 20 4.486 20 0 15.514 0 10 0 4.485 4.486 0 10 0s10 4.485 10 10c0 .379-.036.749-.079 1.116a1.001 1.001 0 01-1.987-.233c.035-.291.066-.583.066-.883 0-.692-.098-1.36-.263-2h-3.834zM9.988 2.036c-.386.606-1.1 1.931-1.564 3.964h3.137c-.466-2.033-1.185-3.358-1.573-3.964zM2.263 12h3.819a21.604 21.604 0 01-.095-1.996c0-.67.033-1.338.096-2.004h-3.82A7.946 7.946 0 002 10a7.96 7.96 0 00.263 2zm.819 2a8.031 8.031 0 004.437 3.601A16.293 16.293 0 016.371 14H3.082zm3.291-8a16.235 16.235 0 011.15-3.603A8.03 8.03 0 003.082 6h3.291zm7.239 0h3.305a8.029 8.029 0 00-4.465-3.612A16.128 16.128 0 0113.612 6z"/><path fill="#5C5F62" d="M15.223 18.945l-2.55-5.61a.5.5 0 01.662-.662l5.61 2.55a.5.5 0 01.017.903l-1.742.87a.5.5 0 00-.223.224l-.871 1.742a.5.5 0 01-.903-.017z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `draft_orders` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.draft_orders />
  <PolarisIcons.draft_orders major />
  <PolarisIcons.draft_orders class="w-4 h-4" color="highlight" />
  <PolarisIcons.draft_orders backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def draft_orders(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="m19.101 3.291-2.392-2.392507.3984-.398487c.6606-.660775 1.7319-.660775 2.3925 0 .6604.660574.6604 1.731414 0 2.391984z" fill="#5c5f62"/><path d="m15.6108 1.99445 2.392 2.39251-6.5028 6.50324-3.16846.7766.77644-3.16915z" fill="#5c5f62"/><path d="m3 3v11h3.5c.77479 0 1.38768.6623 1.92584 1.2439.00864.0093.01729.0186.02593.028.02846.0307.05688.0614.0848.0913.36511.3918.88566.6368 1.46343.6368.5778 0 1.0983-.245 1.4634-.6368.0336-.036.0675-.0726.1017-.1096l.0088-.0095c.5381-.5814 1.1515-1.2441 1.9261-1.2441h3.5v-3c0-.5523.4477-1.00001 1-1.00001s1 .44771 1 1.00001v6.5c0 .8284-.6716 1.5-1.5 1.5h-15c-.82843 0-1.5-.6716-1.5-1.5v-15c0-.82843.67157-1.5 1.5-1.5h6.5c.55229 0 1 .44772 1 1s-.44772 1-1 1z" fill="#5c5f62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `drag_drop` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.drag_drop />
  <PolarisIcons.drag_drop major />
  <PolarisIcons.drag_drop class="w-4 h-4" color="highlight" />
  <PolarisIcons.drag_drop backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def drag_drop(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 2h1V0H1.5A1.5 1.5 0 000 1.5V3h2V2zM5 2h3V0H5v2zM13 2h-3V0h3v2zM0 5v3h2V5H0zM0 10v3h2v-3H0zM18 5h-2v3h2V5zM5 18h3v-2H5v2zM0 17a1 1 0 001 1h2v-2H2v-1H0v2zM16 3V2h-1V0h1.5A1.5 1.5 0 0118 1.5V3h-2z" fill="#5C5F62"/><path d="M10.814 14H5.5A1.5 1.5 0 014 12.5v-7A1.5 1.5 0 015.5 4h7A1.5 1.5 0 0114 5.5v5.314l5.512 2.506a.832.832 0 01.028 1.501l-2.898 1.45a.832.832 0 00-.372.371l-1.449 2.898a.832.832 0 01-1.501-.028L10.814 14zm-.909-2l-.828-1.821c-.318-.7.402-1.42 1.102-1.102L12 9.905V6H6v6h3.905z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `drag_handle` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.drag_handle minor />
  <PolarisIcons.drag_handle minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.drag_handle minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def drag_handle(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M7 2a2 2 0 10.001 4.001A2 2 0 007 2zm0 6a2 2 0 10.001 4.001A2 2 0 007 8zm0 6a2 2 0 10.001 4.001A2 2 0 007 14zm6-8a2 2 0 10-.001-4.001A2 2 0 0013 6zm0 2a2 2 0 10.001 4.001A2 2 0 0013 8zm0 6a2 2 0 10.001 4.001A2 2 0 0013 14z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `dropdown` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.dropdown minor />
  <PolarisIcons.dropdown minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.dropdown minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def dropdown(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill="#5C5F62" d="M13.098 8H6.902c-.751 0-1.172.754-.708 1.268L9.292 12.7c.36.399 1.055.399 1.416 0l3.098-3.433C14.27 8.754 13.849 8 13.098 8Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `duplicate` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.duplicate minor />
  <PolarisIcons.duplicate minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.duplicate minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def duplicate(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M7.5 2A1.5 1.5 0 006 3.5V13a1 1 0 001 1h9.5a1.5 1.5 0 001.5-1.5v-9A1.5 1.5 0 0016.5 2h-9zm-4 4H4v10h10v.5a1.5 1.5 0 01-1.5 1.5h-9A1.5 1.5 0 012 16.5v-9A1.5 1.5 0 013.5 6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `dynamic_source` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.dynamic_source />
  <PolarisIcons.dynamic_source minor />
  <PolarisIcons.dynamic_source class="w-4 h-4" color="highlight" />
  <PolarisIcons.dynamic_source minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def dynamic_source(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 8C14.4183 8 18 6.65685 18 5C18 3.34315 14.4183 2 10 2C5.58172 2 2 3.34315 2 5C2 6.65685 5.58172 8 10 8ZM16.9297 8.5C15.5465 9.3967 12.9611 10 10 10C7.03887 10 4.4535 9.3967 3.07026 8.5C2.38958 8.94126 2 9.45357 2 10C2 11.6569 5.58172 13 10 13C14.4183 13 18 11.6569 18 10C18 9.45357 17.6104 8.94126 16.9297 8.5ZM16.9297 13.5C15.5465 14.3967 12.9611 15 10 15C7.03887 15 4.4535 14.3967 3.07026 13.5C2.38958 13.9413 2 14.4536 2 15C2 16.6569 5.58172 18 10 18C14.4183 18 18 16.6569 18 15C18 14.4536 17.6104 13.9413 16.9297 13.5Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10 9C13.866 9 17 7.65685 17 6C17 4.34315 13.866 3 10 3C6.13401 3 3 4.34315 3 6C3 7.65685 6.13401 9 10 9ZM16.6017 9C15.6407 10.1652 13.0478 11 10 11C6.95216 11 4.35926 10.1652 3.39831 9C3.14036 9.31278 3 9.64936 3 10C3 11.6569 6.13401 13 10 13C13.866 13 17 11.6569 17 10C17 9.64936 16.8596 9.31278 16.6017 9ZM16.6017 13C15.6407 14.1652 13.0478 15 10 15C6.95216 15 4.35926 14.1652 3.39831 13C3.14036 13.3128 3 13.6494 3 14C3 15.6569 6.13401 17 10 17C13.866 17 17 15.6569 17 14C17 13.6494 16.8596 13.3128 16.6017 13Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `edit` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.edit />
  <PolarisIcons.edit minor />
  <PolarisIcons.edit class="w-4 h-4" color="highlight" />
  <PolarisIcons.edit minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def edit(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M14.846 1.403l3.752 3.753.625-.626A2.653 2.653 0 0015.471.778l-.625.625zm2.029 5.472l-3.752-3.753L1.218 15.028 0 19.998l4.97-1.217L16.875 6.875z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M13.877 3.123l3.001 3.002.5-.5a2.123 2.123 0 10-3.002-3.002l-.5.5zM15.5 7.5l-3.002-3.002-9.524 9.525L2 17.999l3.976-.974L15.5 7.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `email` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.email />
  <PolarisIcons.email major />
  <PolarisIcons.email class="w-4 h-4" color="highlight" />
  <PolarisIcons.email backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def email(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 5.324V15.5A1.5 1.5 0 001.5 17h17a1.5 1.5 0 001.5-1.5V5.324l-9.496 5.54a1 1 0 01-1.008 0L0 5.324z" fill="#5C5F62"/><path d="M19.443 3.334A1.494 1.494 0 0018.5 3h-17c-.357 0-.686.125-.943.334L10 8.842l9.443-5.508z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `email_newsletter` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.email_newsletter />
  <PolarisIcons.email_newsletter major />
  <PolarisIcons.email_newsletter class="w-4 h-4" color="highlight" />
  <PolarisIcons.email_newsletter backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def email_newsletter(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7 4h6v2H7V4zM11 8H7v2h4V8z" fill="#5C5F62"/><path fill-rule="evenodd" d="M3 10V1.5A1.5 1.5 0 014.5 0h11A1.5 1.5 0 0117 1.5V10h2v7.5a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5V10h2zm2 2V2h10v10l-5 2.771L5 12z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `embed` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.embed minor />
  <PolarisIcons.embed minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.embed minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def embed(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M11.98 5.196a1 1 0 00-1.96-.392l-2 10a1 1 0 001.96.392l2-10zM6.8 6.4a1 1 0 01-.2 1.4L3.667 10 6.6 12.2a1 1 0 01-1.2 1.6l-4-3a1 1 0 010-1.6l4-3a1 1 0 011.4.2zm6.4 7.2a1 1 0 01.2-1.4l2.933-2.2L13.4 7.8a1 1 0 111.2-1.6l4 3a1 1 0 010 1.6l-4 3a1 1 0 01-1.4-.2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `enable_selection` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.enable_selection minor />
  <PolarisIcons.enable_selection minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.enable_selection minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def enable_selection(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M4.5 3A1.5 1.5 0 003 4.5v11A1.5 1.5 0 004.5 17h11a1.5 1.5 0 001.5-1.5v-11A1.5 1.5 0 0015.5 3h-11zm9.207 5.707a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `envelope` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.envelope />
  <PolarisIcons.envelope major />
  <PolarisIcons.envelope class="w-4 h-4" color="highlight" />
  <PolarisIcons.envelope backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def envelope(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 16.5v-13C0 2.7.7 2 1.5 2h17c.8 0 1.5.7 1.5 1.5v13c0 .8-.7 1.5-1.5 1.5h-17C.7 18 0 17.3 0 16.5zm18-1.2l-3-1.8V6.6l3-1.867V15.3zm-2.667.7L13.5 14.9c-.3-.2-.5-.5-.5-.9V6c0-.4.2-.7.5-.9L15.333 4H2v12h13.333zM4 8h4v2H4V8zm6 4H4v2h6v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `exchange` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.exchange />
  <PolarisIcons.exchange major />
  <PolarisIcons.exchange class="w-4 h-4" color="highlight" />
  <PolarisIcons.exchange backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def exchange(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.986 12.166a3 3 0 11-1.973 0A1.003 1.003 0 0116 12V9.999A3.999 3.999 0 0012.001 6h-.587l1.293 1.293a1 1 0 11-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 011.414 1.414L11.414 4h.587A5.999 5.999 0 0118 9.999V12c0 .057-.005.112-.014.166zm-14-4.332c.01.054.014.11.014.166v2.001A4 4 0 007.999 14h.587l-1.293-1.293a1 1 0 011.414-1.414l3 3a1 1 0 010 1.414l-3 3a1 1 0 11-1.414-1.414L8.586 16h-.587A6 6 0 012 10.001V8c0-.057.005-.112.014-.166a3 3 0 111.972 0zM4 5a1 1 0 10-2 0 1 1 0 002 0zm14 10a1 1 0 10-2.001.001A1 1 0 0018 15z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `existing_inventory` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.existing_inventory />
  <PolarisIcons.existing_inventory major />
  <PolarisIcons.existing_inventory class="w-4 h-4" color="highlight" />
  <PolarisIcons.existing_inventory backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def existing_inventory(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M20 9c0 .55-.45 1-1 1h-2v2c0 .55-.45 1-1 1s-1-.45-1-1v-2h-2c-.55 0-1-.45-1-1s.45-1 1-1h2V6c0-.55.45-1 1-1s1 .45 1 1v2h2c.55 0 1 .45 1 1zM4 8h3V3H4v5zm-2 9h5v-7H2v7zm14-2c-.55 0-1 .45-1 1v1H9V6h3c.55 0 1-.45 1-1s-.45-1-1-1H9V2c0-.55-.45-1-1-1H3c-.55 0-1 .45-1 1v6H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h15c.55 0 1-.45 1-1v-2c0-.55-.45-1-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `exit` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.exit />
  <PolarisIcons.exit major />
  <PolarisIcons.exit class="w-4 h-4" color="highlight" />
  <PolarisIcons.exit backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def exit(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7.703 13.707a.997.997 0 000-1.414L6.409 11h6.589a1 1 0 100-2H6.409l1.294-1.293a1 1 0 10-1.415-1.414l-3.001 3a.994.994 0 00-.198.298c-.013.027-.021.054-.03.082a.944.944 0 00-.054.269l-.001.027a.937.937 0 00.062.398l.003.012v.004c.048.112.117.208.197.294l.01.015.01.015 3.002 3a1 1 0 001.415 0z" fill="#5C5F62"/><path d="M2 16.5A1.5 1.5 0 003.5 18h13a1.5 1.5 0 001.5-1.5v-13A1.5 1.5 0 0016.5 2h-13A1.5 1.5 0 002 3.5V5a1 1 0 102 0V4h12v12H4v-1a1 1 0 10-2 0v1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `export` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.export minor />
  <PolarisIcons.export minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.export minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def export(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10.707 2.293a.999.999 0 00-1.414 0l-3 3a.999.999 0 101.414 1.414L9 5.414V13a1 1 0 102 0V5.414l1.293 1.293a.999.999 0 101.414-1.414l-3-3zM3 16a1 1 0 100 2h14a1 1 0 100-2H3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `external` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.external minor />
  <PolarisIcons.external minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.external minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def external(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M11 4a1 1 0 011-1h4a1 1 0 011 1v4a1 1 0 11-2 0V6.414l-5.293 5.293a1 1 0 01-1.414-1.414L13.586 5H12a1 1 0 01-1-1zM3 6.5A1.5 1.5 0 014.5 5H8a1 1 0 010 2H5v8h8v-3a1 1 0 112 0v3.5a1.5 1.5 0 01-1.5 1.5h-9A1.5 1.5 0 013 15.5v-9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `external_small` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.external_small minor />
  <PolarisIcons.external_small minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.external_small minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def external_small(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill="#5C5F62" d="M14 13v1a1 1 0 01-1 1H6c-.575 0-1-.484-1-1V7a1 1 0 011-1h1c1.037 0 1.04 1.5 0 1.5-.178.005-.353 0-.5 0v6h6V13c0-1 1.5-1 1.5 0zm-3.75-7.25A.75.75 0 0111 5h4v4a.75.75 0 01-1.5 0V7.56l-3.22 3.22a.75.75 0 11-1.06-1.06l3.22-3.22H11a.75.75 0 01-.75-.75z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `eye_dropper` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.eye_dropper minor />
  <PolarisIcons.eye_dropper minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.eye_dropper minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def eye_dropper(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="m9.586 6.172-.879-.88a1 1 0 1 0-1.414 1.415l.879.879-5.293 5.293A3 3 0 1 0 7.12 17.12l5.293-5.293.879.88a1 1 0 0 0 1.414-1.415l-.879-.879 3.293-3.293A3 3 0 1 0 12.88 2.88L9.586 6.172Zm0 2.828L11 10.414l-5.293 5.293a1 1 0 0 1-1.414-1.414L9.586 9Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `favicon` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.favicon />
  <PolarisIcons.favicon major />
  <PolarisIcons.favicon class="w-4 h-4" color="highlight" />
  <PolarisIcons.favicon backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def favicon(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.71.29C17.52.11 17.27 0 17 0H3c-.27 0-.52.11-.71.29C2.11.48 2 .73 2 1v10c0 .27.11.52.29.71.19.18.44.29.71.29h14c.27 0 .52-.11.71-.29.18-.19.29-.44.29-.71V1c0-.27-.11-.52-.29-.71zM16 7l-2.41-1.832a.992.992 0 00-1.15.03L9 8 6.48 6.168c-.3-.2-.68-.22-1-.06L4 7V2h12v5zM9 16c.27 0 .52-.11.71-.29.18-.19.29-.44.29-.71 0-.27-.11-.52-.29-.71-.19-.18-.44-.29-.71-.29-1.65 0-3 1.35-3 3s1.35 3 3 3c.27 0 .52-.11.71-.29.18-.19.29-.44.29-.71 0-.27-.11-.52-.29-.71-.19-.18-.44-.29-.71-.29a.982.982 0 01-.68-.31.976.976 0 01-.28-.69c0-.26.1-.51.28-.69.18-.19.42-.3.68-.31zM15 14c-1.65 0-3 1.35-3 3s1.35 3 3 3 3-1.35 3-3-1.35-3-3-3zm.68 3.69c-.18.19-.42.3-.68.31a.982.982 0 01-.68-.31.976.976 0 01-.28-.69c0-.26.1-.51.28-.69.18-.19.42-.3.68-.31.26.01.5.12.68.31.18.18.28.43.28.69 0 .26-.1.51-.28.69zM3 14c-.27 0-.52.11-.71.29-.18.19-.29.44-.29.71v4c0 .27.11.52.29.71.19.18.44.29.71.29.27 0 .52-.11.71-.29.18-.19.29-.44.29-.71v-4c0-.27-.11-.52-.29-.71-.19-.18-.44-.29-.71-.29z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `favorite` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.favorite />
  <PolarisIcons.favorite major />
  <PolarisIcons.favorite class="w-4 h-4" color="highlight" />
  <PolarisIcons.favorite backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def favorite(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M5 12L1.376 9c-.684-.547-.384-1.647.484-1.771L7 7l2.195-5.503a.9.9 0 011.61 0L13 7l5.14.229c.868.124 1.168 1.224.484 1.771L15 12l.989 5.857a1 1 0 01-1.437 1.036L10 16l-4.552 2.892a1 1 0 01-1.437-1.036L5 12z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `featured_collection` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.featured_collection />
  <PolarisIcons.featured_collection major />
  <PolarisIcons.featured_collection class="w-4 h-4" color="highlight" />
  <PolarisIcons.featured_collection backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def featured_collection(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M8 .439a1.48 1.48 0 00-2.103 0l-1.04 1.18-3.48 4a1.497 1.497 0 00-.377 1v9.88c0 .398.157.779.436 1.06.278.282.657.44 1.051.44h2.479v-9.43a3.568 3.568 0 01.872-2.33l3.638-4.12L8 .439zm10.618 7.13l-4.579-5.13a1.51 1.51 0 00-2.129 0l-1.004 1.18-3.524 4a1.486 1.486 0 00-.382 1v9.88c0 .389.152.763.423 1.043.272.28.642.444 1.033.457h9.038c.4 0 .782-.158 1.065-.44.282-.281.44-.663.44-1.06v-9.93a1.487 1.487 0 00-.38-1zM11.402 9c-1 0-1.9.9-1.9 2 0 2.2 1.3 3.9 3.5 5 2.2-1.1 3.5-2.8 3.5-4.9v-.2c0-1-.9-1.9-1.9-1.9-1 0-1.6 1.167-1.6 1.167S12.402 9 11.402 9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `featured_content` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.featured_content />
  <PolarisIcons.featured_content major />
  <PolarisIcons.featured_content class="w-4 h-4" color="highlight" />
  <PolarisIcons.featured_content backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def featured_content(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M16.56 4.56L12.44.44A1.5 1.5 0 0011.38 0H4.5A1.5 1.5 0 003 1.5v17A1.5 1.5 0 004.5 20H15a2 2 0 002-2V5.62a1.5 1.5 0 00-.44-1.06zM8.4 7c-1 0-1.9.9-1.9 2 0 2.2 1.3 3.9 3.5 5 2.2-1.1 3.5-2.8 3.5-4.9v-.2c0-1-.9-1.9-1.9-1.9-1 0-1.6 1.167-1.6 1.167S9.4 7 8.4 7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `filter` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.filter />
  <PolarisIcons.filter minor />
  <PolarisIcons.filter class="w-4 h-4" color="highlight" />
  <PolarisIcons.filter minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def filter(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M0 5a1 1 0 011-1h18a1 1 0 110 2H1a1 1 0 01-1-1zm3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm5 4a1 1 0 100 2h4a1 1 0 100-2H8z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M2 6a1 1 0 011-1h14a1 1 0 110 2H3a1 1 0 01-1-1zm3 4a1 1 0 011-1h8a1 1 0 110 2H6a1 1 0 01-1-1zm3 3a1 1 0 100 2h4a1 1 0 100-2H8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `finances` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.finances />
  <PolarisIcons.finances minor />
  <PolarisIcons.finances class="w-4 h-4" color="highlight" />
  <PolarisIcons.finances minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def finances(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M5 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H5Zm7 6.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3Z" fill="#5C5F62"/><path fill-rule="evenodd" d="M16 15v1a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1v7a1 1 0 0 0 1 1h13Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M9.44529 3.16795C9.78119 2.94402 10.2188 2.94402 10.5547 3.16795L16.5547 7.16795C16.804 7.33413 16.9656 7.60333 16.9951 7.90146C17.0246 8.1996 16.9189 8.49526 16.7071 8.70711L16 9.41421V14.0004C16.5845 14.2223 17 14.7876 17 15.45C17 16.306 16.306 17 15.45 17H4.54999C3.69395 17 2.99999 16.306 2.99999 15.45C2.99999 14.7876 3.41545 14.2223 3.99999 14.0004V9.41421L3.29289 8.70711C3.08104 8.49526 2.97534 8.1996 3.00486 7.90146C3.03438 7.60333 3.19602 7.33413 3.44529 7.16795L9.44529 3.16795ZM12 9C12.5523 9 13 9.44772 13 10V13C13 13.5523 12.5523 14 12 14C11.4477 14 11 13.5523 11 13V10C11 9.44772 11.4477 9 12 9ZM8.99999 10C8.99999 9.44772 8.55227 9 7.99999 9C7.4477 9 6.99999 9.44772 6.99999 10V13C6.99999 13.5523 7.4477 14 7.99999 14C8.55227 14 8.99999 13.5523 8.99999 13V10Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `first_order` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.first_order />
  <PolarisIcons.first_order major />
  <PolarisIcons.first_order class="w-4 h-4" color="highlight" />
  <PolarisIcons.first_order backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def first_order(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9.69 5.772l-.243.123a1 1 0 11-.895-1.79l2-1a.998.998 0 011.434 1.06l-1 6a1 1 0 11-1.973-.33l.677-4.063zm-5.073-.848a.997.997 0 01-.324-.217l-1-1a1 1 0 011.414-1.414l1 1a.999.999 0 01-1.09 1.631zm10.766 0a.997.997 0 01-.94-.092 1 1 0 01-.15-1.54l1-1a1 1 0 111.414 1.415l-1 1a.996.996 0 01-.324.217zm-.09 3.783A1 1 0 0116 7h2a1 1 0 110 2h-2a1 1 0 01-.707-.293zM4 9H2a1 1 0 010-2h2a1 1 0 010 2zm-3 8.5V12h2v2h3.5c.775 0 1.388.662 1.926 1.244l.11.12c.366.391.886.636 1.464.636s1.098-.245 1.463-.637l.11-.119h.001C12.112 14.662 12.725 14 13.5 14H17v-2h2v5.5a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `first_visit` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.first_visit />
  <PolarisIcons.first_visit major />
  <PolarisIcons.first_visit class="w-4 h-4" color="highlight" />
  <PolarisIcons.first_visit backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def first_visit(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19.962 9.726C19.939 9.648 17.666 2 10 2S.061 9.648.038 9.726a1 1 0 000 .548C.061 10.352 2.334 18 10 18s9.939-7.648 9.962-7.726a.999.999 0 000-.548zm-8.876-3.723a1 1 0 01.901 1.161l-1 6a1 1 0 11-1.973-.328l.677-4.064-.243.123a1 1 0 01-.895-1.79l2-1a1 1 0 01.533-.102z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `flag` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.flag />
  <PolarisIcons.flag major />
  <PolarisIcons.flag class="w-4 h-4" color="highlight" />
  <PolarisIcons.flag backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def flag(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3.249 2.001h13.868a.5.5 0 01.428.758L15 7l3.35 4.188a.5.5 0 01-.39.812l-12.49.001 1.507 6.782a1 1 0 11-1.953.434l-4-18A1 1 0 012.977.783l.272 1.218z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `flip_camera` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.flip_camera />
  <PolarisIcons.flip_camera major />
  <PolarisIcons.flip_camera class="w-4 h-4" color="highlight" />
  <PolarisIcons.flip_camera backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def flip_camera(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M7.059 1a1.5 1.5 0 00-1.32.786l-.54 1c-.039.07-.07.142-.096.214H1.5A1.5 1.5 0 000 4.5v11A1.5 1.5 0 001.5 17h17a1.5 1.5 0 001.5-1.5v-11A1.5 1.5 0 0018.5 3h-3.621a1.546 1.546 0 00-.1-.223l-.55-1A1.5 1.5 0 0012.914 1H7.06zm4.692 14.08c-.63.278-1.311.42-2 .42A5.016 5.016 0 014.776 11H3.501a.5.5 0 01-.405-.795l2.27-3.145a.5.5 0 01.81 0l2.275 3.145a.5.5 0 01-.4.8h-1.25a3.014 3.014 0 002.95 2.495c.32 0 .637-.05.94-.15l1.33 1.6c-.09.05-.18.09-.27.13zm2.884-2.14L16.9 9.8a.5.5 0 00-.405-.8H15.22a5.016 5.016 0 00-4.975-4.5 4.941 4.941 0 00-2.27.55l1.33 1.6c.303-.1.62-.15.94-.15a3.014 3.014 0 012.95 2.505h-1.25a.5.5 0 00-.4.795l2.28 3.14a.5.5 0 00.81 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `folder` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.folder />
  <PolarisIcons.folder major />
  <PolarisIcons.folder class="w-4 h-4" color="highlight" />
  <PolarisIcons.folder backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def folder(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 17.5v-13A1.5 1.5 0 0017.5 3h-6.879a1.5 1.5 0 01-1.06-.44L8.439 1.44A1.5 1.5 0 007.38 1H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `folder_down` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.folder_down />
  <PolarisIcons.folder_down major />
  <PolarisIcons.folder_down class="w-4 h-4" color="highlight" />
  <PolarisIcons.folder_down backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def folder_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M17.5 19a1.5 1.5 0 001.5-1.5v-13A1.5 1.5 0 0017.5 3h-6.879c-.397 0-.779-.158-1.06-.44L8.44 1.439A1.503 1.503 0 007.379 1H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15zM9 11.586l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a.997.997 0 001.414 0l3-3a1 1 0 00-1.414-1.414L11 11.586V8a1 1 0 00-2 0v3.586z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `folder_minus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.folder_minus />
  <PolarisIcons.folder_minus major />
  <PolarisIcons.folder_minus class="w-4 h-4" color="highlight" />
  <PolarisIcons.folder_minus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def folder_minus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 3A1.5 1.5 0 0119 4.5v13a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5v-15A1.5 1.5 0 012.5 1h4.879a1.5 1.5 0 011.06.44l1.122 1.12a1.5 1.5 0 001.06.44H17.5zM7 10a1 1 0 100 2h6a1 1 0 100-2H7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `folder_plus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.folder_plus />
  <PolarisIcons.folder_plus major />
  <PolarisIcons.folder_plus class="w-4 h-4" color="highlight" />
  <PolarisIcons.folder_plus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def folder_plus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M17.5 3A1.5 1.5 0 0119 4.5v13a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5v-15A1.5 1.5 0 012.5 1h4.879a1.5 1.5 0 011.06.44l1.122 1.12a1.5 1.5 0 001.06.44H17.5zM9 8a1 1 0 012 0v2h2a1 1 0 110 2h-2v2a1 1 0 11-2 0v-2H7a1 1 0 110-2h2V8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `folder_up` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.folder_up />
  <PolarisIcons.folder_up major />
  <PolarisIcons.folder_up class="w-4 h-4" color="highlight" />
  <PolarisIcons.folder_up backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def folder_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M19 17.5v-13A1.5 1.5 0 0017.5 3h-6.879c-.397 0-.779-.158-1.06-.44L8.44 1.439A1.503 1.503 0 007.379 1H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5zm-8-7.085l1.293 1.293a1 1 0 001.414-1.414l-3-3a.997.997 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L9 10.415v3.586a1 1 0 102 0v-3.586z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `follow_up_email` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.follow_up_email />
  <PolarisIcons.follow_up_email major />
  <PolarisIcons.follow_up_email class="w-4 h-4" color="highlight" />
  <PolarisIcons.follow_up_email backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def follow_up_email(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M19.707 15.293l-3-3a1.001 1.001 0 00-1.414 1.414L16.586 15H13a1 1 0 000 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z"/><path fill="#5C5F62" d="M18.5 1c.357 0 .686.125.943.334L10 6.842.557 1.334C.814 1.125 1.143 1 1.5 1h17zM0 13.5V3.324l9.496 5.54a1 1 0 001.008 0L20 3.324V10h-4a6.002 6.002 0 00-5.917 5H1.5A1.5 1.5 0 010 13.5z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `food` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.food />
  <PolarisIcons.food major />
  <PolarisIcons.food class="w-4 h-4" color="highlight" />
  <PolarisIcons.food backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def food(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M17 4h-.22L15.97.758A.999.999 0 0015 0H5a.998.998 0 00-.97.758L3.22 4H3a1 1 0 00-1 1v4a1 1 0 001 1h.095l.91 9.1A1 1 0 005 20h10c.514 0 .945-.39.996-.9l.91-9.1H17a1 1 0 001-1V5a1 1 0 00-1-1zM5.782 2h8.437l.5 2H5.282l.5-2zM4 8h12V6H4v2zm6 8a2 2 0 100-4 2 2 0 000 4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `footer` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.footer />
  <PolarisIcons.footer major />
  <PolarisIcons.footer class="w-4 h-4" color="highlight" />
  <PolarisIcons.footer backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def footer(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1 2a1 1 0 011-1h2v2H3v1H1V2zM18 1a1 1 0 011 1v2h-2V3h-1V1h2zM19 17.5V11H1v6.5A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5zM19 6v3h-2V6h2zM3 9V6H1v3h2zM14 1v2h-3V1h3zM9 3V1H6v2h3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `forms` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.forms />
  <PolarisIcons.forms major />
  <PolarisIcons.forms class="w-4 h-4" color="highlight" />
  <PolarisIcons.forms backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def forms(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M18 14V6h-2V4h2.5c.8 0 1.5.7 1.5 1.5v9c0 .8-.7 1.5-1.5 1.5H16v-2h2z" fill="#5C5F62"/><path d="M17.7 18.3c-.2-.2-.4-.3-.7-.3h-2c-.3 0-.5-.1-.7-.3-.2-.2-.3-.4-.3-.7V3c0-.3.1-.5.3-.7.2-.2.4-.3.7-.3h2c.3 0 .5-.1.7-.3.2-.2.3-.4.3-.7 0-.3-.1-.5-.3-.7-.2-.2-.4-.3-.7-.3h-2c-.7 0-1.5.3-2 .8-.5-.5-1.2-.8-2-.8H9c-.3 0-.5.1-.7.3-.2.2-.3.4-.3.7 0 .3.1.5.3.7.2.2.4.3.7.3h2c.3 0 .5.1.7.3.2.2.3.4.3.7v14c0 .3-.1.5-.3.7-.2.2-.4.3-.7.3H9c-.3 0-.5.1-.7.3-.2.2-.3.4-.3.7 0 .3.1.5.3.7.2.2.4.3.7.3h2c.7 0 1.5-.3 2-.8.5.5 1.2.8 2 .8h2c.3 0 .5-.1.7-.3.2-.2.3-.4.3-.7 0-.3-.1-.5-.3-.7zM2 14V6h8V4H1.5C.7 4 0 4.7 0 5.5v9c0 .8.7 1.5 1.5 1.5H10v-2H2zm4-4a1 1 0 11-2 0 1 1 0 012 0zm3 1a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `fraud_protect` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.fraud_protect />
  <PolarisIcons.fraud_protect minor />
  <PolarisIcons.fraud_protect class="w-4 h-4" color="highlight" />
  <PolarisIcons.fraud_protect minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def fraud_protect(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M9.131.233c-2.37 1.383-5.37 2.33-7.634 2.646-.822.115-1.495.79-1.494 1.62l.002.497c-.03 6.043.477 11.332 9.462 14.903a1.45 1.45 0 001.062 0C19.52 16.328 20.032 11.04 20 4.996v-.501c0-.828-.673-1.51-1.491-1.638-2.149-.337-5.282-1.274-7.65-2.628A1.733 1.733 0 009.13.233zm4.577 8.478a1 1 0 00-1.414-1.415L9.001 10.59 7.708 9.297a1 1 0 10-1.414 1.414l2 2.001a1 1 0 001.414 0l4-4.001z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M16.822 12.683c-1.349 2.513-3.885 4.485-6.818 5.317-2.935-.832-5.471-2.804-6.82-5.317C1.764 10.038 2 7 3 4c1.361-.089 3.983-.573 7.004-2 3.02 1.427 5.635 1.911 6.996 2 1 3 1 6-.178 8.683zm-2.615-5.89a1 1 0 010 1.414l-4.5 4.5a1 1 0 01-1.414 0l-2.5-2.5a1 1 0 111.414-1.414L9 10.586l3.793-3.793a1 1 0 011.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `fraud_protect_pending` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.fraud_protect_pending />
  <PolarisIcons.fraud_protect_pending minor />
  <PolarisIcons.fraud_protect_pending class="w-4 h-4" color="highlight" />
  <PolarisIcons.fraud_protect_pending minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def fraud_protect_pending(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.49335 2.87876C3.75731 2.56215 6.75711 1.61569 9.12801 0.232947C9.65955 -0.0770602 10.322 -0.0768069 10.8561 0.228675C13.2245 1.58316 16.3581 2.51974 18.5061 2.85685C19.3242 2.98523 19.997 3.66653 19.9975 4.49494L19.9977 4.99602C20.0282 11.0387 19.5177 16.3279 10.5253 19.8994C10.1875 20.0336 9.80128 20.0335 9.46347 19.8993C0.478494 16.3278 -0.0292758 11.0386 0.00115097 4.99602L1.6541e-05 4.49924C-0.00187902 3.66915 0.67158 2.99369 1.49335 2.87876ZM10.7071 9.29289C10.5196 9.10535 10.2652 9 10 9C9.73478 9 9.48043 9.10535 9.29289 9.29289C9.10535 9.48043 9 9.73478 9 10C9 10.2652 9.10535 10.5196 9.29289 10.7071C9.48043 10.8946 9.73478 11 10 11C10.2652 11 10.5196 10.8946 10.7071 10.7071C10.8946 10.5196 11 10.2652 11 10C11 9.73478 10.8946 9.48043 10.7071 9.29289ZM6.7071 9.29289C6.51957 9.10535 6.26521 9 6 9C5.73478 9 5.48043 9.10535 5.29289 9.29289C5.10535 9.48043 5 9.73478 5 10C5 10.2652 5.10535 10.5196 5.29289 10.7071C5.48043 10.8946 5.73478 11 6 11C6.26521 11 6.51957 10.8946 6.7071 10.7071C6.89464 10.5196 7 10.2652 7 10C7 9.73478 6.89464 9.48043 6.7071 9.29289ZM14.7071 9.29289C14.5196 9.10535 14.2652 9 14 9C13.7348 9 13.4804 9.10535 13.2929 9.29289C13.1054 9.48043 13 9.73478 13 10C13 10.2652 13.1054 10.5196 13.2929 10.7071C13.4804 10.8946 13.7348 11 14 11C14.2652 11 14.5196 10.8946 14.7071 10.7071C14.8946 10.5196 15 10.2652 15 10C15 9.73478 14.8946 9.48043 14.7071 9.29289Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M16.822 12.683c-1.349 2.513-3.885 4.485-6.818 5.317-2.935-.832-5.471-2.804-6.82-5.317-1.344-2.502-1.542-5.536-.586-8.808C3.96 3.786 6.983 3.427 10.004 2c3.02 1.427 6.043 1.786 7.404 1.875.958 3.272.758 6.306-.586 8.808zM13 10a1 1 0 102 0 1 1 0 00-2 0zm-4 0a1 1 0 102 0 1 1 0 00-2 0zm-4 0a1 1 0 102 0 1 1 0 00-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `fraud_protect_unprotected` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.fraud_protect_unprotected />
  <PolarisIcons.fraud_protect_unprotected minor />
  <PolarisIcons.fraud_protect_unprotected class="w-4 h-4" color="highlight" />
  <PolarisIcons.fraud_protect_unprotected minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def fraud_protect_unprotected(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.49335 2.87876C3.75731 2.56215 6.75711 1.61569 9.12801 0.232947C9.65955 -0.0770602 10.322 -0.0768069 10.8561 0.228675C13.2245 1.58316 16.3581 2.51974 18.5061 2.85685C19.3242 2.98523 19.997 3.66653 19.9975 4.49494L19.9977 4.99602C20.0282 11.0387 19.5177 16.3279 10.5253 19.8994C10.1875 20.0336 9.80128 20.0335 9.46347 19.8993C0.478494 16.3278 -0.0292758 11.0386 0.00115097 4.99602L1.6541e-05 4.49924C-0.00187902 3.66915 0.67158 2.99369 1.49335 2.87876ZM9.29289 5.29289C9.10536 5.48043 9 5.73478 9 6V10C9 10.2652 9.10536 10.5196 9.29289 10.7071C9.48043 10.8946 9.73478 11 10 11C10.2652 11 10.5196 10.8946 10.7071 10.7071C10.8946 10.5196 11 10.2652 11 10V6C11 5.73478 10.8946 5.48043 10.7071 5.29289C10.5196 5.10536 10.2652 5 10 5C9.73478 5 9.48043 5.10536 9.29289 5.29289ZM9.29289 13.2929C9.10536 13.4804 9 13.7348 9 14C9 14.2652 9.10536 14.5196 9.29289 14.7071C9.48043 14.8946 9.73478 15 10 15C10.2652 15 10.5196 14.8946 10.7071 14.7071C10.8946 14.5196 11 14.2652 11 14C11 13.7348 10.8946 13.4804 10.7071 13.2929C10.5196 13.1054 10.2652 13 10 13C9.73478 13 9.48043 13.1054 9.29289 13.2929Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M16.822 12.683c-1.349 2.513-3.885 4.485-6.818 5.317-2.935-.832-5.471-2.804-6.82-5.317-1.344-2.502-1.542-5.536-.586-8.808C3.96 3.786 6.983 3.427 10.004 2c3.02 1.427 6.043 1.786 7.404 1.875.958 3.272.758 6.306-.586 8.808zM9 9a1 1 0 102 0V7a1 1 0 10-2 0v2zm0 4a1 1 0 102 0 1 1 0 00-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `fulfillment_fulfilled` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.fulfillment_fulfilled />
  <PolarisIcons.fulfillment_fulfilled major />
  <PolarisIcons.fulfillment_fulfilled class="w-4 h-4" color="highlight" />
  <PolarisIcons.fulfillment_fulfilled backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def fulfillment_fulfilled(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11 4H19L17.1547 1.42858C16.9634 1.16232 16.6093 0.998786 16.2267 1.00001H11V4ZM9 1.00001H3.77333C3.39074 0.998786 3.03663 1.16232 2.84533 1.42858L1 4H9V1.00001ZM1 6V16.5C1 17.3284 1.67156 18 2.49997 18L8.5 18C9.5 18 10 17 10 17C10.0005 16.4658 10.0032 15.9327 10.0097 15.5C10.0097 11.9159 12.9234 9 16.5048 9H18C18 9 19 9 19 8V6H1ZM19.9983 12.7533C20.0099 12.948 19.9622 13.1412 19.8641 13.2973L16.1262 17.7568C15.8544 18.0811 15.4466 18.0811 15.1748 17.7568L13.1359 15.3243C13.0378 15.1682 12.9901 14.975 13.0017 14.7804C13.0133 14.5857 13.0834 14.4025 13.1991 14.2645C13.3147 14.1265 13.4683 14.0429 13.6314 14.0291C13.7946 14.0152 13.9565 14.0721 14.0874 14.1892L15.6505 16.0541L18.9126 12.1622C19.0435 12.0451 19.2054 11.9882 19.3686 12.002C19.5317 12.0159 19.6853 12.0995 19.8009 12.2375C19.9166 12.3755 19.9867 12.5587 19.9983 12.7533Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `fulfillment_on_hold` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.fulfillment_on_hold />
  <PolarisIcons.fulfillment_on_hold major />
  <PolarisIcons.fulfillment_on_hold class="w-4 h-4" color="highlight" />
  <PolarisIcons.fulfillment_on_hold backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def fulfillment_on_hold(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M19 4H11V1.00001H16.2267C16.6093 0.998786 16.9634 1.16232 17.1547 1.42858L19 4ZM3.77333 1.00001H9V4H1L2.84533 1.42858C3.03663 1.16232 3.39074 0.998786 3.77333 1.00001ZM1 16.5V6H19V8C19 9 18 9 18 9H16.5048C12.9234 9 10.0097 11.9159 10.0097 15.5C10.0032 15.9327 10.0005 16.4658 10 17C10 17 9.5 18 8.5 18L2.49997 18C1.67156 18 1 17.3284 1 16.5ZM14.8333 12C14.3731 12 14 12.3731 14 12.8333V17.8333C14 18.2936 14.3731 18.6667 14.8333 18.6667C15.2936 18.6667 15.6667 18.2936 15.6667 17.8333V12.8333C15.6667 12.3731 15.2936 12 14.8333 12ZM17.3333 12.8333C17.3333 12.3731 17.7064 12 18.1667 12C18.6269 12 19 12.3731 19 12.8333V17.8333C19 18.2936 18.6269 18.6667 18.1667 18.6667C17.7064 18.6667 17.3333 18.2936 17.3333 17.8333V12.8333Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `games_console` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.games_console />
  <PolarisIcons.games_console major />
  <PolarisIcons.games_console class="w-4 h-4" color="highlight" />
  <PolarisIcons.games_console backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def games_console(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11 2.77355C11 2.34198 11.3442 2 11.77 2H14V0H11.77C10.2358 0 9 1.24119 9 2.77355V5H5.54996C2.97595 5 0.822518 6.95421 0.573424 9.51614L0.0156172 15.2532C-0.179608 17.2611 1.39843 19 3.4158 19C4.97964 19 6.34381 17.9381 6.72756 16.4221L6.801 16.1319C6.9695 15.4663 7.56848 15 8.25514 15H11.9949C12.6816 15 13.2805 15.4663 13.449 16.1319L13.5469 16.5185C13.9163 17.9778 15.2294 19 16.7347 19C18.6763 19 20.1951 17.3268 20.0078 15.3943L19.438 9.51751C19.1896 6.95498 17.0359 5 14.4613 5H11V2.77355ZM5.99995 7C6.55224 7 6.99995 7.44772 6.99995 8V9H7.99995C8.55224 9 8.99995 9.44771 8.99995 10C8.99995 10.5523 8.55224 11 7.99995 11H6.99995V12C6.99995 12.5523 6.55224 13 5.99995 13C5.44767 13 4.99995 12.5523 4.99995 12V11H3.99995C3.44767 11 2.99995 10.5523 2.99995 10C2.99995 9.44772 3.44767 9 3.99995 9H4.99995V8C4.99995 7.44772 5.44767 7 5.99995 7ZM13.5 10C14.3284 10 15 9.32843 15 8.5C15 7.67157 14.3284 7 13.5 7C12.6715 7 12 7.67157 12 8.5C12 9.32843 12.6715 10 13.5 10ZM16.5 14C17.3284 14 18 13.3284 18 12.5C18 11.6716 17.3284 11 16.5 11C15.6715 11 15 11.6716 15 12.5C15 13.3284 15.6715 14 16.5 14Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `gift_card` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.gift_card />
  <PolarisIcons.gift_card minor />
  <PolarisIcons.gift_card class="w-4 h-4" color="highlight" />
  <PolarisIcons.gift_card minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def gift_card(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M5 4.5C5 3.763 5.69 3 6.77 3 7.818 3 9 3.87 9 5.333V6h-.846c-.805 0-1.656-.011-2.306-.25-.302-.112-.498-.253-.621-.413C5.112 5.187 5 4.94 5 4.5zM11.846 6H11v-.667C11 3.87 12.181 3 13.23 3 14.31 3 15 3.763 15 4.5c0 .44-.112.686-.227.837-.123.16-.319.3-.621.412-.65.24-1.5.251-2.306.251zM17 4.5c0 .558-.103 1.06-.306 1.5H18.5A1.5 1.5 0 0120 7.5V10H0V7.5A1.5 1.5 0 011.5 6h1.806A3.547 3.547 0 013 4.5C3 2.47 4.783 1 6.77 1c1.165 0 2.398.546 3.23 1.529C10.832 1.546 12.065 1 13.23 1 15.218 1 17 2.47 17 4.5zM9 20v-8H1v6.5c0 .83.67 1.5 1.5 1.5H9zm2 0v-8h8v6.5c0 .83-.67 1.5-1.5 1.5H11z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M5 5c0 .35.06.687.17 1H4.5A1.5 1.5 0 003 7.5V9h14V7.5a1.5 1.5 0 00-1.34-1.492 3.5 3.5 0 00-6.022-3.523A3 3 0 005 5zm7.5 1A1.5 1.5 0 1011 4.5V6h1.5zM9 5v1H8a1 1 0 111-1z" fill="#5C5F62"/><path d="M4 11h5v6H5.5A1.5 1.5 0 014 15.5V11zM16 11h-5v6h3.5a1.5 1.5 0 001.5-1.5V11z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `globe` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.globe />
  <PolarisIcons.globe minor />
  <PolarisIcons.globe class="w-4 h-4" color="highlight" />
  <PolarisIcons.globe minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def globe(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M3.07 6a8.025 8.025 0 014.262-3.544A12.802 12.802 0 005.595 6H3.07zm-.818 2A8.015 8.015 0 002 10c0 .69.088 1.36.252 2h2.89A13.886 13.886 0 015 10c0-.704.051-1.371.143-2H2.252zm4.916 0C7.06 8.62 7 9.286 7 10c0 .713.061 1.38.168 2h5.664c.107-.62.168-1.287.168-2 0-.714-.061-1.38-.168-2H7.168zm7.69 0c.09.629.142 1.296.142 2s-.051 1.371-.143 2h2.891c.165-.64.252-1.31.252-2s-.087-1.36-.252-2h-2.89zm2.072-2h-2.525a12.805 12.805 0 00-1.737-3.544A8.025 8.025 0 0116.93 6zm-4.638 0H7.708c.324-.865.725-1.596 1.124-2.195.422-.633.842-1.117 1.168-1.452.326.335.746.82 1.168 1.452.4.599.8 1.33 1.124 2.195zm-1.124 10.195c.4-.599.8-1.33 1.124-2.195H7.708c.324.865.725 1.596 1.124 2.195.422.633.842 1.117 1.168 1.452.326-.335.746-.82 1.168-1.452zM3.07 14h2.525a12.802 12.802 0 001.737 3.544A8.025 8.025 0 013.07 14zm9.762 3.305a12.9 12.9 0 01-.164.24A8.025 8.025 0 0016.93 14h-2.525a12.805 12.805 0 01-1.573 3.305zM20 10c0 5.52-4.472 9.994-9.99 10h-.022C4.47 19.994 0 15.519 0 10 0 4.477 4.477 0 10 0s10 4.477 10 10z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M12.347 15.521c.699-1.16 1.39-2.712 1.589-4.521h1.974a6.013 6.013 0 01-3.563 4.521zM4.09 11h1.975c.198 1.809.889 3.361 1.589 4.521A6.017 6.017 0 014.09 11zm3.564-6.521c-.7 1.16-1.391 2.712-1.59 4.521H4.09a6.017 6.017 0 013.564-4.521zM8.077 9c.269-1.916 1.239-3.52 1.925-4.443.687.92 1.655 2.519 1.922 4.443H8.077zm1.92 6.443c-.685-.919-1.653-2.519-1.921-4.443h3.847c-.27 1.916-1.24 3.521-1.925 4.443zM15.91 9h-1.974c-.198-1.809-.89-3.361-1.59-4.521A6.013 6.013 0 0115.91 9zM10 2c-4.411 0-8 3.589-8 8s3.589 8 8 8c4.41 0 8-3.589 8-8s-3.59-8-8-8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `grammar` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.grammar />
  <PolarisIcons.grammar major />
  <PolarisIcons.grammar class="w-4 h-4" color="highlight" />
  <PolarisIcons.grammar backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def grammar(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 2.5A1.5 1.5 0 0017.5 1h-15A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19H9a1 1 0 000-2H3V3h14v8a1 1 0 102 0V7.956 2.5zM14 11H6V9h8v2zm-8 4v-2h4v2H6zM6 5v2h8V5H6zm12.293 9.293L15 17.586l-1.293-1.293a1 1 0 00-1.414 1.414l2 2a.997.997 0 001.414 0l4-4a1 1 0 00-1.414-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `hashtag` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.hashtag />
  <PolarisIcons.hashtag minor />
  <PolarisIcons.hashtag class="w-4 h-4" color="highlight" />
  <PolarisIcons.hashtag minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def hashtag(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M7.992 2.124a1 1 0 10-1.984-.248L5.618 5H2a1 1 0 000 2h3.367l-.75 6H2a1 1 0 100 2h2.367l-.36 2.876a1 1 0 101.985.248L6.382 15h5.985l-.36 2.876a1 1 0 001.985.248l.39-3.124H18a1 1 0 100-2h-3.367l.75-6H18a1 1 0 100-2h-2.367l.36-2.876a1 1 0 10-1.985-.248L13.618 5H7.632l.36-2.876zM12.617 13l.75-6H7.383l-.75 6h5.984z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill="#5C5F62" d="M14.1644 3.01361C14.7092 3.1044 15.0772 3.61963 14.9864 4.1644L14.6805 6H16C16.5523 6 17 6.44772 17 7C17 7.55229 16.5523 8 16 8H14.3471L13.6805 12H16C16.5523 12 17 12.4477 17 13C17 13.5523 16.5523 14 16 14H13.3471L12.9864 16.1644C12.8956 16.7092 12.3804 17.0772 11.8356 16.9864C11.2908 16.8956 10.9228 16.3804 11.0136 15.8356L11.3195 14H7.34713L6.98639 16.1644C6.8956 16.7092 6.38037 17.0772 5.8356 16.9864C5.29083 16.8956 4.92281 16.3804 5.01361 15.8356L5.31954 14H4C3.44772 14 3 13.5523 3 13C3 12.4477 3.44772 12 4 12H5.65287L6.31954 8H4C3.44772 8 3 7.55229 3 7C3 6.44772 3.44772 6 4 6H6.65287L7.01361 3.8356C7.1044 3.29083 7.61963 2.92281 8.1644 3.01361C8.70917 3.1044 9.07719 3.61963 8.98639 4.1644L8.68046 6H12.6529L13.0136 3.8356C13.1044 3.29083 13.6196 2.92281 14.1644 3.01361ZM8.34713 8L7.68046 12H11.6529L12.3195 8H8.34713Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `header` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.header />
  <PolarisIcons.header major />
  <PolarisIcons.header class="w-4 h-4" color="highlight" />
  <PolarisIcons.header backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def header(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1 2.5V9h18V2.5A1.5 1.5 0 0017.5 1h-15A1.5 1.5 0 001 2.5zM2 19a1 1 0 01-1-1v-2h2v1h1v2H2zM19 18a1 1 0 01-1 1h-2v-2h1v-1h2v2zM1 14v-3h2v3H1zM17 11v3h2v-3h-2zM6 17h3v2H6v-2zM14 17h-3v2h3v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `heart` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.heart />
  <PolarisIcons.heart major />
  <PolarisIcons.heart class="w-4 h-4" color="highlight" />
  <PolarisIcons.heart backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def heart(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M6 1a5 5 0 00-5 5v.448c0 5.335 2.955 9.647 8.598 12.457a.902.902 0 00.804 0C16.046 16.095 19 11.783 19 6.448V6a5 5 0 00-9-3 4.992 4.992 0 00-4-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `hide` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.hide minor />
  <PolarisIcons.hide minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.hide minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def hide(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 12a2 2 0 002-2c0-.178-.03-.348-.074-.512l5.781-5.781a.999.999 0 10-1.414-1.414l-2.61 2.61A7.757 7.757 0 0010 4C4.388 4 2.163 9.399 2.071 9.628a1.017 1.017 0 000 .744c.054.133.835 2.011 2.582 3.561l-2.36 2.36a.999.999 0 101.414 1.414l5.781-5.781c.164.043.334.074.512.074zm-4-2a4 4 0 014-4c.742 0 1.432.208 2.025.561l-1.513 1.513A2.004 2.004 0 0010 8a2 2 0 00-2 2c0 .178.031.347.074.511l-1.513 1.514A3.959 3.959 0 016 10zm10.145-3.144l-2.252 2.252c.064.288.106.585.106.893a4 4 0 01-4 4c-.306 0-.602-.042-.89-.108l-1.682 1.68A7.903 7.903 0 0010 16c5.613 0 7.837-5.399 7.928-5.629a1.004 1.004 0 000-.742c-.044-.111-.596-1.437-1.784-2.773z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `hide_keyboard` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.hide_keyboard />
  <PolarisIcons.hide_keyboard major />
  <PolarisIcons.hide_keyboard class="w-4 h-4" color="highlight" />
  <PolarisIcons.hide_keyboard backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def hide_keyboard(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 3.5A1.5 1.5 0 011.5 2h17A1.5 1.5 0 0120 3.5v7a1.5 1.5 0 01-1.5 1.5h-17A1.5 1.5 0 010 10.5v-7zM3 4h2v2H3V4zm1 4v2h2V8H4zm8 2H8V8h4v2zM9 4H7v2h2V4zm4 0h-2v2h2V4zm4 0h-2v2h2V4zm-1 6V8h-2v2h2z" fill="#5C5F62"/><path d="M10 16.586l-2.293-2.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L10 16.586z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `hint` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.hint />
  <PolarisIcons.hint major />
  <PolarisIcons.hint class="w-4 h-4" color="highlight" />
  <PolarisIcons.hint backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def hint(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 0a1 1 0 011 1v1a1 1 0 11-2 0V1a1 1 0 011-1zM12 17v1.5a1.5 1.5 0 01-1.5 1.5h-1A1.5 1.5 0 018 18.5V17h4zM18 9a1 1 0 100 2h1a1 1 0 100-2h-1zM0 10a1 1 0 011-1h1a1 1 0 110 2H1a1 1 0 01-1-1zM4.343 2.929A1 1 0 002.93 4.343l.707.707A1 1 0 105.05 3.636l-.707-.707zM14.95 5.05a1 1 0 010-1.414l.707-.707a1 1 0 111.414 1.414l-.707.707a1 1 0 01-1.414 0zM13.268 11.307C12.65 12.181 12 13.124 12 14.195V15H8v-.805c0-1.07-.65-2.014-1.268-2.888a4 4 0 116.536 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `home` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.home />
  <PolarisIcons.home minor />
  <PolarisIcons.home class="w-4 h-4" color="highlight" />
  <PolarisIcons.home minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def home(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M18 7.261V17.5c0 .841-.672 1.5-1.5 1.5h-2c-.828 0-1.5-.659-1.5-1.5V13H7v4.477C7 18.318 6.328 19 5.5 19h-2c-.828 0-1.5-.682-1.5-1.523V7.261a1.5 1.5 0 01.615-1.21l6.59-4.82a1.481 1.481 0 011.59 0l6.59 4.82A1.5 1.5 0 0118 7.26z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10.555 3.168a1 1 0 0 0-1.11 0L3.891 6.87A2 2 0 0 0 3 8.535V15a2 2 0 0 0 2 2h2a1 1 0 0 0 1-1v-4h4v4a1 1 0 0 0 1 1h2a2 2 0 0 0 2-2V8.535a2 2 0 0 0-.89-1.664l-5.555-3.703Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `horizontal_dots` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.horizontal_dots minor />
  <PolarisIcons.horizontal_dots minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.horizontal_dots minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def horizontal_dots(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M6 10a2 2 0 11-4.001-.001A2 2 0 016 10zm6 0a2 2 0 11-4.001-.001A2 2 0 0112 10zm6 0a2 2 0 11-4.001-.001A2 2 0 0118 10z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `icons` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.icons />
  <PolarisIcons.icons major />
  <PolarisIcons.icons class="w-4 h-4" color="highlight" />
  <PolarisIcons.icons backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def icons(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10.618 18L14 11.236 17.382 18h-6.764zM4 16V9.899A5.006 5.006 0 009.898 4H16v6.764l-1.106-2.211c-.339-.678-1.449-.678-1.789 0L9.382 16H4zm15.894 2.553L18 14.764V3.5A1.5 1.5 0 0016.5 2H8.974C8.06.793 6.627 0 5 0 2.243 0 0 2.243 0 5c0 1.627.793 3.061 2 3.975V16.5A1.5 1.5 0 003.5 18h4.882l-.277.553A1 1 0 009 20h10a.997.997 0 00.894-1.447z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `identity_card` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.identity_card />
  <PolarisIcons.identity_card major />
  <PolarisIcons.identity_card class="w-4 h-4" color="highlight" />
  <PolarisIcons.identity_card backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def identity_card(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.5 3A1.5 1.5 0 000 4.5v11A1.5 1.5 0 001.5 17h17a1.5 1.5 0 001.5-1.5v-11A1.5 1.5 0 0018.5 3h-17zm10.1 3a.8.8 0 000 1.6h5.6a.8.8 0 000-1.6h-5.6zm0 3.2a.8.8 0 000 1.6h5.6a.8.8 0 000-1.6h-5.6zm0 3.2a.8.8 0 000 1.6h4a.8.8 0 000-1.6h-4zM5.5 9.556c.966 0 1.75-.796 1.75-1.778S6.466 6 5.5 6s-1.75.796-1.75 1.778.784 1.778 1.75 1.778zM2 12.666C2 13.404 2.588 14 3.313 14h4.374C8.412 14 9 13.403 9 12.667c0-.737-.656-2.223-3.5-2.223S2 11.93 2 12.667z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `illustration` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.illustration />
  <PolarisIcons.illustration major />
  <PolarisIcons.illustration class="w-4 h-4" color="highlight" />
  <PolarisIcons.illustration backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def illustration(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19.685 1.46c.1-.099.2-.198.2-.298.184-.276.113-.551.023-.905l-.024-.092c-.3-.2-.6-.2-.899-.1-.05.05-.1.075-.15.1-.05.025-.1.05-.15.1L12.19 4.152c-2.598 1.495-4.596 3.688-5.995 6.28 1.499.598 2.798 1.893 3.298 3.488a16.485 16.485 0 006.295-5.98l3.897-6.48zM3.997 20c2.198 0 3.997-1.794 3.997-3.987s-1.799-3.987-3.997-3.987S0 13.82 0 16.013V20h3.997z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `image` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.image />
  <PolarisIcons.image major />
  <PolarisIcons.image class="w-4 h-4" color="highlight" />
  <PolarisIcons.image backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def image(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2.5 1A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1h-15zm5 3.5c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2zM16.499 17H3.497c-.41 0-.64-.46-.4-.79l3.553-4.051c.19-.21.52-.21.72-.01L9 14l3.06-4.781a.5.5 0 01.84.02l4.039 7.011c.18.34-.06.75-.44.75z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `image_alt` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.image_alt />
  <PolarisIcons.image_alt minor />
  <PolarisIcons.image_alt class="w-4 h-4" color="highlight" />
  <PolarisIcons.image_alt minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def image_alt(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.895 6.553c-.34-.678-1.45-.678-1.79 0l-3 6a1 1 0 101.79.894L2.619 12h2.764l.723 1.447a1 1 0 001.789-.894l-3-6zM13 12h-2V7a1 1 0 00-2 0v6a1 1 0 001 1h3a1 1 0 000-2zm6-6h-4a1 1 0 100 2h1v5a1 1 0 102 0V8h1a1 1 0 100-2zM3.619 10L4 9.236l.382.764h-.763z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M12 11a1 1 0 110 2h-2a1 1 0 01-1-1V8a1 1 0 112 0v3h1zm5-4a1 1 0 110 2h-1v3a1 1 0 11-2 0V9h-1a1 1 0 110-2h4zm-11.105.553l2 4a1 1 0 01-1.79.895L5.883 12H4.119l-.224.448a1 1 0 01-1.79-.895l2-4c.34-.678 1.45-.678 1.79 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `image_with_text` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.image_with_text />
  <PolarisIcons.image_with_text major />
  <PolarisIcons.image_with_text class="w-4 h-4" color="highlight" />
  <PolarisIcons.image_with_text backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def image_with_text(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.5 2A1.5 1.5 0 000 3.5v5A1.5 1.5 0 001.5 10h6A1.5 1.5 0 009 8.5v-5A1.5 1.5 0 007.5 2h-6zM18 6h-6a1 1 0 110-2h6a1 1 0 110 2zm-6 4h6a1 1 0 100-2h-6a1 1 0 100 2zm6 4H1a1 1 0 010-2h17a1 1 0 010 2zm-3.293 3.707A1 1 0 0114 18H1a1 1 0 010-2h13a1 1 0 01.707 1.707z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `image_with_text_overlay` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.image_with_text_overlay />
  <PolarisIcons.image_with_text_overlay major />
  <PolarisIcons.image_with_text_overlay class="w-4 h-4" color="highlight" />
  <PolarisIcons.image_with_text_overlay backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def image_with_text_overlay(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 1a1 1 0 011-1h7a1 1 0 110 2h-7a1 1 0 01-1-1zm0 4a1 1 0 011-1h6a1 1 0 110 2h-6a1 1 0 01-1-1zM8.083 4A6.002 6.002 0 0014 9h2v9.5a1.5 1.5 0 01-1.5 1.5h-13A1.5 1.5 0 010 18.5v-13A1.5 1.5 0 011.5 4h6.583zM5 11a2 2 0 100-4 2 2 0 000 4zm-2.574 7h11.145c.325 0 .531-.328.377-.6l-3.462-5.609a.446.446 0 00-.72-.016L7.143 15.6l-1.397-1.48a.449.449 0 00-.617.007l-3.045 3.241c-.206.264-.01.632.342.632z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `images` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.images />
  <PolarisIcons.images major />
  <PolarisIcons.images class="w-4 h-4" color="highlight" />
  <PolarisIcons.images backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def images(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 16a1 1 0 001-1V1a1 1 0 00-1-1H5a1 1 0 00-1 1v14a1 1 0 001 1h14zM6.426 14C6.173 14 6 13.809 6 13.604c0-.08.026-.162.083-.236l3.046-3.24a.448.448 0 01.617-.009l1.397 1.481 2.623-3.825a.446.446 0 01.72.016l3.462 5.609c.154.272-.052.6-.377.6H6.426zM11 5a2 2 0 11-4 0 2 2 0 014 0zM0 4.5A1.5 1.5 0 011.5 3H2v15h15v.5a1.5 1.5 0 01-1.5 1.5h-14A1.5 1.5 0 010 18.5v-14z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `import` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.import minor />
  <PolarisIcons.import minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.import minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def import(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M13.707 10.707a.999.999 0 10-1.414-1.414L11 10.586V3a1 1 0 10-2 0v7.586L7.707 9.293a.999.999 0 10-1.414 1.414l3 3a.999.999 0 001.414 0l3-3zM3 16a1 1 0 100 2h14a1 1 0 100-2H3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `import_store` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.import_store />
  <PolarisIcons.import_store major />
  <PolarisIcons.import_store class="w-4 h-4" color="highlight" />
  <PolarisIcons.import_store backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def import_store(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.01414 5.8356L1.62326 2.2534C1.74627 1.53012 2.38499 1 3.13324 1H16.8668C17.615 1 18.2537 1.53012 18.3767 2.2534L18.9859 5.8356C19.0895 6.44513 18.6099 7 17.9794 7H17.0686C16.4888 7 15.9589 6.679 15.6996 6.17082L15.1022 5L14.5048 6.17082C14.2455 6.679 13.7156 7 13.1358 7H11.9664C11.3866 7 10.8567 6.679 10.5974 6.17082L10 5L9.40259 6.17082C9.14331 6.679 8.61339 7 8.03362 7H6.8642C6.28443 7 5.75452 6.679 5.49524 6.17082L4.89782 5L4.30041 6.17082C4.04113 6.679 3.51121 7 2.93144 7H2.02062C1.39006 7 0.910473 6.44513 1.01414 5.8356ZM7.79297 8.79289C7.40244 9.18342 7.40244 9.81658 7.79297 10.2071L8.58569 11L2 11C1.44772 11 1 11.4477 1 12C1 12.5523 1.44772 13 2 13H8.58569L7.79297 13.7929C7.40244 14.1834 7.40244 14.8166 7.79297 15.2071C8.18349 15.5976 8.81651 15.5976 9.20703 15.2071L11.707 12.7071C11.8029 12.6112 11.8753 12.5007 11.9241 12.3828C11.9726 12.2657 11.9996 12.1375 12 12.003V11.997C11.9992 11.7267 11.8913 11.4817 11.7163 11.3021L11.7061 11.2918L9.20703 8.79289C8.81651 8.40237 8.18349 8.40237 7.79297 8.79289ZM18 9H16V17H4V15H2V17.5C2 18.3284 2.67157 19 3.5 19H16.5C17.3284 19 18 18.3284 18 17.5V9Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `inactive_location` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.inactive_location />
  <PolarisIcons.inactive_location minor />
  <PolarisIcons.inactive_location class="w-4 h-4" color="highlight" />
  <PolarisIcons.inactive_location minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def inactive_location(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M16.4773 3.3307L12.8077 7.00026L8.97967 10.8285L4.506 15.302L1.52287 18.2853C1.13235 18.6758 1.13235 19.309 1.52287 19.6995C1.9134 20.0901 2.54656 20.0901 2.93709 19.6995L5.78971 16.8469C6.70187 17.8239 7.80315 18.7901 9.11958 19.73C9.62958 20.09 10.3296 20.09 10.8396 19.73C15.9796 16.06 17.8396 11.99 17.9696 8.44C17.9796 8.29003 17.9796 8.14997 17.9796 8C17.9796 7.00393 17.7978 6.05051 17.4655 5.17112L19.6955 2.96109C20.086 2.57056 20.086 1.9374 19.6955 1.54688C19.3049 1.15635 18.6718 1.15635 18.2812 1.54688L16.4773 3.3307Z" fill="#5C5F62"/>
<path d="M9.97959 0C11.9349 0 13.7257 0.700572 15.1151 1.86452L11.5411 5.43846C11.0748 5.15398 10.5352 5 9.97959 5C9.18359 5 8.42159 5.317 7.85859 5.879C7.29559 6.441 6.97958 7.204 6.97958 8C6.97958 8.55564 7.13356 9.0952 7.41804 9.56154L3.41179 13.5678C2.47336 11.8083 2.04925 10.0694 1.98958 8.44C1.97958 8.29 1.97958 8.15 1.97958 8C1.97958 3.58 5.55959 0 9.97959 0Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M17.7072 3.70715C17.3167 3.31663 16.6835 3.31663 16.293 3.70715L15.0516 4.94856L12.0001 7.99981L10.0001 10L5.83117 14.1688L3.7072 16.2929C3.31668 16.6835 3.31668 17.3166 3.7072 17.7072C4.09772 18.0977 4.73089 18.0977 5.12141 17.7072L7.08626 15.7423C8.34133 17.0924 9.52506 17.8261 9.63012 17.89C9.74012 17.96 9.87012 18 10.0001 18C10.1301 18 10.2601 17.96 10.3701 17.89C10.6001 17.75 16.0001 14.4 16.0001 8.4C16.0001 7.91128 15.9486 7.4352 15.8509 6.97764L17.7072 5.12137C18.0977 4.73084 18.0977 4.09768 17.7072 3.70715Z" fill="#5C5F62"/>
<path d="M10.0001 2C11.4219 2 12.7292 2.5295 13.7581 3.41337L10.937 6.23452C10.6571 6.08494 10.338 6 10.0001 6C8.90012 6 8.00012 6.9 8.00012 8C8.00012 8.33793 8.08506 8.65698 8.23464 8.93687L4.82609 12.3454C4.32821 11.1969 4.00012 9.87894 4.00012 8.4C4.00012 4.87 6.69012 2 10.0001 2Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `incoming` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.incoming />
  <PolarisIcons.incoming major />
  <PolarisIcons.incoming class="w-4 h-4" color="highlight" />
  <PolarisIcons.incoming backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def incoming(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 6A1.5 1.5 0 0119 7.5v10a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5v-10A1.5 1.5 0 012.5 6H7v2H3v9h14V8h-4V6h4.5z" fill="#5C5F62"/><path d="M1 2a1 1 0 010-2h5c2.757 0 5 2.243 5 5v6.586l1.293-1.293a1 1 0 011.414 1.414l-3 3a.998.998 0 01-1.414 0l-3-3a1 1 0 111.414-1.414L9 11.586V5c0-1.654-1.346-3-3-3H1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `info` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.info minor />
  <PolarisIcons.info minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.info minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def info(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M18 10a8 8 0 10-16 0 8 8 0 0016 0zm-9 3a1 1 0 102 0v-2a1 1 0 10-2 0v2zm0-6a1 1 0 102 0 1 1 0 00-2 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `insert_dynamic_source` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.insert_dynamic_source />
  <PolarisIcons.insert_dynamic_source minor />
  <PolarisIcons.insert_dynamic_source class="w-4 h-4" color="highlight" />
  <PolarisIcons.insert_dynamic_source minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def insert_dynamic_source(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9 7C13.4183 7 17 5.65685 17 4C17 2.34315 13.4183 1 9 1C4.58172 1 1 2.34315 1 4C1 5.65685 4.58172 7 9 7ZM11.2238 8.88258C10.3267 9.72016 9.65013 10.7908 9.29046 11.9981C9.19406 11.9993 9.09723 12 9 12C4.58172 12 1 10.6569 1 9C1 8.45357 1.38958 7.94126 2.07026 7.5C3.4535 8.3967 6.03887 9 9 9C9.77165 9 10.5178 8.95903 11.2238 8.88258ZM9 14C9 15.0695 9.23987 16.083 9.66873 16.9897C9.44824 16.9965 9.22521 17 9 17C4.58172 17 1 15.6569 1 14C1 13.4536 1.38958 12.9413 2.07026 12.5C3.4535 13.3967 6.03887 14 9 14ZM16 18C15.4477 18 15 17.5523 15 17V15H13C12.4477 15 12 14.5523 12 14C12 13.4477 12.4477 13 13 13H15V11C15 10.4477 15.4477 10 16 10C16.5523 10 17 10.4477 17 11V13L19 13C19.5523 13 20 13.4477 20 14C20 14.5523 19.5523 15 19 15H17V17C17 17.5523 16.5523 18 16 18Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10 9C13.866 9 17 7.65685 17 6C17 4.34315 13.866 3 10 3C6.13401 3 3 4.34315 3 6C3 7.65685 6.13401 9 10 9ZM13.2785 10.6513C12.2507 11.1753 11.394 11.9869 10.8144 12.9799C10.5472 12.9932 10.2755 13 10 13C6.13401 13 3 11.6569 3 10C3 9.64936 3.14036 9.31278 3.39831 9C4.35926 10.1652 6.95216 11 10 11C11.1846 11 12.3004 10.8739 13.2785 10.6513ZM10 16V17C6.13401 17 3 15.6569 3 14C3 13.6494 3.14036 13.3128 3.39831 13C4.35926 14.1652 6.95216 15 10 15L10.083 14.9998C10.0284 15.3251 10 15.6592 10 16ZM15 18C14.4477 18 14 17.5523 14 17V16H13C12.4477 16 12 15.5523 12 15C12 14.4477 12.4477 14 13 14H14V13C14 12.4477 14.4477 12 15 12C15.5523 12 16 12.4477 16 13V14H17C17.5523 14 18 14.4477 18 15C18 15.5523 17.5523 16 17 16H16V17C16 17.5523 15.5523 18 15 18Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `install` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.install minor />
  <PolarisIcons.install minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.install minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def install(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M3 4.5A1.5 1.5 0 014.5 3h11A1.5 1.5 0 0117 4.5v11a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 15.5v-11zM5 13v2h10v-2H5zm2.207-7.207a1 1 0 00-1.414 1.414l3.5 3.5a1 1 0 001.414 0l3.5-3.5a1 1 0 00-1.414-1.414L10 8.586 7.207 5.793z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `inventory` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.inventory />
  <PolarisIcons.inventory major />
  <PolarisIcons.inventory class="w-4 h-4" color="highlight" />
  <PolarisIcons.inventory backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def inventory(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19.838 5.455a1 1 0 00-.432-.369l-9-4a.999.999 0 00-.812 0l-9 4A1 1 0 000 6v14h2V6.65l8-3.556 8 3.556V20h2V6a1 1 0 00-.162-.545zM12 8h4v4h-4V8zm-2 2H4v10h6V10zm6 4h-4v6h4v-6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `invite` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.invite minor />
  <PolarisIcons.invite minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.invite minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def invite(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M3.5 4A1.5 1.5 0 002 5.5v9A1.5 1.5 0 003.5 16h13a1.5 1.5 0 001.5-1.5v-9A1.5 1.5 0 0016.5 4h-13zm2.015 2.143a1 1 0 10-1.03 1.714l5 3a1 1 0 001.03 0l5-3a1 1 0 10-1.03-1.714L10 8.833l-4.485-2.69z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `iq` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.iq />
  <PolarisIcons.iq major />
  <PolarisIcons.iq class="w-4 h-4" color="highlight" />
  <PolarisIcons.iq backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def iq(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9.896 2.141A.98.98 0 1011.283.755.98.98 0 009.896 2.14z" fill="#5C5F62"/><path fill-rule="evenodd" d="M2.812 12.676a7.055 7.055 0 010-9.97A7.025 7.025 0 017.274.661a.9.9 0 01.132 1.795 5.225 5.225 0 00-3.321 1.521 5.255 5.255 0 000 7.425 5.256 5.256 0 005.491 1.227 2.95 2.95 0 11.674 1.67 7.057 7.057 0 01-7.438-1.624zm8.893.551a1.15 1.15 0 111.627-1.626 1.15 1.15 0 01-1.627 1.626z" fill="#5C5F62"/><path fill-rule="evenodd" d="M11.651 19.408a.9.9 0 01.22-1.786 5.242 5.242 0 004.36-1.496 5.255 5.255 0 000-7.425 5.257 5.257 0 00-5.556-1.204 2.95 2.95 0 11-.621-1.69 7.057 7.057 0 017.45 1.621 7.055 7.055 0 010 9.97 7.042 7.042 0 01-5.853 2.01zM6.914 6.81a1.15 1.15 0 101.627 1.627 1.15 1.15 0 00-1.627-1.627z" fill="#5C5F62"/><circle cx="8.646" cy="17.934" r=".94" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `jobs` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.jobs />
  <PolarisIcons.jobs major />
  <PolarisIcons.jobs class="w-4 h-4" color="highlight" />
  <PolarisIcons.jobs backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def jobs(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M5.508 2.466L4.356 5H2.5A1.5 1.5 0 001 6.5v1.882l.503.251a19 19 0 0016.994 0L19 8.382V6.5A1.5 1.5 0 0017.5 5h-1.856l-1.152-2.534A2.5 2.5 0 0012.216 1H7.784a2.5 2.5 0 00-2.276 1.466zM7.784 3a.5.5 0 00-.455.293L6.553 5h6.894l-.776-1.707A.5.5 0 0012.216 3H7.784z" fill="#5C5F62"/><path d="M19 10.613a20.986 20.986 0 01-8 2.003V14a1 1 0 01-2 0v-1.384c-2.74-.131-5.46-.798-8-2.003V17.5A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5v-6.887z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `key` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.key />
  <PolarisIcons.key major />
  <PolarisIcons.key class="w-4 h-4" color="highlight" />
  <PolarisIcons.key backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def key(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M14.56.44A1.5 1.5 0 0115.622 0H18.5A1.5 1.5 0 0120 1.5v3.423a.5.5 0 01-.5.5h-1.082a1 1 0 00-1 1v1a1 1 0 01-1 1h-1a1 1 0 00-1 1v2l-1.449 1.443a6.5 6.5 0 11-5.111-5.724L14.561.439zM8 14a2 2 0 11-4 0 2 2 0 014 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `label_printer` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.label_printer />
  <PolarisIcons.label_printer major />
  <PolarisIcons.label_printer class="w-4 h-4" color="highlight" />
  <PolarisIcons.label_printer backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def label_printer(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M4 2.5A1.5 1.5 0 015.5 1h9A1.5 1.5 0 0116 2.5V6h1.5A1.5 1.5 0 0119 7.5v10a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5v-10A1.5 1.5 0 012.5 6H4V2.5zM6 12h8V3H6v9zm-2 3a1 1 0 011-1h3a1 1 0 110 2H5a1 1 0 01-1-1zm11 1a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `landing_page` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.landing_page />
  <PolarisIcons.landing_page major />
  <PolarisIcons.landing_page class="w-4 h-4" color="highlight" />
  <PolarisIcons.landing_page backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def landing_page(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 7c0-.552-.449-1-1-1H1a1 1 0 010-2h9c1.654 0 3 1.346 3 3v5.586l1.293-1.293a1 1 0 011.414 1.414l-3 3a.998.998 0 01-1.414 0l-3-3a1 1 0 111.414-1.414L11 12.586V7zm8.56-2.853a1.5 1.5 0 01.44 1.06V18.5a1.5 1.5 0 01-1.5 1.5h-13A1.5 1.5 0 014 18.5V8h2v10h12V5.414L14.586 2H4v-.5A1.5 1.5 0 015.5 0h9.293a1.5 1.5 0 011.06.44l3.708 3.707z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `language` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.language minor />
  <PolarisIcons.language minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.language minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def language(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="m11.4277 13.9986 1.572-3.538 1.573 3.538zm6.486 2.594-4-9c-.161-.361-.518-.594-.914-.594-.395 0-.753.233-.914.594l-1.958 4.406h-.12801c-1.276 0-2.24-.299-2.965-.716.004-.005.008-.007.012-.012 1.292-1.443 1.777-3.536 1.941-5.272h1.012c.55301 0 1.00001-.448 1.00001-1s-.447-1-1.00001-1h-.942c-.01499-.63-.058-1.051-.064-1.11-.06-.548-.543-.938-1.103-.884-.549.061-.944.555-.885 1.103.001.013.03501.359.05001.891h-4.05601c-.552 0-1 .448-1 1s.448 1 1 1h3.981c-.144 1.37-.516 2.921-1.42 3.934-.425-.606-.576-1.125-.592-1.183-.137-.532-.676-.856-1.211-.721-.536.134-.862.677-.727 1.213.118.474.373 1.071.778 1.679-.254.05-.522.078-.809.078-.552 0-1 .448-1 1s.448 1 1 1c.856 0 1.628-.16 2.321-.467.962.734 2.253 1.303 3.932 1.435l-1.167 2.626c-.223.505.003 1.095.508 1.32.506.227 1.097-.003 1.32-.508l.62501-1.406h4.922l.625 1.406c.166.373.531.594.915.594.136 0 .274-.027.406-.086.504-.225.731-.815.507-1.32z" fill="#5c5f62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `legal` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.legal />
  <PolarisIcons.legal major />
  <PolarisIcons.legal class="w-4 h-4" color="highlight" />
  <PolarisIcons.legal backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def legal(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7 5h5v2H7V5zM12 9H7v2h5V9z" fill="#5C5F62"/><path fill-rule="evenodd" d="M16 17a3 3 0 01-3 3H3a3 3 0 01-3-3v-1.5A1.5 1.5 0 011.5 14H3V4a3 3 0 013-3h11a3 3 0 110 6h-1v10zM5 4a1 1 0 011-1h8.17c-.11.313-.17.65-.17 1v13a1 1 0 11-2 0v-3H5V4zm12-1a1 1 0 00-1 1v1h1a1 1 0 100-2zm-7 14c0 .35.06.687.17 1H3a1 1 0 01-1-1v-1h8v1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `link` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.link minor />
  <PolarisIcons.link minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.link minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def link(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M6.534 18a4.507 4.507 0 01-3.208-1.329 4.54 4.54 0 010-6.414l1.966-1.964a.999.999 0 111.414 1.414L4.74 11.671a2.54 2.54 0 000 3.586c.961.959 2.631.958 3.587 0l1.966-1.964a1 1 0 111.415 1.414l-1.966 1.964A4.503 4.503 0 016.534 18zm7.467-6a.999.999 0 01-.707-1.707l1.966-1.964a2.54 2.54 0 000-3.586c-.961-.959-2.631-.957-3.587 0L9.707 6.707a1 1 0 11-1.415-1.414l1.966-1.964A4.503 4.503 0 0113.466 2c1.211 0 2.351.472 3.208 1.329a4.541 4.541 0 010 6.414l-1.966 1.964a.997.997 0 01-.707.293zm-6.002 1a.999.999 0 01-.707-1.707l4.001-4a1 1 0 111.415 1.414l-4.001 4a1 1 0 01-.708.293z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `list` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.list />
  <PolarisIcons.list major />
  <PolarisIcons.list class="w-4 h-4" color="highlight" />
  <PolarisIcons.list backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def list(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1 2.5A1.5 1.5 0 012.5 1h15A1.5 1.5 0 0119 2.5v15a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5v-15zM8 5h8v2H8V5zm8 4H8v2h8V9zm-8 4h8v2H8v-2zM5 7a1 1 0 100-2 1 1 0 000 2zm1 3a1 1 0 11-2 0 1 1 0 012 0zm-1 5a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `live_view` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.live_view />
  <PolarisIcons.live_view major />
  <PolarisIcons.live_view class="w-4 h-4" color="highlight" />
  <PolarisIcons.live_view backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def live_view(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M13.293 2.707A1 1 0 0015 2V1a1 1 0 00-2 0v1a1 1 0 00.293.707zM17 4a.999.999 0 01-.707-1.707l1-1a1 1 0 111.414 1.414l-1 1A.996.996 0 0117 4zm2 3h-1a1 1 0 110-2h1a1 1 0 110 2zm-4-1a1 1 0 11-2 0 1 1 0 012 0zM1 3a2 2 0 012-2h8v2H3v8.464C4.795 10.53 7.836 10 10 10c2.164 0 5.205.529 7 1.464V9h2v8a2 2 0 01-2 2H3a2 2 0 01-2-2V3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `location` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.location />
  <PolarisIcons.location major />
  <PolarisIcons.location class="w-4 h-4" color="highlight" />
  <PolarisIcons.location backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def location(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M18 8c0-4.42-3.58-8-8-8S2 3.58 2 8c0 .15 0 .29.01.44.13 3.55 1.99 7.62 7.13 11.29.51.36 1.21.36 1.72 0 5.14-3.67 7-7.74 7.13-11.29.01-.15.01-.29.01-.44zm-5.879 2.121a2.996 2.996 0 000-4.242 2.996 2.996 0 00-4.242 0 2.996 2.996 0 000 4.242 2.996 2.996 0 004.242 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `locations` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.locations minor />
  <PolarisIcons.locations minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.locations minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def locations(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 10c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm0-8C6.69 2 4 4.87 4 8.4c0 6 5.4 9.35 5.63 9.49.11.07.24.11.37.11s.26-.04.37-.11C10.6 17.75 16 14.4 16 8.4 16 4.87 13.31 2 10 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `lock` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.lock />
  <PolarisIcons.lock minor />
  <PolarisIcons.lock class="w-4 h-4" color="highlight" />
  <PolarisIcons.lock minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def lock(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M4 6v2H2.5A1.5 1.5 0 001 9.5v9A1.5 1.5 0 002.5 20h15a1.5 1.5 0 001.5-1.5v-9A1.5 1.5 0 0017.5 8H16V6A6 6 0 004 6zm6-4a4 4 0 00-4 4v2h8V6a4 4 0 00-4-4zm1 14v-4H9v4h2z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M15 8V7c0-2.757-2.243-5-5-5S5 4.243 5 7v1a1 1 0 00-1 1v7.5A1.5 1.5 0 005.5 18h9a1.5 1.5 0 001.5-1.5V9a1 1 0 00-1-1zm-6 7h2v-4H9v4zm4-7H7V7c0-1.654 1.346-3 3-3s3 1.346 3 3v1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `log_out` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.log_out minor />
  <PolarisIcons.log_out minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.log_out minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def log_out(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 19a8 8 0 100-16 8 8 0 000 16zM9.293 8.707a1 1 0 011.414-1.414l3 3a1 1 0 010 1.414l-3 3a1 1 0 01-1.414-1.414L10.586 12H7a1 1 0 110-2h3.586L9.293 8.707z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `logo_block` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.logo_block />
  <PolarisIcons.logo_block major />
  <PolarisIcons.logo_block class="w-4 h-4" color="highlight" />
  <PolarisIcons.logo_block backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def logo_block(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1 2a1 1 0 011-1h2v2H3v1H1V2zM19 2a1 1 0 00-1-1h-2v2h1v1h2V2zM2 19a1 1 0 01-1-1v-2h2v1h1v2H2zM18 19a1 1 0 001-1v-2h-2v1h-1v2h2zM6 17h3v2H6v-2zM11 17h3v2h-3v-2zM14 1v2h-3V1h3zM9 1v2H6V1h3zM9.598 6.332a4 4 0 00-3.573 7.147l3.573-7.147zM8 14h8l-4-8-4 8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `managed_store` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.managed_store />
  <PolarisIcons.managed_store major />
  <PolarisIcons.managed_store class="w-4 h-4" color="highlight" />
  <PolarisIcons.managed_store backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def managed_store(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.623 2.253l-.609 3.583C.91 6.446 1.39 7 2.021 7h.91c.58 0 1.11-.321 1.37-.83L4.897 5l.597 1.17c.26.509.79.83 1.37.83h1.169c.58 0 1.11-.321 1.369-.83L10 5l.597 1.17c.26.509.79.83 1.37.83h1.169c.58 0 1.11-.321 1.369-.83L15.102 5l.598 1.17c.259.509.789.83 1.369.83h.91c.63 0 1.11-.555 1.007-1.164l-.61-3.583A1.522 1.522 0 0016.867 1H3.134c-.748 0-1.387.53-1.51 1.253zm12.084 7.04a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0l-2-2a1 1 0 111.414-1.414L9 12.586l3.293-3.293a1 1 0 011.414 0zM4 9H2v8.5A1.5 1.5 0 003.5 19h13a1.5 1.5 0 001.5-1.5V9h-2v8H4V9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mark_fulfilled` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mark_fulfilled minor />
  <PolarisIcons.mark_fulfilled minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.mark_fulfilled minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mark_fulfilled(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M18 16.5a1.5 1.5 0 01-1.5 1.5h-13A1.5 1.5 0 012 16.5V9h2v4h2.382c.379 0 .725.214.894.553L8 15h4l.724-1.447a.998.998 0 01.894-.553H16V9h2v7.5z" fill="#5C5F62"/><path d="M8.293 8.707l-3-3a.999.999 0 111.414-1.414L9 6.586l4.293-4.293a.999.999 0 111.414 1.414l-5 5a.997.997 0 01-1.414 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mark_paid` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mark_paid minor />
  <PolarisIcons.mark_paid minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.mark_paid minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mark_paid(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M14.207 6.793a1 1 0 010 1.414l-4.5 4.5a1 1 0 01-1.414 0l-2.5-2.5a1 1 0 011.414-1.414L9 10.586l3.793-3.793a1 1 0 011.414 0zM4.5 3A1.5 1.5 0 003 4.5V17a1.002 1.002 0 001.301.953c.179-.056.315-.193.437-.336l1.122-1.322 1.349 1.399c.184.191.437.301.702.306a.96.96 0 00.713-.281l1.364-1.317 1.305 1.305a.997.997 0 001.414 0l1.42-1.42 1.138 1.334c.12.14.254.275.43.331A1 1 0 0017 17V4.5A1.5 1.5 0 0015.5 3h-11z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `marketing` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.marketing />
  <PolarisIcons.marketing minor />
  <PolarisIcons.marketing class="w-4 h-4" color="highlight" />
  <PolarisIcons.marketing minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def marketing(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.1 14.95c.412.16.9-.08.9-.45v-13c0-.37-.488-.61-.9-.45-.683.41-1.311.83-1.919 1.237-2.14 1.43-4.019 2.687-7.084 2.713H4C2.34 5 1 6.34 1 8s1.34 3 3 3h4c3.123 0 5.02 1.268 7.182 2.714.607.406 1.236.826 1.918 1.236zM9 18h-.79c-.43 0-.81-.27-.94-.67L5.07 13H9a1 1 0 011 1v3c0 .55-.45 1-1 1z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M9 4a5 5 0 0 0-.163 9.997l.662 1.986a7 7 0 1 1 6.484-6.484l-1.986-.662A5 5 0 0 0 9 4Z" fill="#5C5F62"/><path d="M9 8a1 1 0 0 0 0 2v2a3 3 0 1 1 3-3h-2a1 1 0 0 0-1-1Z" fill="#5C5F62"/><path d="M11.316 10.051a1 1 0 0 0-1.265 1.265l2 6a1 1 0 0 0 1.898 0l.842-2.525 2.525-.842a1 1 0 0 0 0-1.898l-6-2Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `markets` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.markets />
  <PolarisIcons.markets major />
  <PolarisIcons.markets class="w-4 h-4" color="highlight" />
  <PolarisIcons.markets backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def markets(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.55 7.55a7.95 7.95 0 0 0-5.1-5.1L10 0 7.55 2.45a7.957 7.957 0 0 0-5.1 5.1L0 10l2.45 2.45a7.956 7.956 0 0 0 5.1 5.1L10 20l2.45-2.45a7.96 7.96 0 0 0 5.1-5.118L20 9.982l-2.45-2.431Zm-1.584 4.063-.032.123-.038.132a6.214 6.214 0 0 1-4.01 4.01l-.133.039h-.039a9.658 9.658 0 0 0 1.89-5.06h2.516c0 .06-.018.12-.028.179a5.49 5.49 0 0 1-.123.577h-.003Zm-11.844.255-.039-.133c0-.045-.02-.09-.035-.136a5.986 5.986 0 0 1-.122-.553c0-.06 0-.119-.028-.178h2.52a9.685 9.685 0 0 0 1.885 5.06h-.038l-.133-.04a6.214 6.214 0 0 1-4.007-4.023l-.003.003ZM4.048 8.37c0-.045.025-.09.035-.136l.039-.133a6.214 6.214 0 0 1 4.01-4.01l.133-.038h.038a9.685 9.685 0 0 0-1.886 5.063H3.905c0-.063 0-.123.028-.182.028-.182.07-.368.119-.55l-.004-.014ZM15.896 8.1l.038.133c0 .046.025.091.035.136.05.182.091.368.123.553 0 .06.02.12.028.182h-2.516a9.657 9.657 0 0 0-1.89-5.063h.039l.133.039a6.214 6.214 0 0 1 4.013 4.034l-.003-.014Zm-5.886 7.124a7.918 7.918 0 0 1-1.836-4.37h3.673a7.967 7.967 0 0 1-1.833 4.384l-.003-.014Zm-1.836-6.12a7.918 7.918 0 0 1 1.837-4.373 7.967 7.967 0 0 1 1.836 4.373H8.174Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `maximize` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.maximize />
  <PolarisIcons.maximize minor />
  <PolarisIcons.maximize class="w-4 h-4" color="highlight" />
  <PolarisIcons.maximize minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def maximize(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9 5a1 1 0 100 2h2.586l-3.293 3.293a1 1 0 101.414 1.414L13 8.414V11a1 1 0 102 0V6c0-.025 0-.05-.003-.075A1 1 0 0014 5H9zM1 14.5A1.5 1.5 0 012.5 13h3A1.5 1.5 0 017 14.5v3A1.5 1.5 0 015.5 19h-3A1.5 1.5 0 011 17.5v-3z" fill="#5C5F62"/><path d="M2.5 1A1.5 1.5 0 001 2.5V11h2V3h14v14H9v2h8.5a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1h-15z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M4.5 3A1.5 1.5 0 003 4.5V7a1 1 0 002 0V5h2a1 1 0 000-2H4.5zM3 15.5A1.5 1.5 0 004.5 17H7a1 1 0 100-2H5v-2a1 1 0 10-2 0v2.5zm14 0a1.5 1.5 0 01-1.5 1.5H13a1 1 0 110-2h2v-2a1 1 0 112 0v2.5zm0-11A1.5 1.5 0 0015.5 3H13a1 1 0 100 2h2v2a1 1 0 102 0V4.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `measurement` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.measurement minor />
  <PolarisIcons.measurement minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.measurement minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def measurement(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="m6 5.414.293.293a.997.997 0 0 0 1.414 0 .999.999 0 0 0 0-1.414l-2-2a.999.999 0 0 0-1.414 0l-2 2a.999.999 0 1 0 1.414 1.414L4 5.414V12a1 1 0 1 0 2 0V5.414ZM15.707 17.707l2-2a.999.999 0 0 0 0-1.414l-2-2a.999.999 0 1 0-1.414 1.414l.293.293H8a1 1 0 1 0 0 2h6.586l-.293.293a.997.997 0 0 0 0 1.414.999.999 0 0 0 1.414 0ZM10 5a1 1 0 0 1 0-2h1a1 1 0 1 1 0 2h-1ZM16 11a1 1 0 0 0 1-1V9a1 1 0 1 0-2 0v1a1 1 0 0 0 1 1ZM17 5a1 1 0 1 1-2 0 1 1 0 1 1 0-2h1a1 1 0 0 1 1 1v1Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mention` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mention />
  <PolarisIcons.mention major />
  <PolarisIcons.mention class="w-4 h-4" color="highlight" />
  <PolarisIcons.mention backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mention(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 13c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zm0-13C4.486 0 0 4.486 0 10s4.486 10 10 10a1 1 0 000-2c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8v1c0 .827-.673 1.5-1.5 1.5S15 11.827 15 11v-1c0-2.757-2.243-5-5-5s-5 2.243-5 5 2.243 5 5 5c1.531 0 2.887-.707 3.805-1.795A3.477 3.477 0 0016.5 14.5c1.93 0 3.5-1.57 3.5-3.5v-1c0-5.514-4.486-10-10-10z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `merge` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.merge minor />
  <PolarisIcons.merge minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.merge minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def merge(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 2a1 1 0 0 0-.717.303l-5 5.143A1 1 0 0 0 5.717 8.84L9 5.463V12a1 1 0 0 0 .293.707l5 5a1 1 0 0 0 1.414-1.414L11 11.586V5.463l3.283 3.377a1 1 0 0 0 1.434-1.394l-5-5.143A1 1 0 0 0 10 2ZM7.707 14.293a1 1 0 0 0-1.414 0l-2 2a1 1 0 1 0 1.414 1.414l2-2a1 1 0 0 0 0-1.414Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `metafields` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.metafields />
  <PolarisIcons.metafields minor />
  <PolarisIcons.metafields class="w-4 h-4" color="highlight" />
  <PolarisIcons.metafields minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def metafields(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 2.5A1.5 1.5 0 0 1 3.5 1h4A1.5 1.5 0 0 1 9 2.5V3h2v-.5A1.5 1.5 0 0 1 12.5 1h4A1.5 1.5 0 0 1 18 2.5v.768A2 2 0 0 1 19 5v5H1V5a2 2 0 0 1 1-1.732V2.5ZM1 12h18v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-5Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M4 4.5A1.5 1.5 0 0 1 5.5 3h2A1.5 1.5 0 0 1 9 4.5V5h2v-.5A1.5 1.5 0 0 1 12.5 3h2A1.5 1.5 0 0 1 16 4.5v.768A2 2 0 0 1 17 7v3H3V7a2 2 0 0 1 1-1.732V4.5ZM3 12h14v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `microphone` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.microphone />
  <PolarisIcons.microphone major />
  <PolarisIcons.microphone class="w-4 h-4" color="highlight" />
  <PolarisIcons.microphone backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def microphone(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M6 4a4 4 0 118 0v4a4 4 0 01-8 0V4z" fill="#5C5F62"/><path d="M11 15v4H9v-4h2z" fill="#5C5F62"/><path d="M4 8a6 6 0 0012 0h2A8 8 0 112 8h2z" fill="#5C5F62"/><path d="M16 6h.5A1.5 1.5 0 0118 7.5V8h-2V6zM2 7.5A1.5 1.5 0 013.5 6H4v2H2v-.5zM7 19.5A1.5 1.5 0 018.5 18h3a1.5 1.5 0 011.5 1.5v.5H7v-.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `minimize` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.minimize />
  <PolarisIcons.minimize minor />
  <PolarisIcons.minimize class="w-4 h-4" color="highlight" />
  <PolarisIcons.minimize minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def minimize(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9 17h8V3H3v8H1V2.5A1.5 1.5 0 012.5 1h15A1.5 1.5 0 0119 2.5v15a1.5 1.5 0 01-1.5 1.5H9v-2z" fill="#5C5F62"/><path d="M10 6a1 1 0 10-2 0v5a.997.997 0 001 1h5a1 1 0 100-2h-2.586l3.293-3.293a1 1 0 00-1.414-1.414L10 8.586V6zM1 14.5A1.5 1.5 0 012.5 13h3A1.5 1.5 0 017 14.5v3A1.5 1.5 0 015.5 19h-3A1.5 1.5 0 011 17.5v-3z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M11 7.5A1.5 1.5 0 0012.5 9H16a1 1 0 100-2h-3V4a1 1 0 10-2 0v3.5zm1.5 3.5a1.5 1.5 0 00-1.5 1.5V16a1 1 0 102 0v-3h3a1 1 0 100-2h-3.5zm-5 0A1.5 1.5 0 019 12.5V16a1 1 0 11-2 0v-3H4a1 1 0 110-2h3.5zm0-2A1.5 1.5 0 009 7.5V4a1 1 0 10-2 0v3H4a1 1 0 100 2h3.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `minus` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.minus minor />
  <PolarisIcons.minus minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.minus minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def minus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M14.1667 9H5.83333C5.3725 9 5 9.448 5 10C5 10.552 5.3725 11 5.83333 11H14.1667C14.6275 11 15 10.552 15 10C15 9.448 14.6275 9 14.1667 9" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile />
  <PolarisIcons.mobile major />
  <PolarisIcons.mobile class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M3 1.5C3 .7 3.7 0 4.5 0h11c.8 0 1.5.7 1.5 1.5v17c0 .8-.7 1.5-1.5 1.5h-11c-.8 0-1.5-.7-1.5-1.5v-17zM5 2h10v14H5V2zm4 15a1 1 0 100 2h2a1 1 0 100-2H9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_accept` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_accept />
  <PolarisIcons.mobile_accept major />
  <PolarisIcons.mobile_accept class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_accept backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_accept(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7 18a.997.997 0 01-.707-.293l-6-6a1 1 0 011.414-1.414l5.236 5.236 11.298-13.18a1 1 0 011.518 1.3l-12 14a1.001 1.001 0 01-.721.35H7" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_back_arrow` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_back_arrow />
  <PolarisIcons.mobile_back_arrow major />
  <PolarisIcons.mobile_back_arrow class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_back_arrow backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_back_arrow(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 9H3.661l5.997-5.246a1 1 0 00-1.316-1.506l-8 7c-.008.007-.011.018-.019.025a.975.975 0 00-.177.24c-.018.03-.045.054-.059.087a.975.975 0 000 .802c.014.033.041.057.059.088.05.087.104.17.177.239.008.007.011.018.019.025l8 7a.996.996 0 001.411-.095 1 1 0 00-.095-1.411L3.661 11H19a1 1 0 000-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_cancel` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_cancel />
  <PolarisIcons.mobile_cancel major />
  <PolarisIcons.mobile_cancel class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_cancel backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_cancel(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11.414 10l6.293-6.293a1 1 0 10-1.414-1.414L10 8.586 3.707 2.293a1 1 0 00-1.414 1.414L8.586 10l-6.293 6.293a1 1 0 101.414 1.414L10 11.414l6.293 6.293A.998.998 0 0018 17a.999.999 0 00-.293-.707L11.414 10z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_chevron` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_chevron />
  <PolarisIcons.mobile_chevron major />
  <PolarisIcons.mobile_chevron class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_chevron backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_chevron(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M14 20.001a.994.994 0 01-.747-.336l-8-9a.999.999 0 010-1.328l8-9a1 1 0 011.494 1.328l-7.41 8.336 7.41 8.336A.998.998 0 0114 20.001z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_hamburger` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_hamburger />
  <PolarisIcons.mobile_hamburger major />
  <PolarisIcons.mobile_hamburger class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_hamburger backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_hamburger(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 11H1a1 1 0 010-2h18a1 1 0 110 2zm0-7H1a1 1 0 010-2h18a1 1 0 110 2zm0 14H1a1 1 0 010-2h18a1 1 0 010 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_horizontal_dots` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_horizontal_dots />
  <PolarisIcons.mobile_horizontal_dots major />
  <PolarisIcons.mobile_horizontal_dots class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_horizontal_dots backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_horizontal_dots(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M16 8c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zm-6 0c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zM4 8c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_plus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_plus />
  <PolarisIcons.mobile_plus major />
  <PolarisIcons.mobile_plus class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_plus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_plus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17 9h-6V3a1 1 0 00-2 0v6H3a1 1 0 000 2h6v6a1 1 0 102 0v-6h6a1 1 0 000-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `mobile_vertical_dots` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.mobile_vertical_dots />
  <PolarisIcons.mobile_vertical_dots major />
  <PolarisIcons.mobile_vertical_dots class="w-4 h-4" color="highlight" />
  <PolarisIcons.mobile_vertical_dots backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def mobile_vertical_dots(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm0 2c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zm0 6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `moneris` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.moneris />
  <PolarisIcons.moneris major />
  <PolarisIcons.moneris class="w-4 h-4" color="highlight" />
  <PolarisIcons.moneris backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def moneris(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M3.541 0a1.5 1.5 0 00-1.5 1.54l.013.46h15.892l.012-.46a1.5 1.5 0 00-1.5-1.54H3.542z"/><path fill="#5C5F62" fill-rule="evenodd" d="M4.424 20a1.5 1.5 0 01-1.498-1.422L2.166 4h15.669l-.76 14.578A1.5 1.5 0 0115.575 20H4.424zM5 6h10v4H5V6zm0 6h2v2H5v-2zm0 4h2v2H5v-2zm6-4H9v2h2v-2zm-2 4h2v2H9v-2zm6-4h-2v2h2v-2zm-2 4h2v2h-2v-2z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `money` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.money minor />
  <PolarisIcons.money minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.money minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def money(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M3 4.5a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1H3Zm7 8.5a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `nature` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.nature />
  <PolarisIcons.nature major />
  <PolarisIcons.nature class="w-4 h-4" color="highlight" />
  <PolarisIcons.nature backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def nature(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15.651 12.851c-2.13 1.94-5.17 2.91-9.07 2.91-.91 0-1.87-.04-2.88-.17-.38.86-.6 1.71-.6 2.51 0 .55-.45 1-1 1s-1-.45-1-1c0-.24.01-.48.04-.72.02-.13.03-.26.06-.39.18-1.13.64-2.27 1.29-3.39 2.32-4.02 9.3-8.68 12.61-9.5-4.76-.03-12 3-13.91 6.93 0-2.89 2.3-6.42 5.46-8.38 4.54-2.82 10.47-1.14 12.06 0 .23.16.37.42.38.7.08 2.31-.25 6.62-3.44 9.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `navigation` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.navigation />
  <PolarisIcons.navigation major />
  <PolarisIcons.navigation class="w-4 h-4" color="highlight" />
  <PolarisIcons.navigation backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def navigation(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 0C4.48 0 0 4.48 0 10s4.48 10 10 10 10-4.48 10-10S15.52 0 10 0zM5 15l2.27-6.31 4.04 4.04L5 15zm7.73-3.69L8.69 7.27 15 5l-2.27 6.31z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `note` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.note />
  <PolarisIcons.note minor />
  <PolarisIcons.note class="w-4 h-4" color="highlight" />
  <PolarisIcons.note minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def note(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11.379 0a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0117 5.622V18.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5v-17A1.5 1.5 0 014.5 0h6.879zM6 5h4v2H6V5zm8 4v2H6V9h8zm-8 6v-2h7v2H6z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M6 11h8V9H6v2zm0 4h8v-2H6v2zm0-8h4V5H6v2zm6-5H5.5A1.5 1.5 0 004 3.5v13A1.5 1.5 0 005.5 18h9a1.5 1.5 0 001.5-1.5V6l-4-4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `notification` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.notification />
  <PolarisIcons.notification major />
  <PolarisIcons.notification class="w-4 h-4" color="highlight" />
  <PolarisIcons.notification backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def notification(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 0a1 1 0 011 1v2.032l-.001.021-.002.03A6.002 6.002 0 0116 9c0 3.093.625 4.312 1.599 6.21l.034.068c.17.33-.07.722-.442.722H2.809a.496.496 0 01-.442-.722l.034-.068C3.375 13.312 4 12.093 4 9a6.002 6.002 0 015.003-5.918l-.002-.04A.835.835 0 019 3V1a1 1 0 011-1zM12 18a2 2 0 01-4 0h4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `online_store` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.online_store />
  <PolarisIcons.online_store minor />
  <PolarisIcons.online_store class="w-4 h-4" color="highlight" />
  <PolarisIcons.online_store minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def online_store(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.791 2.253l-.597 3.583A1 1 0 002.18 7h.893a1.5 1.5 0 001.342-.83L5 5l.585 1.17A1.5 1.5 0 006.927 7h1.146a1.5 1.5 0 001.342-.83L10 5l.585 1.17a1.5 1.5 0 001.342.83h1.146a1.5 1.5 0 001.342-.83L15 5l.585 1.17a1.5 1.5 0 001.342.83h.893a1 1 0 00.986-1.164l-.597-3.583A1.5 1.5 0 0016.729 1H3.271a1.5 1.5 0 00-1.48 1.253zM4 18.5A1.5 1.5 0 015.5 17H8v-3h4v3h2.5a1.5 1.5 0 011.5 1.5v.5H4v-.5z" fill="#5C5F62"/><path d="M2 9h2v4h12V9h2v4.5a1.5 1.5 0 01-1.5 1.5h-13A1.5 1.5 0 012 13.5V9z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M5 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h2a1 1 0 1 1 0 2H6a1 1 0 1 0 0 2h8a1 1 0 1 0 0-2h-1a1 1 0 1 1 0-2h2a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5Zm1.986 3.836a1 1 0 0 0-1.972.329C5.237 8.504 6.579 11 10 11c3.42 0 4.763-2.496 4.986-3.835a1 1 0 1 0-1.972-.33C12.904 7.497 12.179 9 10 9 7.82 9 7.097 7.496 6.986 6.836Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `order_status` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.order_status minor />
  <PolarisIcons.order_status minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.order_status minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def order_status(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M3 7a1 1 0 110-2h2.586l2.707-2.707a.997.997 0 011.655.391l1.49 4.465 1.855-1.856A.996.996 0 0114 5h3a1 1 0 110 2h-2.586l-2.707 2.707a.998.998 0 01-1.655-.391l-1.49-4.465-1.855 1.856A.996.996 0 016 7H3zm14 2a1 1 0 011 1v7a1 1 0 01-1 1H3a1 1 0 01-1-1v-7a1 1 0 112 0v3h2.382c.379 0 .725.214.894.553L8 15h4l.724-1.447a.998.998 0 01.894-.553H16v-3a1 1 0 011-1z" fill="#5C5F62"/><path fill="#5C5F62" d="M2 9h2v1H2zM16 9h2v1h-2z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `orders` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.orders />
  <PolarisIcons.orders minor />
  <PolarisIcons.orders class="w-4 h-4" color="highlight" />
  <PolarisIcons.orders minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def orders(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 1a1 1 0 10-2 0v7.586L7.707 7.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L11 8.586V1z" fill="#5C5F62"/><path d="M3 14V3h4V1H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1H13v2h4v11h-3.5c-.775 0-1.388.662-1.926 1.244l-.11.12A1.994 1.994 0 0110 16a1.994 1.994 0 01-1.463-.637l-.111-.12C7.888 14.664 7.275 14 6.5 14H3z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M3.735 5.507A3 3 0 0 1 6.695 3h6.61a3 3 0 0 1 2.96 2.507L17 10v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-5l.735-4.493ZM6.695 5a1 1 0 0 0-.987.836L5 10v1h1.394a3 3 0 0 1 1.665.504l.832.555a2 2 0 0 0 2.218 0l.832-.555A3 3 0 0 1 13.607 11H15v-1l-.708-4.164A1 1 0 0 0 13.306 5H6.694Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `organization` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.organization />
  <PolarisIcons.organization major />
  <PolarisIcons.organization class="w-4 h-4" color="highlight" />
  <PolarisIcons.organization backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def organization(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M5 5h2v2H5V5Zm2 3H5v2h2V8Zm-2 3h2v2H5v-2Zm6-6H9v2h2V5ZM9 8h2v2H9V8Zm2 3H9v2h2v-2Z"/><path fill="#5C5F62" fill-rule="evenodd" d="M2 19a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3h3a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H9v-3H7v3H2Zm1-2V3h10v14h-2v-1a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v1H3Zm13-2h-1v-2h1v2Zm0-4h-1V9h1v2Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `outgoing` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.outgoing />
  <PolarisIcons.outgoing major />
  <PolarisIcons.outgoing class="w-4 h-4" color="highlight" />
  <PolarisIcons.outgoing backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def outgoing(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 10a1.5 1.5 0 011.5 1.5v7a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 18.5v-7c0-.829.67-1.5 1.5-1.5H7v2H3v6h14v-6h-4v-2h4.5zM10 16a1 1 0 01-1-1V8c0-2.757 2.243-5 5-5h2.586l-1.293-1.293A1 1 0 0116.707.293l3 3a.998.998 0 010 1.414l-3 3a.997.997 0 01-1.631-.324 1 1 0 01.217-1.09L16.586 5H14c-1.654 0-3 1.346-3 3v7a1 1 0 01-1 1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `package` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.package />
  <PolarisIcons.package major />
  <PolarisIcons.package class="w-4 h-4" color="highlight" />
  <PolarisIcons.package backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def package(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 5h-8V2h5.227c.382-.001.736.162.928.429L19 5zM3.773 2H9v3H1l1.845-2.571c.192-.267.546-.43.928-.429zM1 7v10.5A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5V7H1zm2 2h6v4H3V9z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `page` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.page />
  <PolarisIcons.page major />
  <PolarisIcons.page class="w-4 h-4" color="highlight" />
  <PolarisIcons.page backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def page(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M12.44.44A1.5 1.5 0 0011.378 0H4.5A1.5 1.5 0 003 1.5v17A1.5 1.5 0 004.5 20h11a1.5 1.5 0 001.5-1.5V5.621a1.5 1.5 0 00-.44-1.06L12.44.439z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `page_down` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.page_down />
  <PolarisIcons.page_down major />
  <PolarisIcons.page_down class="w-4 h-4" color="highlight" />
  <PolarisIcons.page_down backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def page_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11.379 0a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0117 5.622V18.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5v-17A1.5 1.5 0 014.5 0h6.879zM10 6a1 1 0 011 1v3.586l1.293-1.293a1 1 0 111.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 011.414-1.414L9 10.586V7a1 1 0 011-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `page_minus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.page_minus />
  <PolarisIcons.page_minus major />
  <PolarisIcons.page_minus class="w-4 h-4" color="highlight" />
  <PolarisIcons.page_minus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def page_minus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11.379 0a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0117 5.622V18.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5v-17A1.5 1.5 0 014.5 0h6.879zM7 9a1 1 0 100 2h6a1 1 0 100-2H7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `page_plus` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.page_plus />
  <PolarisIcons.page_plus major />
  <PolarisIcons.page_plus class="w-4 h-4" color="highlight" />
  <PolarisIcons.page_plus backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def page_plus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11.379 0a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0117 5.622V18.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5v-17A1.5 1.5 0 014.5 0h6.879zM10 14a1 1 0 01-1-1v-2H7a1 1 0 110-2h2V7a1 1 0 112 0v2h2a1 1 0 110 2h-2v2a1 1 0 01-1 1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `page_up` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.page_up />
  <PolarisIcons.page_up major />
  <PolarisIcons.page_up class="w-4 h-4" color="highlight" />
  <PolarisIcons.page_up backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def page_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M11.379 0a1.5 1.5 0 011.06.44l4.122 4.12A1.5 1.5 0 0117 5.622V18.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 18.5v-17A1.5 1.5 0 014.5 0h6.879zm2.328 10.707a1 1 0 01-1.414 0L11 9.414V13a1 1 0 11-2 0V9.414l-1.293 1.293a1 1 0 01-1.414-1.414l3-3a1 1 0 011.414 0l3 3a1 1 0 010 1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `pagination_end` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.pagination_end minor />
  <PolarisIcons.pagination_end minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.pagination_end minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def pagination_end(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M14 4a1 1 0 011 1v10a1 1 0 11-2 0V5a1 1 0 011-1zm-7.219.376l4 5a1 1 0 010 1.249l-4 5a1 1 0 11-1.562-1.25l3.5-4.374-3.5-4.376a1 1 0 111.562-1.25z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `pagination_start` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.pagination_start minor />
  <PolarisIcons.pagination_start minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.pagination_start minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def pagination_start(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M6 4a1 1 0 011 1v10a1 1 0 11-2 0V5a1 1 0 011-1zm7.219.376a1 1 0 111.562 1.249L11.28 10l3.5 4.375a1 1 0 11-1.562 1.249l-4-5a1 1 0 010-1.25l4-5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `paint_brush` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.paint_brush />
  <PolarisIcons.paint_brush major />
  <PolarisIcons.paint_brush class="w-4 h-4" color="highlight" />
  <PolarisIcons.paint_brush backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def paint_brush(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M20 18c0-.79-1.018-2.488-1.601-3.397a.47.47 0 00-.798 0C17.018 15.512 16 17.21 16 18c0 1.107.893 2 2 2s2-.893 2-2z" fill="#5C5F62"/><path d="M11 0L5.482 5.5l9.018 9.018L20 9l-5-5-3 1 1-3-2-2zM3.488 7.488l.5-.498 9.022 9.023-.538.541c-.575.575-1.493.569-2.173.124-1.053-.69-2.146-1.132-3.248-.913a4.72 4.72 0 00-.378.092c-.506.145-.93.477-1.301.85-.374.374-.656.848-.937 1.321-.383.643-.763 1.284-1.373 1.667a2 2 0 01-2.77-2.738c.383-.624 1.035-1.012 1.69-1.402.475-.283.952-.567 1.328-.943.398-.399.753-.855.89-1.402l.02-.08c.27-1.143-.134-2.351-.858-3.466-.443-.681-.45-1.6.126-2.176z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `pause` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.pause />
  <PolarisIcons.pause minor />
  <PolarisIcons.pause class="w-4 h-4" color="highlight" />
  <PolarisIcons.pause minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def pause(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M6 0a1 1 0 00-1 1v18a1 1 0 102 0V1a1 1 0 00-1-1zm8 0a1 1 0 00-1 1v18a1 1 0 102 0V1a1 1 0 00-1-1z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M11 13a1 1 0 102 0V7a1 1 0 10-2 0v6zm-4 0a1 1 0 102 0V7a1 1 0 00-2 0v6zm3-11a8 8 0 100 16 8 8 0 000-16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `pause_circle` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.pause_circle />
  <PolarisIcons.pause_circle major />
  <PolarisIcons.pause_circle class="w-4 h-4" color="highlight" />
  <PolarisIcons.pause_circle backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def pause_circle(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10c0 5.514 4.486 10 10 10s10-4.486 10-10S15.514 0 10 0 0 4.486 0 10zm7-3a1 1 0 012 0v6a1 1 0 11-2 0V7zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V7a1 1 0 00-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `payments` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.payments />
  <PolarisIcons.payments major />
  <PolarisIcons.payments class="w-4 h-4" color="highlight" />
  <PolarisIcons.payments backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def payments(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.002 5L.55 6.76a.985.985 0 00-.549.9V18c0 .51.38.93.879.99l8.023 1c.04.01.08.01.12.01.43 0 .809-.27.948-.68L11.737 14h3.273c1.297 0 2.405-.84 2.814-2h.679c.828 0 1.497-.67 1.497-1.5V5H4.002zM5 10h10.01c.27 0 .509.1.709.31.19.18.289.42.289.69 0 .55-.449 1-.998 1h-3.992c-.429 0-.808.28-.948.68l-1.736 5.23-6.338-.79V8.27l2.006-1v1.74A1 1 0 005 10zm13.503-9H5.499c-.828 0-1.497.67-1.497 1.5V3H20v-.5c0-.83-.669-1.5-1.497-1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `phone` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.phone />
  <PolarisIcons.phone major />
  <PolarisIcons.phone class="w-4 h-4" color="highlight" />
  <PolarisIcons.phone backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def phone(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7.876 6.976l-.534-2.67A1.5 1.5 0 005.871 3.1H2.638c-.86 0-1.576.727-1.537 1.586.461 10.161 5.499 14.025 14.415 14.413.859.037 1.584-.676 1.584-1.535v-3.235a1.5 1.5 0 00-1.206-1.471l-2.67-.534a1.5 1.5 0 00-1.636.8l-.488.975c-2 0-5-3-5-5l.975-.488c.606-.302.934-.972.801-1.635z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `phone_in` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.phone_in />
  <PolarisIcons.phone_in major />
  <PolarisIcons.phone_in class="w-4 h-4" color="highlight" />
  <PolarisIcons.phone_in backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def phone_in(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M16.094 9.1H12.1a.996.996 0 01-.998-.998V4.106a.997.997 0 011.705-.708.998.998 0 01.293.707V5.69l3.335-3.334a.999.999 0 011.413 1.411l-3.336 3.334h1.584a.999.999 0 010 1.999zM7.342 4.306l.534 2.67a1.495 1.495 0 01-.802 1.634l-.975.488c0 2 3 5 5 5l.488-.975a1.5 1.5 0 011.636-.8l2.67.534a1.5 1.5 0 011.206 1.471v3.235c0 .859-.725 1.572-1.584 1.535C6.6 18.71 1.561 14.847 1.101 4.686 1.062 3.827 1.778 3.1 2.638 3.1h3.233a1.5 1.5 0 011.471 1.206z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `phone_out` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.phone_out />
  <PolarisIcons.phone_out major />
  <PolarisIcons.phone_out class="w-4 h-4" color="highlight" />
  <PolarisIcons.phone_out backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def phone_out(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M13.105 2.1H17.1c.553 0 1 .446 1 .999v3.995a.997.997 0 01-1.705.708.998.998 0 01-.293-.707V5.511l-3.336 3.335a.999.999 0 01-1.413-1.411L14.69 4.1h-1.584a.999.999 0 01-.705-1.707.993.993 0 01.705-.293zM7.342 4.306l.534 2.67a1.495 1.495 0 01-.802 1.634l-.975.488c0 2 3 5 5 5l.488-.975a1.5 1.5 0 011.636-.8l2.67.534a1.5 1.5 0 011.206 1.471v3.235c0 .859-.725 1.572-1.584 1.535C6.6 18.71 1.561 14.847 1.101 4.686 1.062 3.827 1.778 3.1 2.638 3.1h3.233a1.5 1.5 0 011.471 1.206z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `pin` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.pin />
  <PolarisIcons.pin minor />
  <PolarisIcons.pin class="w-4 h-4" color="highlight" />
  <PolarisIcons.pin minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def pin(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M13.707.295l6 6a1.003 1.003 0 01-.066 1.475l-5.65 4.706c-.154 4.105-2.292 5.294-2.544 5.42a1 1 0 01-1.154-.187L7 14.416l-5.293 5.293a1 1 0 01-1.414-1.414l5.293-5.293-3.293-3.293a1.001 1.001 0 01-.188-1.155c.126-.252 1.316-2.389 5.419-2.544L12.231.361a.998.998 0 01.724-.358.966.966 0 01.752.292z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M17.7 7L13 2.3c-.2-.2-.401-.3-.7-.3-.3 0-.6.1-.701.4L8 6.7c-3.3.1-4.2 1.9-4.3 2.1-.2.4-.2.8.2 1.1l2.4 2.4-4 4c-.4.4-.4 1 0 1.4.2.2.4.3.7.3.3 0 .5-.1.7-.3l4-4 2.399 2.4c.201.2.401.3.701.3.2 0 .299 0 .4-.1.2-.1 1.899-1.1 2.1-4.3l4.299-3.6C17.9 8.3 18 8 18 7.7c0-.3-.1-.5-.3-.7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `plan` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.plan />
  <PolarisIcons.plan minor />
  <PolarisIcons.plan class="w-4 h-4" color="highlight" />
  <PolarisIcons.plan minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def plan(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 1a2 2 0 0 0-2 2v3H7a2 2 0 0 0-2 2v3H3a2 2 0 0 0-2 2v3c0 1.1.9 2 2 2h14a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-6Zm0 2h5v3h-5V3ZM7 8h5v3H7V8Zm-4 5h5v3H3v-3Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M11 3a2 2 0 0 0-2 2v2H8a2 2 0 0 0-2 2v2H5a2 2 0 0 0-2 2v2c0 1.1.9 2 2 2h10a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2h-4Zm0 2h4v2h-4V5ZM8 9h4v2H8V9Zm-3 4h4v2H5v-2Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `play` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.play />
  <PolarisIcons.play minor />
  <PolarisIcons.play class="w-4 h-4" color="highlight" />
  <PolarisIcons.play minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def play(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.333 1C3.64 1 3 1.555 3 2.332v15.335a1.328 1.328 0 002.014 1.143l12.787-7.665a1.33 1.33 0 000-2.283L5.015 1.192A1.326 1.326 0 004.333 1zM5 3.515l10.815 6.488L5 16.485V3.515z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M16 10a.997.997 0 01-.485.857l-10 6a1.004 1.004 0 01-1.008.013A1.001 1.001 0 014 16V4a1.001 1.001 0 011.515-.857l10 6c.301.18.485.505.485.857z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `play_circle` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.play_circle />
  <PolarisIcons.play_circle major />
  <PolarisIcons.play_circle class="w-4 h-4" color="highlight" />
  <PolarisIcons.play_circle backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def play_circle(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10zM8 6.862v6.276a.5.5 0 00.748.434l5.492-3.138a.5.5 0 000-.868L8.748 6.427A.5.5 0 008 6.862z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `plus` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.plus minor />
  <PolarisIcons.plus minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.plus minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def plus(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M10 4a1 1 0 0 0-1 1v4H5a1 1 0 1 0 0 2h4v4a1 1 0 1 0 2 0v-4h4a1 1 0 1 0 0-2h-4V5a1 1 0 0 0-1-1Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `point_of_sale` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.point_of_sale />
  <PolarisIcons.point_of_sale major />
  <PolarisIcons.point_of_sale class="w-4 h-4" color="highlight" />
  <PolarisIcons.point_of_sale backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def point_of_sale(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M3.945 2.438A.5.5 0 014.441 2H15.56a.5.5 0 01.496.438l.875 7a.5.5 0 01-.496.562h-3.245c.198.576.577 1.269 1.24 2H18.5a1.5 1.5 0 011.5 1.5v3a1.5 1.5 0 01-1.5 1.5h-17A1.5 1.5 0 010 16.5v-3A1.5 1.5 0 011.5 12h4.072c.663-.731 1.041-1.424 1.24-2H3.566a.5.5 0 01-.496-.562l.875-7zM5.265 8l.5-4h8.47l.5 4h-9.47zm5.848 2a6.6 6.6 0 00.824 2H8.063a6.601 6.601 0 00.824-2h2.226zM10 14a1 1 0 100 2 1 1 0 000-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `popular` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.popular />
  <PolarisIcons.popular major />
  <PolarisIcons.popular class="w-4 h-4" color="highlight" />
  <PolarisIcons.popular backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def popular(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M12.984 18a.999.999 0 01-.94-.658L8.967 8.888l-2.05 5.465a1.001 1.001 0 01-1.794.163L2.935 10.87l-1.124 1.685a1.002 1.002 0 01-1.665-1.11l2.001-3a.966.966 0 01.856-.444.998.998 0 01.834.485l1.936 3.223 2.271-6.059a1 1 0 01.938-.65h.005a1.001 1.001 0 01.935.658l2.948 8.1 3.154-11.033c.12-.42.502-.714.94-.724.43-.026.834.268.97.683l2.002 6a1 1 0 11-1.897.631l-.98-2.932-3.112 10.888a1 1 0 01-.928.726h-.035" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `price_lookup` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.price_lookup minor />
  <PolarisIcons.price_lookup minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.price_lookup minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def price_lookup(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M3 2a1 1 0 000 2h8a1 1 0 100-2H3zm0 4a1 1 0 000 2h4a4.977 4.977 0 00-.901 2.005A1.013 1.013 0 006 10H3a1 1 0 100 2h3c.033 0 .066-.002.099-.005a5.002 5.002 0 007.658 3.177l2.536 2.535a1 1 0 001.414-1.414l-2.535-2.536A5 5 0 0011 6H3zm8 2a3 3 0 100 6 3 3 0 000-6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `print` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.print />
  <PolarisIcons.print minor />
  <PolarisIcons.print class="w-4 h-4" color="highlight" />
  <PolarisIcons.print minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def print(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M3.99995 2.5C3.99995 1.67157 4.67152 1 5.49995 1H14.4999C15.3284 1 15.9999 1.67157 15.9999 2.5V5H17.5005C18.3289 5 19.0005 5.67157 19.0005 6.5V12.5C19.0005 13.3284 18.3289 14 17.5005 14H15.9999V18C15.9999 18.5523 15.5522 19 15 19H4.99995C4.44767 19 3.99995 18.5523 3.99995 18V14H2.50002C1.67159 14 1.00002 13.3284 1.00002 12.5L1 6.5C0.999997 5.67158 1.67157 5 2.5 5H3.99995V2.5ZM14 17V12H5.99995V17H14ZM16.9999 9C16.9999 9.55228 16.5522 10 16 10C15.4477 10 15 9.55228 15 9C15 8.44771 15.4477 8 16 8C16.5522 8 16.9999 8.44771 16.9999 9ZM14 3H6V5H14V3Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M14 11h2V9h-2v2zM7 7h6V4H7v3zm0 9h6v-2H7v2zm8-9V3.5A1.5 1.5 0 0013.5 2h-7A1.5 1.5 0 005 3.5V7H3.5A1.5 1.5 0 002 8.5v6A1.5 1.5 0 003.5 16H5v.5A1.5 1.5 0 006.5 18h7a1.5 1.5 0 001.5-1.5V16h1.5a1.5 1.5 0 001.5-1.5v-6A1.5 1.5 0 0016.5 7H15z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `product_cost` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.product_cost />
  <PolarisIcons.product_cost major />
  <PolarisIcons.product_cost class="w-4 h-4" color="highlight" />
  <PolarisIcons.product_cost backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def product_cost(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17 1H11C10.2322 1 9.46447 1.29335 8.87868 1.87913L1.87868 8.87913C0.707107 10.0507 0.707107 11.9502 1.87868 13.1218L6.87868 18.1218C7.72276 18.9659 8.94468 19.2018 10 18.8296C11.1069 18.4392 11.076 17.9434 11.0249 17.1256C11.013 16.9354 11 16.7278 11 16.5C11 12.5259 14.091 9.27369 18 9.0164C18.3333 9.01093 19 8.8 19 8V3C19 1.89543 18.1046 1 17 1ZM16 6C16 7.10457 15.1046 8 14 8C12.8954 8 12 7.10457 12 6C12 4.89543 12.8954 4 14 4C15.1046 4 16 4.89543 16 6ZM16.3158 11C16.8002 11 17.193 11.3358 17.193 11.75V11.8973C17.6272 12.0275 18.1657 12.271 18.6904 12.7197C19.033 13.0126 19.033 13.4874 18.6904 13.7803C18.3479 14.0732 17.7925 14.0732 17.4499 13.7803C17.1185 13.497 16.8018 13.3666 16.5866 13.3053C16.4775 13.2742 16.3924 13.2603 16.3425 13.2542C16.3229 13.2518 16.3089 13.2506 16.3014 13.2501C15.8232 13.2566 15.4386 13.5896 15.4386 14C15.4386 14.3649 15.5616 14.4539 15.636 14.5016C15.7962 14.6043 16.046 14.6692 16.5285 14.7724L16.5865 14.7847C16.9827 14.8689 17.5743 14.9945 18.0482 15.2984C18.6318 15.6726 18.9474 16.2399 18.9474 17C18.9474 17.98 18.2152 18.8133 17.193 19.122V19.25C17.193 19.6642 16.8002 20 16.3158 20C15.8313 20 15.4386 19.6642 15.4386 19.25V19.1027C15.0044 18.9725 14.4659 18.729 13.9411 18.2803C13.5986 17.9874 13.5986 17.5126 13.9411 17.2197C14.2837 16.9268 14.8391 16.9268 15.1817 17.2197C15.5131 17.503 15.8298 17.6334 16.0449 17.6947C16.154 17.7258 16.2392 17.7397 16.2891 17.7458C16.3087 17.7482 16.3226 17.7494 16.3301 17.7499C16.8083 17.7434 17.193 17.4104 17.193 17C17.193 16.6351 17.07 16.5461 16.9956 16.4984C16.8354 16.3957 16.5856 16.3308 16.103 16.2276L16.0451 16.2153C15.6489 16.1311 15.0572 16.0055 14.5833 15.7016C13.9998 15.3274 13.6842 14.7601 13.6842 14C13.6842 13.02 14.4163 12.1867 15.4386 11.8779V11.75C15.4386 11.3358 15.8313 11 16.3158 11Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `product_returns` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.product_returns minor />
  <PolarisIcons.product_returns minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.product_returns minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def product_returns(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M2 12C2 13.5913 2.63214 15.1174 3.75736 16.2426C4.88258 17.3678 6.4087 18 8 18H17C17.2652 18 17.5196 17.8946 17.7071 17.7071C17.8946 17.5196 18 17.2652 18 17C18 16.7348 17.8946 16.4804 17.7071 16.2929C17.5196 16.1053 17.2652 16 17 16H8C6.93913 16 5.92172 15.5786 5.17157 14.8284C4.42143 14.0783 4 13.0609 4 12C4 10.9391 4.42143 9.92171 5.17157 9.17156C5.92172 8.42142 6.93913 7.99999 8 7.99999H14.526L12.293 10.293C12.1108 10.4816 12.01 10.7342 12.0123 10.9964C12.0146 11.2586 12.1198 11.5094 12.3052 11.6948C12.4906 11.8802 12.7414 11.9854 13.0036 11.9877C13.2658 11.9899 13.5184 11.8891 13.707 11.707L17.707 7.70699C17.8945 7.51946 17.9998 7.26515 17.9998 6.99999C17.9998 6.73483 17.8945 6.48052 17.707 6.29299L13.707 2.29299C13.6148 2.19748 13.5044 2.1213 13.3824 2.06889C13.2604 2.01648 13.1292 1.98889 12.9964 1.98774C12.8636 1.98659 12.7319 2.01189 12.609 2.06217C12.4861 2.11245 12.3745 2.1867 12.2806 2.28059C12.1867 2.37449 12.1125 2.48614 12.0622 2.60904C12.0119 2.73193 11.9866 2.86361 11.9877 2.99639C11.9889 3.12917 12.0165 3.26039 12.0689 3.38239C12.1213 3.5044 12.1975 3.61474 12.293 3.70699L14.526 5.99999H8C6.4087 5.99999 4.88258 6.63213 3.75736 7.75735C2.63214 8.88257 2 10.4087 2 12V12Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `products` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.products />
  <PolarisIcons.products minor />
  <PolarisIcons.products class="w-4 h-4" color="highlight" />
  <PolarisIcons.products minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def products(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 1H17C18.1046 1 19 1.89543 19 3V9C19.0001 9.76792 18.7072 10.5359 18.1213 11.1218L11.1213 18.1218C9.94974 19.2933 8.05025 19.2933 6.87868 18.1218L1.87868 13.1218C0.707107 11.9502 0.707107 10.0507 1.87868 8.87913L8.87868 1.87913C9.46447 1.29335 10.2322 1 11 1ZM14 8C15.1046 8 16 7.10457 16 6C16 4.89543 15.1046 4 14 4C12.8954 4 12 4.89543 12 6C12 7.10457 12.8954 8 14 8Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10.408 3H16a1 1 0 0 1 1 1v5.592a2 2 0 0 1-.57 1.399l-5.162 5.277a2.5 2.5 0 0 1-3.536 0l-4-4a2.5 2.5 0 0 1 0-3.536l.008-.008L9.01 3.57A2 2 0 0 1 10.407 3ZM13.5 8a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `profile` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.profile />
  <PolarisIcons.profile minor />
  <PolarisIcons.profile class="w-4 h-4" color="highlight" />
  <PolarisIcons.profile minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def profile(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M10 0c5.514 0 10 4.486 10 10s-4.486 10-10 10S0 15.514 0 10 4.486 0 10 0zm6.24 15a7.99 7.99 0 01-12.48 0 7.99 7.99 0 0112.48 0zM10 10a3 3 0 100-6 3 3 0 000 6z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10 15c-1.631 0-3.064-.792-3.978-2 .914-1.208 2.347-2 3.978-2 1.631 0 3.064.792 3.978 2-.914 1.208-2.347 2-3.978 2zm0-10c1.104 0 2 .897 2 2s-.896 2-2 2-2-.897-2-2 .896-2 2-2zm0-3c-4.411 0-8 3.589-8 8s3.589 8 8 8 8-3.589 8-8-3.589-8-8-8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `promote` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.promote minor />
  <PolarisIcons.promote minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.promote minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def promote(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M4.5 3A1.5 1.5 0 003 4.5v11A1.5 1.5 0 004.5 17h11a1.5 1.5 0 001.5-1.5V12h-2v3H5V5h3V3H4.5zM17 4a1 1 0 00-1-1h-5a1 1 0 100 2h2.586l-5.293 5.293a.999.999 0 101.414 1.414L15 6.414V9a1 1 0 102 0V4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `question_mark` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.question_mark />
  <PolarisIcons.question_mark minor />
  <PolarisIcons.question_mark class="w-4 h-4" color="highlight" />
  <PolarisIcons.question_mark minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def question_mark(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10C0 4.478 4.478 0 10 0c5.523 0 10 4.478 10 10 0 5.523-4.477 10-10 10-5.522 0-10-4.477-10-10zm11.125 2.002H8.989v-.141c.01-1.966.492-2.254 1.374-2.782.093-.056.19-.114.293-.178.73-.459 1.292-1.038 1.292-1.883 0-.948-.743-1.564-1.666-1.564-.851 0-1.657.398-1.712 1.533H6.304C6.364 4.693 8.18 3.5 10.294 3.5c2.306 0 3.894 1.447 3.894 3.488 0 1.382-.695 2.288-1.805 2.952l-.238.144c-.79.475-1.009.607-1.02 1.777V12zm.17 3.012a1.344 1.344 0 01-1.327 1.328 1.32 1.32 0 01-1.328-1.328 1.318 1.318 0 011.328-1.316c.712 0 1.322.592 1.328 1.316z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M11 11H9v-.148c0-.876.306-1.499 1-1.852.385-.195 1-.568 1-1a1.001 1.001 0 00-2 0H7c0-1.654 1.346-3 3-3s3 1 3 3-2 2.165-2 3zm-2 4h2v-2H9v2zm1-13a8 8 0 100 16 8 8 0 000-16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `question_mark_inverse` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.question_mark_inverse />
  <PolarisIcons.question_mark_inverse minor />
  <PolarisIcons.question_mark_inverse class="w-4 h-4" color="highlight" />
  <PolarisIcons.question_mark_inverse minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def question_mark_inverse(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 2a8 8 0 100 16 8 8 0 000-16zm-7.071.929A10 10 0 1117.07 17.07 10 10 0 012.93 2.93z" fill="#5C5F62"/><path d="M11.126 13.002H8.99V11.86c.01-1.966.492-2.254 1.374-2.782.093-.056.19-.114.293-.178.73-.459 1.292-1.038 1.292-1.883 0-.948-.743-1.564-1.666-1.564-.852 0-1.657.398-1.712 1.533H6.305c.06-2.294 1.877-3.487 3.99-3.487 2.306 0 3.894 1.447 3.894 3.488 0 1.382-.695 2.288-1.806 2.952l-.237.144c-.79.475-1.009.607-1.02 1.777v1.142zm.17 2.012a1.344 1.344 0 01-1.327 1.328 1.32 1.32 0 01-1.227-1.834 1.318 1.318 0 011.227-.81c.712 0 1.322.592 1.328 1.316h-.001z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M11 12H9v-.148c0-.876.306-1.499 1-1.852.385-.195 1-.568 1-1a1.001 1.001 0 00-2 0H7c0-1.654 1.346-3 3-3s3 1 3 3-2 2.165-2 3zm-2 3h2v-2H9v2z" fill="#5C5F62"/><path d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1116 0 8 8 0 01-16 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `quick_sale` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.quick_sale />
  <PolarisIcons.quick_sale major />
  <PolarisIcons.quick_sale class="w-4 h-4" color="highlight" />
  <PolarisIcons.quick_sale backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def quick_sale(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" fill-rule="evenodd" d="M5 0a1 1 0 000 2h1v1a1 1 0 00.917.997l10.943.911L17.133 10H7a1 1 0 00-1 1v3.17A3.001 3.001 0 109.83 16h3.34A3 3 0 1016 14H8v-2h10a1 1 0 00.99-.859l1-7a1 1 0 00-.907-1.138L8 2.08V1a1 1 0 00-1-1H5zm11 16a1 1 0 100 2 1 1 0 000-2zm-9 0a1 1 0 100 2 1 1 0 000-2z"/><path fill="#5C5F62" d="M0 3a1 1 0 011-1h1a1 1 0 010 2H1a1 1 0 01-1-1zM1 6a1 1 0 000 2h6a1 1 0 000-2H1zM0 11a1 1 0 011-1h2a1 1 0 110 2H1a1 1 0 01-1-1zM1 14a1 1 0 100 2h1a1 1 0 100-2H1z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `read_time` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.read_time minor />
  <PolarisIcons.read_time minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.read_time minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def read_time(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M7 4h9v-.5A1.5 1.5 0 0014.5 2H7a3 3 0 00-3 3v11.5A1.5 1.5 0 005.5 18h9a1.5 1.5 0 001.5-1.5v-9A1.5 1.5 0 0014.5 6H14v5l-2-2-2 2V6H6V5a1 1 0 011-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `receipt` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.receipt />
  <PolarisIcons.receipt major />
  <PolarisIcons.receipt class="w-4 h-4" color="highlight" />
  <PolarisIcons.receipt backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def receipt(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M15.5 0h-11C3.672 0 3 .677 3 1.513V19.72a.2.2 0 00.334.15l1.664-1.515a.497.497 0 01.67 0l1.664 1.514c.19.173.48.173.67 0l1.663-1.514a.497.497 0 01.67 0l1.663 1.514c.19.173.48.173.67 0l1.664-1.514a.497.497 0 01.67 0l1.664 1.515a.2.2 0 00.334-.15V1.513C17 .677 16.328 0 15.5 0zM15 5V4H5v2h10V5zm0 3v2H5V8h10zm-4 5v-1H5v2h6v-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `recent_searches` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.recent_searches />
  <PolarisIcons.recent_searches major />
  <PolarisIcons.recent_searches class="w-4 h-4" color="highlight" />
  <PolarisIcons.recent_searches backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def recent_searches(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M8 2C4.691 2 2 4.691 2 8s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6zm6.312 10.897l5.395 5.396a1 1 0 11-1.414 1.414l-5.396-5.395A7.954 7.954 0 018 16c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8a7.946 7.946 0 01-1.688 4.897zM9 5a1 1 0 10-2 0v3a1 1 0 00.293.707l2 2a1 1 0 001.414-1.414L9 7.586V5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `redo` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.redo />
  <PolarisIcons.redo major />
  <PolarisIcons.redo class="w-4 h-4" color="highlight" />
  <PolarisIcons.redo backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def redo(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M16.512 5C14.363 3.066 12.522 2 10 2a8 8 0 00-8 8 8 8 0 008 8 1 1 0 110 2C4.477 20 0 15.523 0 10S4.477 0 10 0c3.297 0 5.644 1.496 8 3.647V1a1 1 0 112 0v5a.998.998 0 01-.29.705l-.005.004A.997.997 0 0119 7h-5a1 1 0 110-2h2.512z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `referral` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.referral />
  <PolarisIcons.referral major />
  <PolarisIcons.referral class="w-4 h-4" color="highlight" />
  <PolarisIcons.referral backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def referral(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10C0 4.486 4.486 0 10 0C15.514 0 20 4.486 20 10C20 15.514 15.514 20 10 20C8.273 20 6.576 19.55 5.076 18.695L2.036 19.899C0.827 20.358 -0.357 19.174 0.101 17.965L1.304 14.924C0.45 13.42 0 11.728 0 10ZM15.7 9.3547C15.8832 9.54163 15.9859 9.79294 15.9859 10.0547C15.9859 10.3165 15.8832 10.5678 15.7 10.7547L12.7 13.7547C12.5131 13.9379 12.2618 14.0406 12 14.0406C11.7382 14.0406 11.4869 13.9379 11.3 13.7547C11.1168 13.5678 11.0141 13.3165 11.0141 13.0547C11.0141 12.7929 11.1168 12.5416 11.3 12.3547L12.59 11.0547H6C5.73478 11.0547 5.48043 10.9493 5.29289 10.7618C5.10536 10.5743 5 10.3199 5 10.0547C5 9.78948 5.10536 9.53513 5.29289 9.34759C5.48043 9.16006 5.73478 9.0547 6 9.0547H12.59L11.29 7.7547C11.186 7.66429 11.1018 7.55338 11.0427 7.4289C10.9836 7.30442 10.9509 7.16907 10.9466 7.03135C10.9422 6.89362 10.9664 6.75649 11.0176 6.62855C11.0688 6.50062 11.1459 6.38464 11.244 6.2879C11.3421 6.19115 11.4592 6.11574 11.5878 6.06637C11.7165 6.01701 11.8539 5.99476 11.9916 6.00104C12.1292 6.00731 12.2641 6.04196 12.3877 6.10282C12.5114 6.16368 12.6211 6.24943 12.71 6.3547L15.71 9.3547H15.7Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `referral_code` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.referral_code />
  <PolarisIcons.referral_code major />
  <PolarisIcons.referral_code class="w-4 h-4" color="highlight" />
  <PolarisIcons.referral_code backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def referral_code(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major: ~S|<path d="M4 3H3V4H1V2.5C1 1.67157 1.67157 1 2.5 1H4V3Z" fill="#5C5F62"/>
<path d="M16.707 6.255C16.6148 6.15949 16.5044 6.0833 16.3824 6.03089C16.2604 5.97848 16.1292 5.9509 15.9964 5.94974C15.8636 5.94859 15.7319 5.97389 15.609 6.02417C15.4861 6.07445 15.3745 6.14871 15.2806 6.2426C15.1867 6.33649 15.1125 6.44814 15.0622 6.57104C15.0119 6.69394 14.9866 6.82562 14.9877 6.9584C14.9889 7.09118 15.0165 7.2224 15.0689 7.3444C15.1213 7.4664 15.1975 7.57675 15.293 7.669L16.586 8.961H12C11.7348 8.961 11.4804 9.06635 11.2929 9.25389C11.1054 9.44142 11 9.69578 11 9.961C11 10.2262 11.1054 10.4806 11.2929 10.6681C11.4804 10.8556 11.7348 10.961 12 10.961H16.586L15.293 12.254C15.1975 12.3462 15.1213 12.4566 15.0689 12.5786C15.0165 12.7006 14.9889 12.8318 14.9877 12.9646C14.9866 13.0974 15.0119 13.2291 15.0622 13.3519C15.1125 13.4748 15.1867 13.5865 15.2806 13.6804C15.3745 13.7743 15.4861 13.8485 15.609 13.8988C15.7319 13.9491 15.8636 13.9744 15.9964 13.9732C16.1292 13.9721 16.2604 13.9445 16.3824 13.8921C16.5044 13.8397 16.6148 13.7635 16.707 13.668L19.707 10.668C19.8 10.5751 19.8737 10.4648 19.9241 10.3434C19.9744 10.222 20.0003 10.0919 20.0003 9.96049C20.0003 9.82908 19.9744 9.69895 19.9241 9.57755C19.8737 9.45616 19.8 9.34587 19.707 9.253L16.707 6.253V6.255Z" fill="#5C5F62"/>
<path d="M7 6H7.99691L8 6L8.00309 6H9V14H7V6Z" fill="#5C5F62"/>
<path d="M19 18C19 18.5523 18.5523 19 18 19H16V17H17V16H19V18Z" fill="#5C5F62"/>
<path d="M2 19C1.44772 19 1 18.5523 1 18V16H3L3 17H4L4 19H2Z" fill="#5C5F62"/>
<path d="M17 3V4H19V2.5C19 1.67157 18.3284 1 17.5 1H16V3H17Z" fill="#5C5F62"/>
<path d="M5 6H1V14H5V6Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `refresh` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.refresh />
  <PolarisIcons.refresh minor />
  <PolarisIcons.refresh class="w-4 h-4" color="highlight" />
  <PolarisIcons.refresh minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def refresh(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19.707 3.293a1 1 0 010 1.414l-3 3a.997.997 0 01-1.631-.324 1 1 0 01.217-1.09L16.586 5H7C4.794 5 3 6.794 3 9a1 1 0 01-2 0c0-3.309 2.691-6 6-6h9.586l-1.293-1.293A1 1 0 1116.707.293l3 3zM17 10a1 1 0 011 1c0 3.31-2.69 6-6 6H3.414l1.293 1.293a1 1 0 11-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 111.414 1.414L3.414 15H12c2.206 0 4-1.794 4-4a1 1 0 011-1z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M17 11a1 1 0 011 1c0 1.654-1.346 3-3 3H5.414l1.293 1.293a.999.999 0 11-1.414 1.414l-3-3a.999.999 0 010-1.414l3-3a.999.999 0 111.414 1.414L5.414 13H15c.552 0 1-.449 1-1a1 1 0 011-1zM3 9a1 1 0 01-1-1c0-1.654 1.346-3 3-3h9.586l-1.293-1.293a.999.999 0 111.414-1.414l3 3a.999.999 0 010 1.414l-3 3a.997.997 0 01-1.414 0 .999.999 0 010-1.414L14.586 7H5c-.552 0-1 .449-1 1a1 1 0 01-1 1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `refund` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.refund />
  <PolarisIcons.refund minor />
  <PolarisIcons.refund class="w-4 h-4" color="highlight" />
  <PolarisIcons.refund minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def refund(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.5 0h11c.828 0 1.5.677 1.5 1.512v18.21a.2.2 0 01-.334.149l-1.664-1.515a.497.497 0 00-.67 0l-1.664 1.514a.497.497 0 01-.67 0l-1.663-1.514a.497.497 0 00-.67 0L8.002 19.87a.497.497 0 01-.67 0l-1.664-1.514a.497.497 0 00-.67 0l-1.664 1.515a.2.2 0 01-.334-.15V1.512C3 .677 3.672 0 4.5 0zM10 7.596H8.415l1.293-1.293a1 1 0 00-1.414-1.414l-3 3a1 1 0 000 1.414l3 3a1 1 0 101.414-1.414L8.414 9.596H10c2.069 0 2.999 1.116 2.999 3a1 1 0 102 0c0-2.916-1.736-5-5-5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M15 12h-2v-1c0-.551-.449-1-1-1H9.414l.586.586A1 1 0 118.586 12L6.293 9.707a1 1 0 010-1.414L8.586 6A1 1 0 1110 7.414L9.414 8H12c1.654 0 3 1.346 3 3v1zm2-8.5A1.5 1.5 0 0015.5 2h-11A1.5 1.5 0 003 3.5V17a1 1 0 001.3.954c.18-.057.317-.195.439-.338l1.121-1.321 1.349 1.399a1.002 1.002 0 001.415.026l1.364-1.318 1.305 1.305a.997.997 0 001.414 0l1.42-1.42 1.136 1.332c.12.141.257.277.434.334A1 1 0 0017 17V3.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `remove_product` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.remove_product />
  <PolarisIcons.remove_product major />
  <PolarisIcons.remove_product class="w-4 h-4" color="highlight" />
  <PolarisIcons.remove_product backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def remove_product(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 1H17C18.1046 1 19 1.89543 19 3V9C19 9.33853 19 10 17.5 10H16C12.6863 10 10 12.6863 10 16V18C10 19.17 9.09077 19.2143 7.99998 18.8296C7.59053 18.6852 7.20617 18.4493 6.87868 18.1218L1.87868 13.1218C0.707107 11.9502 0.707107 10.0507 1.87868 8.87913L8.87868 1.87913C9.46447 1.29335 10.2322 1 11 1ZM14 8C15.1046 8 16 7.10457 16 6C16 4.89543 15.1046 4 14 4C12.8954 4 12 4.89543 12 6C12 7.10457 12.8954 8 14 8ZM19.0003 13.9958C19.2654 13.9958 19.5197 14.1011 19.7072 14.2886C19.8947 14.4761 20 14.7304 20 14.9955C20 15.2606 19.8947 15.5149 19.7072 15.7024C19.5197 15.8899 19.2654 15.9952 19.0003 15.9952H13.0021C12.737 15.9952 12.4827 15.8899 12.2952 15.7024C12.1078 15.5149 12.0024 15.2606 12.0024 14.9955C12.0024 14.7304 12.1078 14.4761 12.2952 14.2886C12.4827 14.1011 12.737 13.9958 13.0021 13.9958H19.0003Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `repeat_order` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.repeat_order />
  <PolarisIcons.repeat_order major />
  <PolarisIcons.repeat_order class="w-4 h-4" color="highlight" />
  <PolarisIcons.repeat_order backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def repeat_order(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M6 8a.992.992 0 01.294-.707l2.999-3a1 1 0 111.414 1.414L9.414 7H15.5a2.5 2.5 0 000-5 1 1 0 110-2C17.981 0 20 2.018 20 4.5 20 6.981 17.981 9 15.5 9H9.414l1.293 1.293A.999.999 0 0110 12.002a.997.997 0 01-.706-.294l-3-3a.99.99 0 01-.217-.326A.992.992 0 016 8zM3 3v11h3.5c.775 0 1.388.662 1.926 1.244l.11.12c.366.391.886.636 1.464.636s1.098-.245 1.463-.637l.11-.119h.001C12.112 14.662 12.725 14 13.5 14H17v-2a1 1 0 112 0v5.5a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 17.5v-15A1.5 1.5 0 012.5 1H7a1 1 0 010 2H3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `replace` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.replace />
  <PolarisIcons.replace major />
  <PolarisIcons.replace class="w-4 h-4" color="highlight" />
  <PolarisIcons.replace backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def replace(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.5 0A1.5 1.5 0 000 1.5v5A1.5 1.5 0 001.5 8h5A1.5 1.5 0 008 6.5v-5A1.5 1.5 0 006.5 0h-5zM13.293 7.707a1 1 0 101.414-1.414L13.414 5H17.5a.5.5 0 01.5.5V9a1 1 0 102 0V5.5A2.5 2.5 0 0017.5 3h-4.086l1.293-1.293A1 1 0 0013.293.293l-3 3a1 1 0 000 1.414l3 3zM6.707 12.293a1 1 0 00-1.414 1.414L6.586 15H2.5a.5.5 0 01-.5-.5V11a1 1 0 10-2 0v3.5A2.5 2.5 0 002.5 17h4.086l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414l-3-3zM20 18.5a1.5 1.5 0 01-1.5 1.5h-5a1.5 1.5 0 01-1.5-1.5v-5a1.5 1.5 0 011.5-1.5h5a1.5 1.5 0 011.5 1.5v5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `replay` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.replay minor />
  <PolarisIcons.replay minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.replay minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def replay(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M13.635 7.666c0 .272.106.528.298.72a1.044 1.044 0 001.441 0L17.7 6.059a1.013 1.013 0 000-1.442L15.374 2.29a1.042 1.042 0 00-1.44 0 1.008 1.008 0 00-.299.72c0 .272.106.528.3.72l.588.59H8.836C5.066 4.318 2 7.388 2 11.158 2 14.933 5.066 18 8.836 18c3.346 0 6.252-2.495 6.757-5.8.002-.009.016-.115.016-.194l.002-.352a1.02 1.02 0 00-1.018-1.019 1.02 1.02 0 00-1.019 1.019v.19c0 .318-.117.658-.139.728-.628 1.97-2.51 3.39-4.599 3.39a4.806 4.806 0 01-4.8-4.802 4.807 4.807 0 014.8-4.803h5.687l-.589.589a1.012 1.012 0 00-.299.72z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `report` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.report minor />
  <PolarisIcons.report minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.report minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def report(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill-rule="evenodd" d="M4.5 3A1.5 1.5 0 003 4.5v11A1.5 1.5 0 004.5 17h11a1.5 1.5 0 001.5-1.5v-11A1.5 1.5 0 0015.5 3h-11zM15 15h-2V9h2v6zm-6 0h2V6H9v9zm-2 0H5v-3h2v3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `reports` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.reports />
  <PolarisIcons.reports major />
  <PolarisIcons.reports class="w-4 h-4" color="highlight" />
  <PolarisIcons.reports backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def reports(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M18 5a1 1 0 00-.293-.707l-4-4A1.002 1.002 0 0013 0H3.5A1.5 1.5 0 002 1.5V6a1 1 0 102 0V2h8.586L16 5.414V18H4v-1a1 1 0 10-2 0v1.5A1.5 1.5 0 003.5 20h13a1.5 1.5 0 001.5-1.5V5z"/><path fill="#5C5F62" d="M9 6a1 1 0 000 2h3v3a1 1 0 102 0V7a1 1 0 00-1-1H9z"/><path fill="#5C5F62" d="M7 13l-.768.64a1 1 0 001.475.067L7 13zm-2.5-3l.768-.64a1 1 0 00-1.52-.018L4.5 10zM.247 13.341a1 1 0 001.506 1.318L.247 13.34zm11.046-6.048l-5 5 1.414 1.414 5-5-1.414-1.414zM7.768 12.36l-2.5-3-1.536 1.28 2.5 3 1.536-1.28zm-4.02-3.018l-3.5 4 1.505 1.316 3.5-4-1.506-1.316z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `reset` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.reset minor />
  <PolarisIcons.reset minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.reset minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def reset(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M17 9a1 1 0 01-1-1c0-.551-.448-1-1-1H5.414l1.293 1.293a.999.999 0 11-1.414 1.414l-3-3a.999.999 0 010-1.414l3-3a.997.997 0 011.414 0 .999.999 0 010 1.414L5.414 5H15c1.654 0 3 1.346 3 3a1 1 0 01-1 1zM3 11a1 1 0 011 1c0 .551.448 1 1 1h9.586l-1.293-1.293a.999.999 0 111.414-1.414l3 3a.999.999 0 010 1.414l-3 3a.999.999 0 11-1.414-1.414L14.586 15H5c-1.654 0-3-1.346-3-3a1 1 0 011-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `resources` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.resources />
  <PolarisIcons.resources major />
  <PolarisIcons.resources class="w-4 h-4" color="highlight" />
  <PolarisIcons.resources backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def resources(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19.986 10.835l-.987-5.926A3.004 3.004 0 0016 2a1 1 0 100 2c.552 0 1 .449 1 1 0 .055.005.11.014.165L17.82 10H12a1 1 0 00-1 1v.19a2.92 2.92 0 00-1-.19c-.35 0-.688.076-1 .19V11a1 1 0 00-1-1H2.18l.806-4.835A.92.92 0 003 5c0-.551.449-1 1-1a1 1 0 000-2 3.004 3.004 0 00-2.999 2.909l-.988 5.926A2.29 2.29 0 000 11v2.5C0 15.981 2.019 18 4.5 18S9 15.981 9 13.5v-.039c.311-.234.714-.461 1-.461.286 0 .689.227 1 .461v.039c0 2.481 2.019 4.5 4.5 4.5s4.5-2.019 4.5-4.5V11c0-.029-.009-.136-.014-.165zM7 13.5C7 14.879 5.878 16 4.5 16A2.503 2.503 0 012 13.5V12h5v1.5zm11 0c0 1.379-1.121 2.5-2.5 2.5a2.502 2.502 0 01-2.5-2.5V12h5v1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `return` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.return minor />
  <PolarisIcons.return minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.return minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def return(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M13.5 13H5.414l1.293 1.293a.999.999 0 11-1.414 1.414l-3-3a.999.999 0 010-1.414l3-3a.997.997 0 011.414 0 .999.999 0 010 1.414L5.414 11H13.5c1.379 0 2.5-1.121 2.5-2.5S14.879 6 13.5 6H3a1 1 0 110-2h10.5C15.981 4 18 6.019 18 8.5S15.981 13 13.5 13z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `risk` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.risk />
  <PolarisIcons.risk minor />
  <PolarisIcons.risk class="w-4 h-4" color="highlight" />
  <PolarisIcons.risk minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def risk(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.16 16.829l7.498-15c.553-1.106 2.13-1.106 2.683 0l7.498 15A1.5 1.5 0 0117.498 19H2.502a1.5 1.5 0 01-1.342-2.171zM10 7a1 1 0 011 1v3a1 1 0 01-2 0V8a1 1 0 011-1zm1 8a1 1 0 11-2 0 1 1 0 012 0z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M9 11a1 1 0 102 0V9a1 1 0 10-2 0v2zm0 4a1 1 0 102 0 1 1 0 00-2 0zm8.895 1.549l-7-14.04c-.339-.679-1.45-.679-1.79 0l-7 14.04A1.004 1.004 0 003 18h14a1 1 0 00.895-1.451z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sandbox` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sandbox />
  <PolarisIcons.sandbox major />
  <PolarisIcons.sandbox class="w-4 h-4" color="highlight" />
  <PolarisIcons.sandbox backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sandbox(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M19.976 13.879a.356.356 0 01-.001-.051c0-.023 0-.046-.005-.07l-1.645-6.58a1 1 0 10-1.94.485L17.72 13H2.28l1.501-6h4.772a1 1 0 100-2H3a1 1 0 00-.97.757l-2 8c-.006.023-.005.046-.005.07 0 .016.001.033-.001.05-.002.02-.007.037-.012.055A.25.25 0 000 14v4.509A1.49 1.49 0 001.491 20h17.018A1.49 1.49 0 0020 18.509V14c0-.024-.006-.046-.012-.068l-.001-.004c-.005-.016-.01-.032-.011-.049z"/><path fill="#5C5F62" d="M14.239 5l.556-2.294.961.242a1.001 1.001 0 00.488-1.94L12.365.03a1 1 0 00-.488 1.94l.978.247-1.725 7.127a3.042 3.042 0 01-.683-.24c-2.403-1.199-4.759-.065-4.891-.001l-.003.001a1.001 1.001 0 00.894 1.79l.003-.001c.081-.037 1.628-.735 3.103.001a5.251 5.251 0 002.366.549c1.398 0 2.45-.51 2.527-.547l.001-.001a1.002 1.002 0 00-.894-1.79c-.11.049-.223.092-.338.128L13.755 7l.484-2z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `save` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.save minor />
  <PolarisIcons.save minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.save minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def save(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M5 5v10h10V7h-2V5h2.5A1.5 1.5 0 0117 6.5v9a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 013 15.5v-11A1.5 1.5 0 014.5 3h3.293a1.5 1.5 0 011.06.44l1.708 1.706A1.5 1.5 0 0111 6.207v3.379l.793-.793a1 1 0 111.414 1.414l-2.5 2.5a1 1 0 01-1.414 0l-2.5-2.5a1 1 0 011.414-1.414L9 9.586V6.414L7.586 5H5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `search` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.search />
  <PolarisIcons.search minor />
  <PolarisIcons.search class="w-4 h-4" color="highlight" />
  <PolarisIcons.search minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def search(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 8c0-3.309 2.691-6 6-6s6 2.691 6 6-2.691 6-6 6-6-2.691-6-6zm17.707 10.293l-5.395-5.396A7.946 7.946 0 0016 8c0-4.411-3.589-8-8-8S0 3.589 0 8s3.589 8 8 8a7.954 7.954 0 004.897-1.688l5.396 5.395A.998.998 0 0020 19a1 1 0 00-.293-.707z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M8 12a4 4 0 110-8 4 4 0 010 8zm9.707 4.293l-4.82-4.82A5.968 5.968 0 0014 8 6 6 0 002 8a6 6 0 006 6 5.968 5.968 0 003.473-1.113l4.82 4.82a.997.997 0 001.414 0 .999.999 0 000-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `section` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.section />
  <PolarisIcons.section major />
  <PolarisIcons.section class="w-4 h-4" color="highlight" />
  <PolarisIcons.section backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def section(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2 1a1 1 0 00-1 1v2h2V3h1V1H2zM18 1a1 1 0 011 1v2h-2V3h-1V1h2zM1 6v8h18V6H1zM2 19a1 1 0 01-1-1v-2h2v1h1v2H2zM19 18a1 1 0 01-1 1h-2v-2h1v-1h2v2zM6 17h3v2H6v-2zM14 17h-3v2h3v-2zM14 1v2h-3V1h3zM9 3V1H6v2h3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `secure` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.secure />
  <PolarisIcons.secure major />
  <PolarisIcons.secure class="w-4 h-4" color="highlight" />
  <PolarisIcons.secure backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def secure(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M9.128.233c-2.37 1.383-5.37 2.33-7.635 2.646-.821.115-1.495.79-1.493 1.62l.001.497c-.03 6.043.477 11.332 9.462 14.903a1.45 1.45 0 001.062 0c8.993-3.571 9.503-8.86 9.473-14.903v-.501c-.001-.828-.674-1.51-1.492-1.638-2.148-.337-5.281-1.274-7.65-2.628a1.733 1.733 0 00-1.728.004zm4.577 8.478a1 1 0 00-1.414-1.415L8.998 10.59 7.705 9.297A1 1 0 106.29 10.71l2 2.001a1 1 0 001.414 0l4-4.001z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `select` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.select minor />
  <PolarisIcons.select minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.select minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def select(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill="#5C5F62" d="M7.676 9h4.648c.563 0 .879-.603.53-1.014L10.531 5.24a.708.708 0 0 0-1.062 0L7.145 7.986C6.798 8.397 7.113 9 7.676 9ZM12.324 11H7.676c-.563 0-.878.603-.53 1.014l2.323 2.746c.27.32.792.32 1.062 0l2.323-2.746c.349-.411.033-1.014-.53-1.014Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `send` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.send />
  <PolarisIcons.send major />
  <PolarisIcons.send class="w-4 h-4" color="highlight" />
  <PolarisIcons.send backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def send(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3.415.189a1 1 0 011.1-.046l15 9a1 1 0 010 1.714l-15 9a1 1 0 01-1.491-1.074L4.754 11H10a1 1 0 100-2H4.753l-1.73-7.783A1 1 0 013.416.189z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `settings` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.settings />
  <PolarisIcons.settings minor />
  <PolarisIcons.settings class="w-4 h-4" color="highlight" />
  <PolarisIcons.settings minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def settings(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M9.027 0a1 1 0 00-.99.859l-.37 2.598A6.993 6.993 0 005.742 4.57L3.305 3.59a1 1 0 00-1.239.428L.934 5.981a1 1 0 00.248 1.287l2.066 1.621a7.06 7.06 0 000 2.222l-2.066 1.621a1 1 0 00-.248 1.287l1.132 1.962a1 1 0 001.239.428l2.438-.979a6.995 6.995 0 001.923 1.113l.372 2.598a1 1 0 00.99.859h2.265a1 1 0 00.99-.859l.371-2.598a6.995 6.995 0 001.924-1.112l2.438.978a1 1 0 001.238-.428l1.133-1.962a1 1 0 00-.249-1.287l-2.065-1.621a7.063 7.063 0 000-2.222l2.065-1.621a1 1 0 00.249-1.287l-1.133-1.962a1 1 0 00-1.239-.428l-2.437.979a6.994 6.994 0 00-1.924-1.113L12.283.86a1 1 0 00-.99-.859H9.027zm1.133 13a3 3 0 100-6 3 3 0 000 6z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M10 13a3 3 0 110-6 3 3 0 010 6zm7.476-1.246c-1.394-.754-1.394-2.754 0-3.508a1 1 0 00.376-1.404l-1.067-1.733a1 1 0 00-1.327-.355l-.447.243c-1.329.719-2.945-.244-2.945-1.755V3a1 1 0 00-1-1H8.934a1 1 0 00-1 1v.242c0 1.511-1.616 2.474-2.945 1.755l-.447-.243a1 1 0 00-1.327.355L2.148 6.842a1 1 0 00.376 1.404c1.394.754 1.394 2.754 0 3.508a1 1 0 00-.376 1.404l1.067 1.733a1 1 0 001.327.355l.447-.243c1.329-.719 2.945.244 2.945 1.755V17a1 1 0 001 1h2.132a1 1 0 001-1v-.242c0-1.511 1.616-2.474 2.945-1.755l.447.243a1 1 0 001.327-.355l1.067-1.733a1 1 0 00-.376-1.404z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `share` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.share minor />
  <PolarisIcons.share minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.share minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def share(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M15 12c-.807 0-1.537.324-2.077.844l-4.96-2.481c.015-.12.037-.238.037-.363s-.022-.243-.037-.363l4.96-2.481c.54.52 1.27.844 2.077.844 1.654 0 3-1.346 3-3s-1.346-3-3-3-3 1.346-3 3c0 .125.022.243.037.363l-4.96 2.481A2.986 2.986 0 005 7c-1.654 0-3 1.346-3 3s1.346 3 3 3c.807 0 1.537-.324 2.077-.844l4.96 2.481c-.015.12-.037.238-.037.363 0 1.654 1.346 3 3 3s3-1.346 3-3-1.346-3-3-3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `share_ios` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.share_ios minor />
  <PolarisIcons.share_ios minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.share_ios minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def share_ios(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M6.293 6.703a.997.997 0 001.414 0L9 5.409v6.589a1 1 0 102 0V5.409l1.293 1.294a1 1 0 101.414-1.415l-3-3.001a.994.994 0 00-.298-.198c-.027-.013-.055-.021-.082-.03l-.012-.003a.944.944 0 00-.257-.05l-.027-.002a.937.937 0 00-.385.06c-.004 0-.008 0-.012.002-.005 0-.009.001-.013.003h-.004a1.002 1.002 0 00-.294.197c-.004.004-.01.007-.015.01l-.015.01-3 3.002a1 1 0 000 1.415zM3.5 9A1.5 1.5 0 002 10.5v6A1.5 1.5 0 003.5 18h13a1.5 1.5 0 001.5-1.5v-6A1.5 1.5 0 0016.5 9H13v2h3v5H4v-5h3V9H3.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `shipment` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.shipment />
  <PolarisIcons.shipment major />
  <PolarisIcons.shipment class="w-4 h-4" color="highlight" />
  <PolarisIcons.shipment backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def shipment(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.5 2A1.5 1.5 0 000 3.5v11A1.5 1.5 0 001.5 16H2a3 3 0 106 0h4a3 3 0 106 0h.5a1.5 1.5 0 001.5-1.5v-3.361a1.5 1.5 0 00-.214-.772l-2.783-4.639A1.5 1.5 0 0015.717 5H13V3.5A1.5 1.5 0 0011.5 2h-10zM15 17a1 1 0 110-2 1 1 0 010 2zM4 16a1 1 0 102 0 1 1 0 00-2 0zm13.234-6H13V7h2.434l1.8 3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `shopcodes` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.shopcodes />
  <PolarisIcons.shopcodes major />
  <PolarisIcons.shopcodes class="w-4 h-4" color="highlight" />
  <PolarisIcons.shopcodes backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def shopcodes(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M2.5 1A1.5 1.5 0 001 2.5V7h6V1H2.5zM7 13H1v4.5A1.5 1.5 0 002.5 19H7v-6zM13 1h4.5A1.5 1.5 0 0119 2.5V7h-6V1zM1 9v2h2V9H1zM9 5h2v2H9V5zM11 1H9v2h2V1zM11 17h1v2H9v-3h2v1zM19 17h-2v2h.5a1.5 1.5 0 001.5-1.5V17zM17 13h2v3h-2v-3zM16 13h-2v6h2v-6zM13 9h6v2h-6V9zM11 9H5v2h4v3h2V9zM13 13h1v3h-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sidebar_left` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sidebar_left />
  <PolarisIcons.sidebar_left major />
  <PolarisIcons.sidebar_left class="w-4 h-4" color="highlight" />
  <PolarisIcons.sidebar_left backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sidebar_left(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 3h3V1h-3v2zM18 1a1 1 0 011 1v2h-2V3h-1V1h2zM19 18a1 1 0 01-1 1h-2v-2h1v-1h2v2zM2.5 19H9V1H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19zM14 19h-3v-2h3v2zM19 14h-2v-3h2v3zM17 9h2V6h-2v3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sidebar_right` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sidebar_right />
  <PolarisIcons.sidebar_right major />
  <PolarisIcons.sidebar_right class="w-4 h-4" color="highlight" />
  <PolarisIcons.sidebar_right backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sidebar_right(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 1H11v18h6.5a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1zM1 2a1 1 0 011-1h2v2H3v1H1V2zM2 19a1 1 0 01-1-1v-2h2v1h1v2H2zM6 1h3v2H6V1zM9 17H6v2h3v-2zM3 6v3H1V6h2zM3 14v-3H1v3h2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `slideshow` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.slideshow />
  <PolarisIcons.slideshow major />
  <PolarisIcons.slideshow class="w-4 h-4" color="highlight" />
  <PolarisIcons.slideshow backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def slideshow(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1 2.5A1.5 1.5 0 012.5 1h15A1.5 1.5 0 0119 2.5v12a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 14.5v-12zM9 5a2 2 0 11-4 0 2 2 0 014 0zm6.57 9H4.427c-.351 0-.548-.368-.343-.632l3.046-3.24a.448.448 0 01.617-.009L9.143 11.6l2.623-3.825a.446.446 0 01.72.016l3.462 5.609c.154.272-.052.6-.377.6z" fill="#5C5F62"/><path d="M6 20a1 1 0 100-2 1 1 0 000 2zM11 19a1 1 0 11-2 0 1 1 0 012 0zM14 20a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `smiley_happy` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.smiley_happy />
  <PolarisIcons.smiley_happy major />
  <PolarisIcons.smiley_happy class="w-4 h-4" color="highlight" />
  <PolarisIcons.smiley_happy backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def smiley_happy(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10zM7.707 8.707a1 1 0 11-1.414-1.414 1 1 0 011.414 1.414zm4.586-1.414a1 1 0 111.414 1.414 1 1 0 01-1.414-1.414zm.011 4.988c-.03.03-.786.72-2.304.72-1.497 0-2.252-.67-2.303-.718a1 1 0 00-1.404 1.424C6.425 13.84 7.653 15 10 15c2.346 0 3.575-1.16 3.707-1.293a.993.993 0 00.005-1.397 1.006 1.006 0 00-1.408-.029z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `smiley_joy` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.smiley_joy />
  <PolarisIcons.smiley_joy major />
  <PolarisIcons.smiley_joy class="w-4 h-4" color="highlight" />
  <PolarisIcons.smiley_joy backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def smiley_joy(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 0C4.486 0 0 4.486 0 10s4.486 10 10 10 10-4.486 10-10S15.514 0 10 0zM7.707 7.707a1 1 0 11-1.414-1.414 1 1 0 011.414 1.414zm6 0a1 1 0 11-1.414-1.414 1 1 0 011.414 1.414zm2.082 3.87A5.997 5.997 0 0110 16a6 6 0 01-5.789-4.422c-.081-.299.155-.578.465-.578h10.649c.309 0 .545.279.464.578z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `smiley_neutral` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.smiley_neutral />
  <PolarisIcons.smiley_neutral major />
  <PolarisIcons.smiley_neutral class="w-4 h-4" color="highlight" />
  <PolarisIcons.smiley_neutral backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def smiley_neutral(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10C0 4.486 4.486 0 10 0s10 4.486 10 10-4.486 10-10 10S0 15.514 0 10zm7.707-1.293a1 1 0 11-1.414-1.414 1 1 0 011.414 1.414zm4.586-1.414a1 1 0 111.414 1.414 1 1 0 01-1.414-1.414zm1.414 5A1 1 0 0013 12H7a1 1 0 000 2h6a1 1 0 00.707-1.707z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `smiley_sad` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.smiley_sad />
  <PolarisIcons.smiley_sad major />
  <PolarisIcons.smiley_sad class="w-4 h-4" color="highlight" />
  <PolarisIcons.smiley_sad backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def smiley_sad(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M0 10C0 4.486 4.486 0 10 0s10 4.486 10 10-4.486 10-10 10S0 15.514 0 10zm7.707-.293a1 1 0 11-1.414-1.414 1 1 0 011.414 1.414zm4.586-1.414a1 1 0 111.414 1.414 1 1 0 01-1.414-1.414zM10 12c-.247 0-2.451.036-3.707 1.293a1 1 0 101.414 1.414c.57-.57 1.881-.705 2.29-.707.415.002 1.726.137 2.296.707A.998.998 0 0014 14a1 1 0 00-.293-.707C12.451 12.036 10.247 12 10 12z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `social_ad` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.social_ad />
  <PolarisIcons.social_ad major />
  <PolarisIcons.social_ad class="w-4 h-4" color="highlight" />
  <PolarisIcons.social_ad backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def social_ad(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15.5 20a1.5 1.5 0 001.5-1.5V11a1 1 0 00-2 0v7H2V4h7a1 1 0 000-2H1.5A1.5 1.5 0 000 3.5v15A1.5 1.5 0 001.5 20h14zm-.056-15.168a.999.999 0 001.263-.125l2-2a1 1 0 00-1.414-1.414l-2 2a1 1 0 00.15 1.54zM17 8h2a1 1 0 100-2h-2a1 1 0 100 2zm-4.707-4.293A1 1 0 0014 3V1a1 1 0 00-2 0v2a1 1 0 00.293.707zM11 6H4v6h9V6h-2zm-7 8h9v2H4v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `social_post` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.social_post />
  <PolarisIcons.social_post major />
  <PolarisIcons.social_post class="w-4 h-4" color="highlight" />
  <PolarisIcons.social_post backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def social_post(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M4 7h9v2H4zM4 11h7v2H4z"/><path fill="#5C5F62" d="M16 10a1 1 0 011 1v4.5a1.5 1.5 0 01-1.5 1.5H7.636l-2.818 2.707A1 1 0 013.111 19v-2H1.5A1.5 1.5 0 010 15.5v-11A1.5 1.5 0 011.5 3H9a1 1 0 010 2H2v10h2.111a1 1 0 011 1v.697l1.404-1.404A1 1 0 017.222 15H15v-4a1 1 0 011-1zm0-5a.999.999 0 01-.707-1.707l2-2a1 1 0 111.414 1.414l-2 2A.996.996 0 0116 5zm3 1a1 1 0 110 2h-2a1 1 0 110-2h2zm-6-2a1 1 0 01-1-1V1a1 1 0 012 0v2a1 1 0 01-1 1z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `soft_pack` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.soft_pack />
  <PolarisIcons.soft_pack major />
  <PolarisIcons.soft_pack class="w-4 h-4" color="highlight" />
  <PolarisIcons.soft_pack backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def soft_pack(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M2 1.5v17c0 .8.7 1.5 1.5 1.5h13.1c.8 0 1.5-.7 1.5-1.5v-17c0-.8-.7-1.5-1.5-1.5H3.5C2.7 0 2 .7 2 1.5zM16 18H4V2h12v16z"/><path fill="#5C5F62" d="M6 4H3v2h3V4zM17 4h-3v2h3V4zM12 4H8v2h4V4zM10 10H6v2h4v-2zM12 14H6v2h6v-2z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sort` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sort minor />
  <PolarisIcons.sort minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.sort minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sort(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M5.293 2.293a.997.997 0 011.414 0l3 3a1 1 0 01-1.414 1.414L7 5.414V13a1 1 0 11-2 0V5.414L3.707 6.707a1 1 0 01-1.414-1.414l3-3zM13 7a1 1 0 012 0v7.585l1.293-1.292a.999.999 0 111.414 1.414l-3 3a.997.997 0 01-1.414 0l-3-3a.997.997 0 010-1.414.999.999 0 011.414 0L13 14.585V7z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sort_ascending` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sort_ascending />
  <PolarisIcons.sort_ascending major />
  <PolarisIcons.sort_ascending class="w-4 h-4" color="highlight" />
  <PolarisIcons.sort_ascending backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sort_ascending(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M12.3237 9H7.67626C7.11302 9 6.79751 8.39719 7.14549 7.98592L9.46923 5.23956C9.73949 4.92015 10.2605 4.92015 10.5308 5.23956L12.8545 7.98592C13.2025 8.39719 12.887 9 12.3237 9Z" fill="#5C5F62"/><path d="M7.67626 11H12.3237C12.887 11 13.2025 11.6028 12.8545 12.0141L10.5308 14.7604C10.2605 15.0799 9.73949 15.0799 9.46923 14.7604L7.14549 12.0141C6.79751 11.6028 7.11302 11 7.67626 11Z" fill="#5C5F62" fill-opacity="50%"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sort_descending` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sort_descending />
  <PolarisIcons.sort_descending major />
  <PolarisIcons.sort_descending class="w-4 h-4" color="highlight" />
  <PolarisIcons.sort_descending backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sort_descending(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M12.3237 9H7.67626C7.11302 9 6.79751 8.39719 7.14549 7.98592L9.46923 5.23956C9.73949 4.92015 10.2605 4.92015 10.5308 5.23956L12.8545 7.98592C13.2025 8.39719 12.887 9 12.3237 9Z" fill="#5C5F62" fill-opacity="50%"/><path d="M7.67626 11H12.3237C12.887 11 13.2025 11.6028 12.8545 12.0141L10.5308 14.7604C10.2605 15.0799 9.73949 15.0799 9.46923 14.7604L7.14549 12.0141C6.79751 11.6028 7.11302 11 7.67626 11Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `sound` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.sound />
  <PolarisIcons.sound major />
  <PolarisIcons.sound class="w-4 h-4" color="highlight" />
  <PolarisIcons.sound backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def sound(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M13.548 2.892a1 1 0 11.904-1.784C17.755 2.782 19.83 6.158 19.83 10c0 3.832-2.08 7.212-5.376 8.891a1 1 0 11-.908-1.782c2.628-1.338 4.284-4.03 4.284-7.109 0-3.087-1.651-5.774-4.282-7.108zm-1.214 4.154a1 1 0 111.332-1.492C14.95 6.7 15.673 8.268 15.673 10c0 1.733-.723 3.3-2.007 4.446a1 1 0 11-1.332-1.492c.865-.771 1.339-1.8 1.339-2.954 0-1.154-.474-2.182-1.339-2.954zM1.499 14.001A1.5 1.5 0 010 12.5V7.5A1.5 1.5 0 011.5 6h2.15l4.725-3.78A1 1 0 0110 3v14a1 1 0 01-1.625.781l-4.726-3.78H1.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `star_filled` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.star_filled minor />
  <PolarisIcons.star_filled minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.star_filled minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def star_filled(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M5.2 18a.8.8 0 01-.792-.914l.743-5.203-2.917-2.917a.8.8 0 01.434-1.355l4.398-.733 2.218-4.435a.8.8 0 011.435.008l2.123 4.361 4.498.801a.8.8 0 01.425 1.353l-2.917 2.917.744 5.203a.8.8 0 01-1.154.828l-4.382-2.22-4.502 2.223A.792.792 0 015.2 18z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `star_outline` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.star_outline minor />
  <PolarisIcons.star_outline minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.star_outline minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def star_outline(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M6.71 15.116l3.357-1.658.892.452 2.327 1.178-.56-3.912.708-.707 1.29-1.29-3.235-.576-.445-.915-1.059-2.176L8.4 8.683l-1.005.168-2.098.35 1.975 1.975-.141.99-.422 2.95zM5.2 18a.8.8 0 01-.792-.914l.743-5.203-2.917-2.917a.8.8 0 01.434-1.355l4.398-.733 2.218-4.435a.8.8 0 011.435.008l2.123 4.361 4.498.801a.8.8 0 01.425 1.353l-2.917 2.917.744 5.203a.8.8 0 01-1.154.828l-4.382-2.22-4.502 2.223A.792.792 0 015.2 18z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `status_active` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.status_active />
  <PolarisIcons.status_active major />
  <PolarisIcons.status_active class="w-4 h-4" color="highlight" />
  <PolarisIcons.status_active backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def status_active(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7.519 2.395a8 8 0 0 1 5.12.053 1 1 0 0 0 .66-1.888 10 10 0 1 0 6.568 7.812 1 1 0 1 0-1.974.326A8 8 0 1 1 7.52 2.395Z" fill="#5C5F62"/><path d="M17.847 4.74a1.125 1.125 0 0 0-1.694-1.48l-6.208 7.094-2.15-2.15a1.125 1.125 0 0 0-1.59 1.591l3 3a1.125 1.125 0 0 0 1.642-.054l7-8Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `store` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.store />
  <PolarisIcons.store minor />
  <PolarisIcons.store class="w-4 h-4" color="highlight" />
  <PolarisIcons.store minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def store(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.791 2.253l-.597 3.583A1 1 0 002.18 7h.893a1.5 1.5 0 001.342-.83L5 5l.585 1.17A1.5 1.5 0 006.927 7h1.146a1.5 1.5 0 001.342-.83L10 5l.585 1.17a1.5 1.5 0 001.342.83h1.146a1.5 1.5 0 001.342-.83L15 5l.585 1.17a1.5 1.5 0 001.342.83h.893a1 1 0 00.986-1.164l-.597-3.583A1.5 1.5 0 0016.729 1H3.271a1.5 1.5 0 00-1.48 1.253z" fill="#5C5F62"/><path d="M18 9H2v8.5A1.5 1.5 0 003.5 19H7v-7h6v7h3.5a1.5 1.5 0 001.5-1.5V9z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M2.55381 3.1277L2.01228 6.3524C1.99069 6.48128 1.99763 6.61327 2.03263 6.73921C2.06762 6.86516 2.12984 6.98203 2.21494 7.08172C2.30005 7.1814 2.40601 7.26151 2.52546 7.31647C2.64491 7.37144 2.77499 7.39994 2.90666 7.4H3.71668C3.96949 7.39999 4.21731 7.33009 4.43232 7.19815C4.64734 7.0662 4.82105 6.87743 4.93398 6.653L5.46462 5.6L5.99526 6.653C6.10818 6.87743 6.28189 7.0662 6.49691 7.19815C6.71192 7.33009 6.95974 7.39999 7.21255 7.4H8.25206C8.50488 7.39999 8.75269 7.33009 8.96771 7.19815C9.18272 7.0662 9.35644 6.87743 9.46936 6.653L10 5.6L10.5306 6.653C10.6436 6.87743 10.8173 7.0662 11.0323 7.19815C11.2473 7.33009 11.4951 7.39999 11.7479 7.4H12.7874C13.0403 7.39999 13.2881 7.33009 13.5031 7.19815C13.7181 7.0662 13.8918 6.87743 14.0047 6.653L14.5354 5.6L15.066 6.653C15.1789 6.87743 15.3527 7.0662 15.5677 7.19815C15.7827 7.33009 16.0305 7.39999 16.2833 7.4H17.0933C17.225 7.39994 17.3551 7.37144 17.4745 7.31647C17.594 7.26151 17.7 7.1814 17.7851 7.08172C17.8702 6.98203 17.9324 6.86516 17.9674 6.73921C18.0024 6.61327 18.0093 6.48128 17.9877 6.3524L17.4462 3.1277C17.3932 2.81249 17.2291 2.52616 16.9833 2.31967C16.7375 2.11317 16.4258 1.9999 16.1037 2H3.89628C3.57419 1.9999 3.26251 2.11317 3.01669 2.31967C2.77086 2.52616 2.60684 2.81249 2.55381 3.1277Z" fill="#5C5F62"/><path d="M17 16.65V9H3V16.65C3 17.008 3.14146 17.3514 3.39327 17.6046C3.64508 17.8578 3.9866 18 4.34271 18H7.0162V12H12.9838V18H15.6573C16.0134 18 16.3549 17.8578 16.6067 17.6046C16.8585 17.3514 17 17.008 17 16.65Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `store_status` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.store_status />
  <PolarisIcons.store_status major />
  <PolarisIcons.store_status class="w-4 h-4" color="highlight" />
  <PolarisIcons.store_status backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def store_status(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M14 10a3.987 3.987 0 00-1.172-2.828l1.415-1.415A6 6 0 119 4.083V2.062A8.001 8.001 0 0010 18a8 8 0 005.657-13.657L17.07 2.93A9.969 9.969 0 0120 10c0 5.523-4.477 10-10 10S0 15.523 0 10 4.477 0 10 0c.338 0 .671.017 1 .05v8.218a2 2 0 11-2 0V6.126A4.002 4.002 0 0010 14a4 4 0 004-4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tablet` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tablet />
  <PolarisIcons.tablet major />
  <PolarisIcons.tablet class="w-4 h-4" color="highlight" />
  <PolarisIcons.tablet backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tablet(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M2 1.5A1.5 1.5 0 013.5 0h13A1.5 1.5 0 0118 1.5v17a1.5 1.5 0 01-1.5 1.5h-13A1.5 1.5 0 012 18.5v-17zM4 2h12v14H4V2zm6 17a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tap_chip` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tap_chip />
  <PolarisIcons.tap_chip major />
  <PolarisIcons.tap_chip class="w-4 h-4" color="highlight" />
  <PolarisIcons.tap_chip backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tap_chip(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M5 1.5A1.5 1.5 0 016.5 0h12A1.5 1.5 0 0120 1.5v8a1.5 1.5 0 01-1.5 1.5H14v5.5a2.5 2.5 0 01-2.5 2.5h-8A2.5 2.5 0 011 16.5V6a4 4 0 014-4v-.5zM5 4a2 2 0 00-2 2v7h9v-2H6.5A1.5 1.5 0 015 9.5V4zm3 2a1 1 0 011-1h1a1 1 0 110 2H9a1 1 0 01-1-1zM3 16.5V15h9v1.5a.5.5 0 01-.5.5h-8a.5.5 0 01-.5-.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tax` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tax />
  <PolarisIcons.tax major />
  <PolarisIcons.tax class="w-4 h-4" color="highlight" />
  <PolarisIcons.tax backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tax(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M4.5 0h11c.828 0 1.5.677 1.5 1.512v18.21a.2.2 0 01-.334.149l-1.664-1.515a.497.497 0 00-.67 0l-1.664 1.514a.497.497 0 01-.67 0l-1.663-1.514a.497.497 0 00-.67 0L8.002 19.87a.497.497 0 01-.67 0l-1.664-1.514a.497.497 0 00-.67 0l-1.664 1.559a.2.2 0 01-.334-.15V1.512C3 .677 3.672 0 4.5 0zm3 9a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm6.5 3.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zm-.293-4.793a1 1 0 00-1.414-1.414l-6 6a1 1 0 101.414 1.414l6-6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `team` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.team />
  <PolarisIcons.team major />
  <PolarisIcons.team class="w-4 h-4" color="highlight" />
  <PolarisIcons.team backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def team(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M6.086 9.882a5 5 0 113.91-5.063l4.378.73A3 3 0 0120 7a3 3 0 01-3.919 2.857l-2.866 3.763a4 4 0 11-5.77-.697l-1.36-3.041zm1.826-.817l1.342 3.005a4.022 4.022 0 012.407.29l2.83-3.716a2.983 2.983 0 01-.446-1.123L9.67 6.792a5.015 5.015 0 01-1.757 2.273z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `template` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.template />
  <PolarisIcons.template minor />
  <PolarisIcons.template class="w-4 h-4" color="highlight" />
  <PolarisIcons.template minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def template(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 1H12v6h7V2.5A1.5 1.5 0 0017.5 1zM19 9h-5v10h3.5a1.5 1.5 0 001.5-1.5V9zM1 9h11v10H2.5A1.5 1.5 0 011 17.5V9zm1.5-8A1.5 1.5 0 001 2.5V7h11V1H2.5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M15.8333 3H11.5556V7H17V4.16667C17 3.85725 16.8771 3.5605 16.6583 3.34171C16.4395 3.12292 16.1428 3 15.8333 3ZM17 9H13V17H15.8333C16.1428 17 16.4395 16.8771 16.6583 16.6583C16.8771 16.4395 17 16.1428 17 15.8333V9ZM3 9H11V17H4.16667C3.85725 17 3.5605 16.8771 3.34171 16.6583C3.12292 16.4395 3 16.1428 3 15.8333V9ZM4.16667 3C3.85725 3 3.5605 3.12292 3.34171 3.34171C3.12292 3.5605 3 3.85725 3 4.16667V7H11.5556V3H4.16667Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `text` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.text />
  <PolarisIcons.text major />
  <PolarisIcons.text class="w-4 h-4" color="highlight" />
  <PolarisIcons.text backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def text(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M8.24 9l.816 2.33a1 1 0 001.888-.66L7.609 1.142a1.705 1.705 0 00-3.218 0L1.056 10.67a1 1 0 001.888.66L3.759 9h4.482zm-.7-2L6 2.599 4.46 7h3.08zM15.5 5c.608 0 1.18.155 1.68.428A.999.999 0 0119 6v5a1 1 0 01-1.82.572A3.5 3.5 0 1115.5 5zm0 5a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" fill="#5C5F62"/><path d="M2 14a1 1 0 100 2h16a1 1 0 100-2H2zM2 18a1 1 0 100 2h12a1 1 0 100-2H2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `text_alignment_center` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.text_alignment_center />
  <PolarisIcons.text_alignment_center major />
  <PolarisIcons.text_alignment_center class="w-4 h-4" color="highlight" />
  <PolarisIcons.text_alignment_center backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def text_alignment_center(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h14a1 1 0 110 2H3a1 1 0 010-2zm2 4h10a1 1 0 110 2H5a1 1 0 010-2zm-2 4h14a1 1 0 010 2H3a1 1 0 010-2zm2 4h10a1 1 0 010 2H5a1 1 0 010-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `text_alignment_left` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.text_alignment_left />
  <PolarisIcons.text_alignment_left major />
  <PolarisIcons.text_alignment_left class="w-4 h-4" color="highlight" />
  <PolarisIcons.text_alignment_left backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def text_alignment_left(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h14a1 1 0 110 2H3a1 1 0 010-2zm0 4h10a1 1 0 110 2H3a1 1 0 010-2zm0 4h14a1 1 0 010 2H3a1 1 0 010-2zm0 4h10a1 1 0 010 2H3a1 1 0 010-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `text_alignment_right` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.text_alignment_right />
  <PolarisIcons.text_alignment_right major />
  <PolarisIcons.text_alignment_right class="w-4 h-4" color="highlight" />
  <PolarisIcons.text_alignment_right backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def text_alignment_right(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3 3h14a1 1 0 110 2H3a1 1 0 010-2zm4 4h10a1 1 0 110 2H7a1 1 0 010-2zm-4 4h14a1 1 0 010 2H3a1 1 0 010-2zm4 4h10a1 1 0 010 2H7a1 1 0 010-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `text_block` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.text_block />
  <PolarisIcons.text_block major />
  <PolarisIcons.text_block class="w-4 h-4" color="highlight" />
  <PolarisIcons.text_block backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def text_block(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M2.5 1A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1h-15zM16 5H4v2h12V5zM4 9h12v2H4V9zm6 4H4v2h6v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `theme_edit` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.theme_edit />
  <PolarisIcons.theme_edit major />
  <PolarisIcons.theme_edit class="w-4 h-4" color="highlight" />
  <PolarisIcons.theme_edit backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def theme_edit(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" fill-rule="evenodd" d="M0 1.5A1.5 1.5 0 011.5 0h5A1.5 1.5 0 018 1.5V2h5a1 1 0 110 2H8v1.5A1.5 1.5 0 016.5 7H5v2H3V7H1.5A1.5 1.5 0 010 5.5v-4zM2 5V2h4v3H2z"/><path fill="#5C5F62" d="M5 17v1h1v2H4.5A1.5 1.5 0 013 18.5V17h2zM3 14v-3h2v3H3zM12 20H8v-2h4v2zM14 18h1v-1h2v1.5a1.5 1.5 0 01-1.5 1.5H14v-2zM16.907 4.841l2.252 2.252.375-.376a1.592 1.592 0 00-2.252-2.25l-.375.374zM18.125 8.124l-2.251-2.251-7.143 7.143L8 16l2.982-.731 7.143-7.144z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `theme_store` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.theme_store />
  <PolarisIcons.theme_store major />
  <PolarisIcons.theme_store class="w-4 h-4" color="highlight" />
  <PolarisIcons.theme_store backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def theme_store(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M1.5 0A1.5 1.5 0 000 1.5v4A1.5 1.5 0 001.5 7H3v11.5A1.5 1.5 0 004.5 20H8a1 1 0 100-2H5V7h1.5A1.5 1.5 0 008 5.5V5h7a1 1 0 102 0v-.5A1.5 1.5 0 0015.5 3H8V1.5A1.5 1.5 0 006.5 0h-5zM2 2v3h4V2H2z" fill="#5C5F62"/><path fill-rule="evenodd" d="M9 8a1 1 0 00-1 1v5a1 1 0 00.293.707l5 5a1 1 0 001.414 0l5-5a1 1 0 000-1.414l-5-5A1 1 0 0014 8H9zm4 4a1 1 0 11-2 0 1 1 0 012 0z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `themes` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.themes />
  <PolarisIcons.themes major />
  <PolarisIcons.themes class="w-4 h-4" color="highlight" />
  <PolarisIcons.themes backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def themes(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 1H14v6h5V2.5A1.5 1.5 0 0017.5 1zM19 9h-5v10h3.5a1.5 1.5 0 001.5-1.5V9zM1 14h11v5H2.5A1.5 1.5 0 011 17.5V14zM2.5 1A1.5 1.5 0 001 2.5V12h11V1H2.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `thumbs_down` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.thumbs_down />
  <PolarisIcons.thumbs_down minor />
  <PolarisIcons.thumbs_down class="w-4 h-4" color="highlight" />
  <PolarisIcons.thumbs_down minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def thumbs_down(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.008 13a.904.904 0 00.896 1.023c.387 0 2.01-.007 3.488-.013L8 14c-.059 0-1.234 2.103-1.234 3.29A2.711 2.711 0 009.479 20l2.712-6H14V3h-2.382a1.81 1.81 0 01-.809-.19l-.753-.377C9 2 7.6 2 5.774 2H3.859c-.68 0-1.255.503-1.345 1.176L1.008 13zM17.5 14a1.5 1.5 0 001.5-1.5v-8A1.5 1.5 0 0017.5 3H16v11h1.5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M9.437 15.996A.502.502 0 019 15.5V12a1 1 0 00-1-1H4.248l1.554-7h3.896L12 5.535v6.188l-2.563 4.273zM17 4h-3.697l-2.748-1.832A.995.995 0 0010 2H5c-.468 0-.874.326-.976.783l-2 9A1 1 0 003 13h4v2.5C7 16.878 8.122 18 9.5 18h.5a1 1 0 00.858-.485L13.567 13H17a1 1 0 001-1V5a1 1 0 00-1-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `thumbs_up` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.thumbs_up />
  <PolarisIcons.thumbs_up minor />
  <PolarisIcons.thumbs_up class="w-4 h-4" color="highlight" />
  <PolarisIcons.thumbs_up minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def thumbs_up(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M18.992 7a.904.904 0 00-.896-1.023c-.387 0-2.01.007-3.488.013L12 6c.059 0 1.234-2.103 1.234-3.29A2.711 2.711 0 0010.521 0L7.81 6H6v11h2.382c.28 0 .557.065.808.19l.754.377C11 18 12.4 18 14.226 18h1.915c.68 0 1.255-.503 1.345-1.176L18.992 7zM2.5 6A1.5 1.5 0 001 7.5v8A1.5 1.5 0 002.5 17H4V6H2.5z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M14.198 16h-3.896L8 14.465V8.277l2.563-4.273A.502.502 0 0111 4.5V8a1 1 0 001 1h3.753l-1.555 7zm3.582-8.625A1 1 0 0017 7h-4V4.5C13 3.122 11.88 2 10.5 2H10a1 1 0 00-.858.485L6.433 7H3a1 1 0 00-1 1v7a1 1 0 001 1h3.697l2.748 1.832c.164.109.357.168.555.168h5a1 1 0 00.976-.783l2-9a1 1 0 00-.196-.842z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tick` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tick minor />
  <PolarisIcons.tick minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.tick minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tick(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M7.293 14.707l-3-3a.999.999 0 111.414-1.414l2.236 2.236 6.298-7.18a.999.999 0 111.518 1.3l-7 8a1 1 0 01-.72.35 1.017 1.017 0 01-.746-.292z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tick_small` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tick_small minor />
  <PolarisIcons.tick_small minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.tick_small minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tick_small(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M14.7232 6.23741C15.0707 6.57449 15.0942 7.14584 14.7756 7.51356L9.40976 13.7071C9.25243 13.8887 9.03181 13.9944 8.79903 13.9998C8.56625 14.0051 8.3415 13.9097 8.17686 13.7355L5.25003 10.6387C4.91666 10.2859 4.91666 9.71406 5.25003 9.36133C5.5834 9.00859 6.12391 9.00859 6.45729 9.36133L8.75367 11.791L13.5171 6.2929C13.8356 5.92518 14.3756 5.90034 14.7232 6.23741Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `timeline_attachment` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.timeline_attachment />
  <PolarisIcons.timeline_attachment major />
  <PolarisIcons.timeline_attachment class="w-4 h-4" color="highlight" />
  <PolarisIcons.timeline_attachment backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def timeline_attachment(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M17 4a1 1 0 011 1v13.5a1.5 1.5 0 01-1.5 1.5h-13A1.5 1.5 0 012 18.5v-17A1.5 1.5 0 013.5 0H8v2H4v16h12V5a1 1 0 011-1z"/><path fill="#5C5F62" d="M8 5v6c0 1.206.799 3 3 3s3-1.794 3-3V3c0-1.206-.799-3-3-3h-1v2h1c.805 0 .988.55 1 1v7.988c-.012.462-.195 1.012-1 1.012-.805 0-.988-.55-1-1V5a1 1 0 10-2 0z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tips` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tips />
  <PolarisIcons.tips major />
  <PolarisIcons.tips class="w-4 h-4" color="highlight" />
  <PolarisIcons.tips backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tips(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M17.5 0h-11C5.672 0 5 .677 5 1.512V3h4.5A1.5 1.5 0 0111 4.5v9A1.5 1.5 0 019.5 15H5v4.721a.2.2 0 00.334.15l1.664-1.515a.497.497 0 01.67 0l1.664 1.514c.19.173.48.173.67 0l1.663-1.514a.497.497 0 01.67 0l1.663 1.514c.19.173.48.173.67 0l1.664-1.514a.497.497 0 01.67 0l1.664 1.515a.2.2 0 00.334-.15V1.512C19 .677 18.328 0 17.5 0zM8.707 6.707a1 1 0 00-1.414-1.414l-6 6a1 1 0 101.414 1.414l6-6zM2.5 8a1.5 1.5 0 100-3 1.5 1.5 0 000 3zM9 11.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM17 3h-4v2h4V3zm-4 4h4v2h-4V7zm4 4h-4v2h4v-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `title` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.title minor />
  <PolarisIcons.title minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.title minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def title(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path d="M3 2a1 1 0 00-1 1v3a1 1 0 002 0 2 2 0 012-2h2v10.999A1 1 0 017 16h-.001A1 1 0 007 18h6a1 1 0 100-2 1 1 0 01-1-1V4h2a2 2 0 012 2 1 1 0 102 0V3a1 1 0 00-1-1H3z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `toggle` icon.

  This icon only contains a minor variant which much be explicitly specified.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.toggle minor />
  <PolarisIcons.toggle minor class="w-4 h-4" color="highlight" />
  <PolarisIcons.toggle minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :minor, :boolean, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def toggle(assigns) do
    svg(
      assign(assigns,
        paths: %{
          minor:
            ~S|<path fill="#5C5F62" d="M2 10C2 6.68629 4.68629 4 8 4H12C15.3137 4 18 6.68629 18 10C18 13.3137 15.3137 16 12 16H8C4.68629 16 2 13.3137 2 10ZM8 14C10.2091 14 12 12.2091 12 10C12 7.79086 10.2091 6 8 6C5.79086 6 4 7.79086 4 10C4 12.2091 5.79086 14 8 14Z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `tools` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.tools />
  <PolarisIcons.tools major />
  <PolarisIcons.tools class="w-4 h-4" color="highlight" />
  <PolarisIcons.tools backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def tools(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M18.414 1.586a2 2 0 010 2.828l-3 3-1.115 1.115-2.828-2.828 1.232-1.233.015-.015 2.868-2.867a2 2 0 012.828 0zm-8.47 11.299l-2.788-2.787a4.67 4.67 0 01-5.919-5.901L3.76 6.719a1.5 1.5 0 002.121 0l.84-.84a1.5 1.5 0 000-2.12L4.197 1.236a4.67 4.67 0 015.9 5.919l2.787 2.787 5.506 5.506a2.08 2.08 0 01-2.942 2.942l-5.506-5.506zm-1.415 1.414l-3.287 3.287L1 19l1.414-4.243 3.287-3.286 2.828 2.828z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transaction` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transaction />
  <PolarisIcons.transaction major />
  <PolarisIcons.transaction class="w-4 h-4" color="highlight" />
  <PolarisIcons.transaction backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transaction(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11.293 8.293L12.586 7H3v11a1 1 0 11-2 0V2a1 1 0 012 0v3h9.586l-1.293-1.293a1 1 0 011.414-1.414l2.999 2.999a1 1 0 010 1.416l-2.999 2.999A.998.998 0 0111 9a1 1 0 01.293-.707zM18 1a1 1 0 011 1v16a1 1 0 01-2 0v-3H7.414l1.293 1.293a1 1 0 11-1.414 1.414l-2.999-2.999a1 1 0 010-1.416l2.999-2.999a1 1 0 011.414 1.414L7.414 13H17V2a1 1 0 011-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transaction_fee_dollar` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transaction_fee_dollar />
  <PolarisIcons.transaction_fee_dollar major />
  <PolarisIcons.transaction_fee_dollar class="w-4 h-4" color="highlight" />
  <PolarisIcons.transaction_fee_dollar backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transaction_fee_dollar(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 13c-1.103 0-2-.897-2-2V4h5.185A2.995 2.995 0 0017 6c1.654 0 3-1.346 3-3s-1.346-3-3-3a2.997 2.997 0 00-2.816 2H5.816A2.997 2.997 0 003 0C1.346 0 0 1.346 0 3s1.346 3 3 3a2.997 2.997 0 002.816-2H7v7c0 2.206 1.794 4 4 4a1 1 0 000-2zm5.977-2c.026.001.649.04 1.316.707a1 1 0 001.414-1.414A4.49 4.49 0 0018 9.2V9a1 1 0 00-2 0v.185A2.995 2.995 0 0014 12c0 2.28 1.725 2.712 2.756 2.97h.002C17.873 15.249 18 15.354 18 16c0 .552-.448 1-.976 1-.026-.001-.65-.04-1.317-.707a1 1 0 00-1.414 1.414c.479.49 1.062.863 1.707 1.093v.2a1 1 0 002 0v-.185A2.992 2.992 0 0020 16c0-2.28-1.725-2.712-2.756-2.97h-.001C16.128 12.751 16 12.646 16 12c0-.552.449-1 .977-1z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transaction_fee_euro` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transaction_fee_euro />
  <PolarisIcons.transaction_fee_euro major />
  <PolarisIcons.transaction_fee_euro class="w-4 h-4" color="highlight" />
  <PolarisIcons.transaction_fee_euro backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transaction_fee_euro(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 13a1 1 0 010 2c-2.206 0-4-1.794-4-4V4H5.816A2.997 2.997 0 013 6C1.346 6 0 4.654 0 3s1.346-3 3-3c1.302 0 2.401.839 2.816 2h8.368A2.997 2.997 0 0117 0c1.654 0 3 1.346 3 3s-1.346 3-3 3a2.995 2.995 0 01-2.815-2H9v7c0 1.103.897 2 2 2zm3.014.992c-.011-.333-.006-.667.014-1h-.278a.75.75 0 110-1.5h.49C14.696 9.468 15.807 8 17.326 8c1.142 0 1.911.334 2.47 1.385a.992.992 0 01-1.75.932c-.16-.298-.24-.333-.72-.333-.335 0-.757.581-1.036 1.508h.959a.75.75 0 110 1.5h-1.232a8.24 8.24 0 00-.019 1h1.251a.75.75 0 110 1.5h-1.042c.272 1.102.749 1.812 1.119 1.812h.073c.313 0 .426 0 .496-.054.04-.03.066-.078.106-.152l.004-.007a.993.993 0 011.738.958c-.555 1.006-1.205 1.24-2.366 1.239h-.051c-1.594 0-2.739-1.617-3.151-3.796h-.426a.75.75 0 110-1.5h.265z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transaction_fee_pound` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transaction_fee_pound />
  <PolarisIcons.transaction_fee_pound major />
  <PolarisIcons.transaction_fee_pound class="w-4 h-4" color="highlight" />
  <PolarisIcons.transaction_fee_pound backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transaction_fee_pound(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 13a1 1 0 010 2c-2.206 0-4-1.794-4-4V4H5.816A2.997 2.997 0 013 6C1.346 6 0 4.654 0 3s1.346-3 3-3c1.302 0 2.401.839 2.816 2h8.368A2.997 2.997 0 0117 0c1.654 0 3 1.346 3 3s-1.346 3-3 3a2.995 2.995 0 01-2.815-2H9v7c0 1.103.897 2 2 2zm3.244 3H14a1 1 0 010-2h.472c.019-.34.028-.682.028-1.027 0-1.894 1.057-3.246 2.555-3.483 1.504-.239 2.867.785 2.867 2.4a1 1 0 01-2 0c0-.323-.21-.48-.555-.425-.487.077-.867.563-.867 1.508 0 .345-.009.687-.026 1.027H18a1 1 0 010 2h-1.73a18.706 18.706 0 01-.422 2H18.5a1 1 0 010 2h-4a1 1 0 01-1-1 .999.999 0 01.056-.354c.302-.86.53-1.742.688-2.646z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transaction_fee_rupee` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transaction_fee_rupee />
  <PolarisIcons.transaction_fee_rupee major />
  <PolarisIcons.transaction_fee_rupee class="w-4 h-4" color="highlight" />
  <PolarisIcons.transaction_fee_rupee backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transaction_fee_rupee(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 13a1 1 0 010 2c-2.206 0-4-1.794-4-4V4H5.816A2.997 2.997 0 013 6C1.346 6 0 4.654 0 3s1.346-3 3-3c1.302 0 2.401.839 2.816 2h8.368A2.997 2.997 0 0117 0c1.654 0 3 1.346 3 3s-1.346 3-3 3a2.995 2.995 0 01-2.815-2H9v7c0 1.103.897 2 2 2zm4.848 2.562l2.08 2.761a1 1 0 11-1.596 1.204l-3.01-3.993a1 1 0 011.259-1.49c.233.037.492.056.776.056.702 0 1.242-.478 1.494-1.235H13.75a.75.75 0 110-1.5h3.23c-.091-.72-.395-1.283-.844-1.58H14a1 1 0 110-2h5a1 1 0 110 2h-.944c.232.467.38 1.004.431 1.58h.763a.75.75 0 110 1.5h-.849c-.298 1.407-1.21 2.486-2.553 2.697z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transaction_fee_yen` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transaction_fee_yen />
  <PolarisIcons.transaction_fee_yen major />
  <PolarisIcons.transaction_fee_yen class="w-4 h-4" color="highlight" />
  <PolarisIcons.transaction_fee_yen backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transaction_fee_yen(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 13a1 1 0 010 2c-2.206 0-4-1.794-4-4V4H5.816A2.997 2.997 0 013 6C1.346 6 0 4.654 0 3s1.346-3 3-3c1.302 0 2.401.839 2.816 2h8.368A2.997 2.997 0 0117 0c1.654 0 3 1.346 3 3s-1.346 3-3 3a2.995 2.995 0 01-2.815-2H9v7c0 1.103.897 2 2 2zm6.475 3.454h1.25a.75.75 0 110 1.5h-1.25v1a1 1 0 01-2 0v-1h-1.25a.75.75 0 110-1.5h1.25v-.75h-1.25a.75.75 0 110-1.5h.859L13.234 11a1 1 0 011.732-1l1.515 2.624L17.996 10a1 1 0 111.732 1l-1.85 3.204h.847a.75.75 0 110 1.5h-1.25v.75z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transfer` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transfer />
  <PolarisIcons.transfer major />
  <PolarisIcons.transfer class="w-4 h-4" color="highlight" />
  <PolarisIcons.transfer backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transfer(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M9 14h8V3H6v8H4V2.5A1.5 1.5 0 015.5 1h12A1.5 1.5 0 0119 2.5v12a1.5 1.5 0 01-1.5 1.5H9v-2z" fill="#5C5F62"/><path d="M9 5a1 1 0 000 2h2.586l-3.293 3.293a1 1 0 101.414 1.414L13 8.414V11a1 1 0 102 0V6c0-.025 0-.05-.003-.075A1 1 0 0014 5H9zM0 14.5A1.5 1.5 0 011.5 13h4A1.5 1.5 0 017 14.5v4A1.5 1.5 0 015.5 20h-4A1.5 1.5 0 010 18.5v-4z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transfer_in` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transfer_in />
  <PolarisIcons.transfer_in major />
  <PolarisIcons.transfer_in class="w-4 h-4" color="highlight" />
  <PolarisIcons.transfer_in backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transfer_in(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M8.586 13H2a1 1 0 010-2h6.586L7.293 9.707a1 1 0 011.414-1.414l3 3a1 1 0 010 1.414l-3 3a.997.997 0 01-1.631-.324 1 1 0 01.217-1.09L8.586 13zM19 18.5a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 18.5V15h2v3h14V5.618l-7-3.5-7 3.5V9H1V5c0-.379.214-.725.553-.895l8-4c.281-.14.613-.14.894 0l8 4c.339.17.553.516.553.895v13.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transfer_out` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transfer_out />
  <PolarisIcons.transfer_out major />
  <PolarisIcons.transfer_out class="w-4 h-4" color="highlight" />
  <PolarisIcons.transfer_out backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transfer_out(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4.414 13l1.293 1.293a1 1 0 11-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 011.414 1.414L4.414 11H11a1 1 0 010 2H4.414zM19 18.5a1.5 1.5 0 01-1.5 1.5H2.286C1.576 20 1 19.424 1 18.714V18a1 1 0 112 0h14V5.618l-7-3.5-7 3.5V6a1 1 0 01-2 0V5c0-.379.214-.725.553-.895l8-4c.281-.14.613-.14.894 0l8 4c.339.17.553.516.553.895v13.5z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transfer_within_shopify` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transfer_within_shopify />
  <PolarisIcons.transfer_within_shopify major />
  <PolarisIcons.transfer_within_shopify class="w-4 h-4" color="highlight" />
  <PolarisIcons.transfer_within_shopify backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transfer_within_shopify(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M7 2.202L9.801 4.07 6.47 6.152A1 1 0 006 7v2h2V7.554l5-3.125 5 3.125V18H8v-3H6v3.5A1.5 1.5 0 007.5 20h11a1.5 1.5 0 001.5-1.5V7a1 1 0 00-.47-.848l-6-3.75a1.003 1.003 0 00-1.06 0l-.807.505L7.555.168a1 1 0 00-1.11 0l-6 4A1.001 1.001 0 000 5v13h2V5.535l5-3.333zM5 13h6.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L11.586 11H5a1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `transport` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.transport />
  <PolarisIcons.transport major />
  <PolarisIcons.transport class="w-4 h-4" color="highlight" />
  <PolarisIcons.transport backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def transport(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M1.282 13.469a.506.506 0 01-.132-.814l1.093-1.087a1.537 1.537 0 011.084-.447h2.43L7.72 9.168 1.328 6.342a.507.507 0 01-.154-.823l1.972-1.96a1.538 1.538 0 011.357-.422l7.855 1.42 2.98-2.964a2.174 2.174 0 013.027.038 2.15 2.15 0 01.038 3.01L15.39 7.638l1.442 8.607a1.52 1.52 0 01-.662 1.518l-1.736 1.151a.512.512 0 01-.75-.216l-2.898-6.482-1.964 1.953v2.417c0 .404-.162.791-.45 1.077L7.28 18.75a.512.512 0 01-.818-.132l-1.726-3.433-3.453-1.716z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `troubleshoot` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.troubleshoot />
  <PolarisIcons.troubleshoot major />
  <PolarisIcons.troubleshoot class="w-4 h-4" color="highlight" />
  <PolarisIcons.troubleshoot backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def troubleshoot(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M19 5.893a4.893 4.893 0 01-6.681 4.557l-8.167 8.166a1.957 1.957 0 01-2.768-2.768L9.55 7.682a4.893 4.893 0 015.454-6.6c.363.068.463.508.199.766l-2.97 2.898 2.936 2.936 2.985-2.913c.26-.254.692-.152.76.205.056.298.086.605.086.92z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `type` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.type />
  <PolarisIcons.type minor />
  <PolarisIcons.type class="w-4 h-4" color="highlight" />
  <PolarisIcons.type minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def type(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M9 0c-.6 0-1.1.4-1.4 1L2 17.3a1 1 0 01-.9.7 1 1 0 100 2h4a1 1 0 100-2 1 1 0 01-.9-1.2L5 14h7l.9 2.8A1 1 0 0112 18a1 1 0 100 2h7a1 1 0 100-2 1 1 0 01-1-.7L12.5 1c-.3-.6-.8-1-1.5-1H9zm-.5 4.3L5.8 12h5.4L8.5 4.3z" fill="#5C5F62"/>|,
          minor:
            ~S|<path fill-rule="evenodd" d="M10.824 3.58071L14.7546 14.5863C14.8967 14.9843 15.2737 15.25 15.6963 15.25H16.125C16.6082 15.25 17 15.6418 17 16.125C17 16.6082 16.6082 17 16.125 17H11.75C11.2668 17 10.875 16.6082 10.875 16.125C10.875 15.6418 11.2668 15.25 11.75 15.25C11.9977 15.25 12.1707 15.0046 12.0874 14.7712L11.3209 12.625H6.92913L6.16261 14.7712C6.07929 15.0046 6.25225 15.25 6.5 15.25C6.98325 15.25 7.375 15.6418 7.375 16.125C7.375 16.6082 6.98325 17 6.5 17H3.875C3.39175 17 3 16.6082 3 16.125C3 15.6418 3.39175 15.25 3.875 15.25C4.02994 15.25 4.16816 15.1526 4.22027 15.0067L8.30098 3.58071C8.42535 3.23246 8.75521 3 9.125 3H10C10.3698 3 10.6997 3.23246 10.824 3.58071ZM7.55413 10.875L9.125 6.47656L10.6959 10.875H7.55413Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `undo` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.undo />
  <PolarisIcons.undo major />
  <PolarisIcons.undo class="w-4 h-4" color="highlight" />
  <PolarisIcons.undo backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def undo(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M3.488 5C5.637 3.066 7.478 2 10 2a8 8 0 018 8 8 8 0 01-8 8 1 1 0 100 2c5.523 0 10-4.477 10-10S15.523 0 10 0C6.703 0 4.356 1.496 2 3.647V1a1 1 0 00-2 0v5a.998.998 0 001 1h5a1 1 0 000-2H3.488z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `unfulfilled` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.unfulfilled />
  <PolarisIcons.unfulfilled major />
  <PolarisIcons.unfulfilled class="w-4 h-4" color="highlight" />
  <PolarisIcons.unfulfilled backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def unfulfilled(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M3 3v11h3.5c.775 0 1.388.662 1.926 1.244l.11.12c.366.391.886.636 1.464.636s1.098-.245 1.463-.637l.111-.119C12.112 14.662 12.725 14 13.5 14H17V3H3zm3-2H2.5A1.5 1.5 0 001 2.5v15A1.5 1.5 0 002.5 19h15a1.5 1.5 0 001.5-1.5v-15A1.5 1.5 0 0017.5 1H6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `unknown_device` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.unknown_device />
  <PolarisIcons.unknown_device major />
  <PolarisIcons.unknown_device class="w-4 h-4" color="highlight" />
  <PolarisIcons.unknown_device backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def unknown_device(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M4 2h1V0H3.5A1.5 1.5 0 002 1.5V3h2V2zM8.685 12.502h2.136v-.141c.011-1.17.23-1.302 1.02-1.777l.238-.144c1.11-.664 1.805-1.57 1.805-2.952C13.884 5.448 12.296 4 9.99 4 7.877 4 6.06 5.193 6 7.487h2.267c.054-1.135.86-1.533 1.711-1.533.924 0 1.666.616 1.666 1.564 0 .845-.561 1.424-1.292 1.883-.102.064-.2.122-.293.178-.882.528-1.363.816-1.374 2.782v.14zM9.664 16.842c.712 0 1.322-.591 1.328-1.328a1.342 1.342 0 00-1.328-1.316c-.737 0-1.334.592-1.328 1.316a1.32 1.32 0 001.328 1.328zM4 18v-1H2v1.5A1.5 1.5 0 003.5 20H5v-2H4zM15 18h1v-1h2v1.5a1.5 1.5 0 01-1.5 1.5H15v-2zM4 11v4H2v-4h2zM4 9V5H2v4h2zM18 11v4h-2v-4h2zM18 9V5h-2v4h2zM16 3V2h-1V0h1.5A1.5 1.5 0 0118 1.5V3h-2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `update_inventory` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.update_inventory />
  <PolarisIcons.update_inventory major />
  <PolarisIcons.update_inventory class="w-4 h-4" color="highlight" />
  <PolarisIcons.update_inventory backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def update_inventory(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M18 5.65l-8-3.555L2 5.65V19H0V5c0-.396.232-.753.594-.913l9-4a.999.999 0 01.812 0l9 4A1 1 0 0120 5v14h-2V5.65z" fill="#5C5F62"/><path d="M9 15a.997.997 0 01-.707-.293l-2-2a1 1 0 011.414-1.414L9 12.586l3.293-3.293a1 1 0 111.414 1.415l-4 4A.999.999 0 019 15z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `upload` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.upload />
  <PolarisIcons.upload major />
  <PolarisIcons.upload class="w-4 h-4" color="highlight" />
  <PolarisIcons.upload backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def upload(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M20 10c0 5.523-4.477 10-10 10S0 15.523 0 10 4.477 0 10 0s10 4.477 10 10zM5.293 8.293l4-4a1 1 0 011.414 0l4 4a1 1 0 01-1.414 1.414L11 7.414V15a1 1 0 11-2 0V7.414L6.707 9.707a1 1 0 01-1.414-1.414z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `variant` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.variant />
  <PolarisIcons.variant major />
  <PolarisIcons.variant class="w-4 h-4" color="highlight" />
  <PolarisIcons.variant backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def variant(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M17.5 1A1.5 1.5 0 0119 2.5v12a1.5 1.5 0 01-1.5 1.5H14v2.5a1.5 1.5 0 01-1.5 1.5h-11A1.5 1.5 0 010 18.5v-11A1.5 1.5 0 011.5 6H4V2.5A1.5 1.5 0 015.5 1h12zM11 14h6V8l-6 6zm-9 4h10v-2.027l-6.495.022A1.5 1.5 0 014 14.495V8H2v10zM12 3H6v6l6-6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `view` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.view />
  <PolarisIcons.view minor />
  <PolarisIcons.view class="w-4 h-4" color="highlight" />
  <PolarisIcons.view minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def view(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" fill-rule="evenodd" d="M19.928 9.629C17.791 4.286 13.681 1.85 9.573 2.064c-4.06.21-7.892 3.002-9.516 7.603L-.061 10l.118.333c1.624 4.601 5.455 7.393 9.516 7.603 4.108.213 8.218-2.222 10.355-7.565l.149-.371-.149-.371zM10 15a5 5 0 100-10 5 5 0 000 10z"/><circle fill="#5C5F62" cx="10" cy="10" r="3"/>|,
          minor:
            ~S|<path d="M17.928 9.628C17.837 9.399 15.611 4 10 4S2.162 9.399 2.07 9.628a1.017 1.017 0 000 .744C2.163 10.601 4.389 16 10 16c5.611 0 7.837-5.399 7.928-5.628a1.017 1.017 0 000-.744zM10 14a4 4 0 110-8 4 4 0 010 8zm0-6a2 2 0 10.002 4.001A2 2 0 009.999 8z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `viewport_narrow` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.viewport_narrow />
  <PolarisIcons.viewport_narrow major />
  <PolarisIcons.viewport_narrow class="w-4 h-4" color="highlight" />
  <PolarisIcons.viewport_narrow backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def viewport_narrow(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M14.414 9H19a1 1 0 110 2h-4.586l1.293 1.293a1 1 0 01-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 111.414 1.414L14.414 9zM5.707 6.293l3 3a.999.999 0 010 1.414l-3 3a.997.997 0 01-1.631-.324 1 1 0 01.217-1.09L5.586 11H1a1 1 0 010-2h4.586L4.293 7.707a1 1 0 011.414-1.414zM8 2v4L6 4V1.5A1.5 1.5 0 017.5 0h5A1.5 1.5 0 0114 1.5V4l-2 2V2H8zM14 16l-2-2v4H8v-4l-2 2v2.5A1.5 1.5 0 007.5 20h5a1.5 1.5 0 001.5-1.5V16z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `viewport_short` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.viewport_short />
  <PolarisIcons.viewport_short major />
  <PolarisIcons.viewport_short class="w-4 h-4" color="highlight" />
  <PolarisIcons.viewport_short backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def viewport_short(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M11 14.414V19a1 1 0 0 1-2 0v-4.586l-1.293 1.293a1 1 0 0 1-1.414-1.414l3-3a1 1 0 0 1 1.414 0l3 3a1 1 0 0 1-1.414 1.414L11 14.414Zm2.707-8.707-3 3a1 1 0 0 1-1.414 0l-3-3a.997.997 0 0 1 .324-1.631.999.999 0 0 1 1.09.217L9 5.586V1a1 1 0 0 1 2 0v4.586l1.293-1.293a1 1 0 1 1 1.414 1.414ZM18 8h-4l2-2h2.5A1.5 1.5 0 0 1 20 7.5v5a1.5 1.5 0 0 1-1.5 1.5H16l-2-2h4V8ZM4 14l2-2H2V8h4L4 6H1.5A1.5 1.5 0 0 0 0 7.5v5A1.5 1.5 0 0 0 1.5 14H4Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `viewport_tall` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.viewport_tall />
  <PolarisIcons.viewport_tall major />
  <PolarisIcons.viewport_tall class="w-4 h-4" color="highlight" />
  <PolarisIcons.viewport_tall backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def viewport_tall(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="m13.707 16.707-3 3a.999.999 0 0 1-1.414 0l-3-3a.997.997 0 0 1 .324-1.631 1 1 0 0 1 1.09.217L9 16.586V12a1 1 0 0 1 2 0v4.586l1.293-1.293a1 1 0 0 1 1.414 1.414Zm0-13.414a1 1 0 0 1-1.414 1.414L11 3.414V8a1 1 0 1 1-2 0V3.414L7.707 4.707a1.002 1.002 0 0 1-1.414 0 1 1 0 0 1 0-1.414l3-3a.997.997 0 0 1 1.414 0l3 3Z" fill="#5C5F62"/><path d="M18.5 1A1.5 1.5 0 0 1 20 2.5v15a1.5 1.5 0 0 1-1.5 1.5H14l2-2h2V3h-2l-2-2h4.5ZM2 17h2l2 2H1.5A1.5 1.5 0 0 1 0 17.5v-15A1.5 1.5 0 0 1 1.5 1H6L4 3H2v14Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `viewport_wide` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.viewport_wide />
  <PolarisIcons.viewport_wide major />
  <PolarisIcons.viewport_wide class="w-4 h-4" color="highlight" />
  <PolarisIcons.viewport_wide backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def viewport_wide(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M16.707 6.293l3 3a.998.998 0 010 1.414l-3 3a.997.997 0 01-1.631-.324 1 1 0 01.217-1.09L16.586 11H12a1 1 0 110-2h4.586l-1.293-1.293a1 1 0 111.414-1.414zM3.293 6.293a1 1 0 111.414 1.414L3.414 9H8a1 1 0 010 2H3.414l1.293 1.293a1.003 1.003 0 010 1.414 1 1 0 01-1.414 0l-3-3a.998.998 0 010-1.414l3-3z"/><path fill="#5C5F62" d="M1 1.5A1.5 1.5 0 012.5 0h15A1.5 1.5 0 0119 1.5V6l-2-2V2H3v2L1 6V1.5zM17 18v-2l2-2v4.5a1.5 1.5 0 01-1.5 1.5h-15A1.5 1.5 0 011 18.5V14l2 2v2h14z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `vocabulary` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.vocabulary />
  <PolarisIcons.vocabulary major />
  <PolarisIcons.vocabulary class="w-4 h-4" color="highlight" />
  <PolarisIcons.vocabulary backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def vocabulary(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill="#5C5F62" d="M20 1.5A1.5 1.5 0 0018.5 0H12c-.768 0-1.469.29-2 .766A2.987 2.987 0 008 0H1.5A1.5 1.5 0 000 1.5v15A1.5 1.5 0 001.5 18H8a1 1 0 011 1 1 1 0 102 0 1 1 0 011-1h6.5a1.5 1.5 0 001.5-1.5v-15zM18 16h-6c-.352 0-.687.067-1 .179V3a1 1 0 011-1h6v14zM8 16H2V2h6a1 1 0 011 1v13.179A2.959 2.959 0 008 16z"/><path fill="#5C5F62" d="M4 4h3v2H4zM13 4h3v2h-3zM4 8h3v2H4zM13 8h3v2h-3zM4 12h3v2H4z"/>|
        }
      )
    )
  end

  @doc """
  Renders the `wand` icon.

  This icon contains a major (default) and minor variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.wand />
  <PolarisIcons.wand minor />
  <PolarisIcons.wand class="w-4 h-4" color="highlight" />
  <PolarisIcons.wand minor backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true
  attr :minor, :boolean, default: false
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def wand(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M15.6656 0.376176C16.161 -0.125392 16.8545 -0.125392 17.3498 0.376176L19.6285 2.68339C20.1238 3.18495 20.1238 3.88715 19.6285 4.38871L15.9628 8L12 3.98746L15.6656 0.376176Z" fill="#5C5F62"/>
<path d="M10.9933 5L15 9.00668L4.3823 19.6244C3.88147 20.1252 3.1803 20.1252 2.67947 19.6244L0.375626 17.3205C-0.125209 16.8197 -0.125209 16.1185 0.375626 15.6177L10.9933 5Z" fill="#5C5F62"/>
<path d="M16 13C16 12.4 16.4 12 17 12C17.6 12 18 12.4 18 13C18 13.6 18.4 14 19 14C19.6 14 20 14.4 20 15C20 15.6 19.6 16 19 16C18.4 16 18 16.4 18 17C18 17.6 17.6 18 17 18C16.4 18 16 17.6 16 17C16 16.4 15.6 16 15 16C14.4 16 14 15.6 14 15C14 14.4 14.4 14 15 14C15.6 14 16 13.6 16 13Z" fill="#5C5F62"/>
<path d="M4 1C4 0.4 4.4 0 5 0C5.6 0 6 0.4 6 1C6 1.6 6.4 2 7 2C7.6 2 8 2.4 8 3C8 3.6 7.6 4 7 4C6.4 4 6 4.4 6 5C6 5.6 5.6 6 5 6C4.4 6 4 5.6 4 5C4 4.4 3.6 4 3 4C2.4 4 2 3.6 2 3C2 2.4 2.4 2 3 2C3.6 2 4 1.6 4 1Z" fill="#5C5F62"/>|,
          minor:
            ~S|<path d="M3.44 15.56a1.5 1.5 0 0 1 0-2.12l6.792-6.793 3.121 3.12-6.792 6.794a1.5 1.5 0 0 1-2.122 0l-1-1ZM14.768 8.354 16.56 6.56a1.5 1.5 0 0 0 0-2.122l-1-1a1.5 1.5 0 0 0-2.122 0l-1.793 1.793 3.122 3.122ZM13 12c1 0 2-1 2-2 0 1 1 2 2 2-1 0-2 1-2 2 0-1-1-2-2-2ZM6 5c1 0 2-1 2-2 0 1 1 2 2 2-1 0-2 1-2 2 0-1-1-2-2-2Z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `wearable` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.wearable />
  <PolarisIcons.wearable major />
  <PolarisIcons.wearable class="w-4 h-4" color="highlight" />
  <PolarisIcons.wearable backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def wearable(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M6 4a3 3 0 00-3 3v6a3 3 0 003 3v2.5A1.5 1.5 0 007.5 20h5a1.5 1.5 0 001.5-1.5V16a3 3 0 003-3v-1a1 1 0 001-1V9a1 1 0 00-1-1V7a3 3 0 00-3-3V1.5A1.5 1.5 0 0012.5 0h-5A1.5 1.5 0 006 1.5V4zm2 0V2h4v2H8zm4 12v2H8v-2h4zM6 6a1 1 0 00-1 1v6a1 1 0 001 1h8a1 1 0 001-1V7a1 1 0 00-1-1H6z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `wholesale` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.wholesale />
  <PolarisIcons.wholesale major />
  <PolarisIcons.wholesale class="w-4 h-4" color="highlight" />
  <PolarisIcons.wholesale backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def wholesale(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path fill-rule="evenodd" d="M17 3a1 1 0 10-2 0v5.392a2.5 2.5 0 00-.32-1.223l-2.184-3.892A2.5 2.5 0 0010.316 2H7.5A2.5 2.5 0 005 4.5V6H2.5A1.5 1.5 0 001 7.5v2.585A1.5 1.5 0 000 11.5V17a3 3 0 106 0h3a3 3 0 106 0v-2h4a1 1 0 100-2h-2V3zM3 10h2V8H3v2zm10-1.608V10H7V4.5a.5.5 0 01.5-.5h2.816a.5.5 0 01.436.255l2.184 3.892a.5.5 0 01.064.245zM4 17a1 1 0 11-2 0 1 1 0 012 0zm8 1a1 1 0 100-2 1 1 0 000 2z" fill="#5C5F62"/>|
        }
      )
    )
  end

  @doc """
  Renders the `wifi` icon.

  This icon only contains a major variant.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <PolarisIcons.wifi />
  <PolarisIcons.wifi major />
  <PolarisIcons.wifi class="w-4 h-4" color="highlight" />
  <PolarisIcons.wifi backdrop />
  ```
  """
  attr :rest, :global,
    doc: "the arbitrary HTML attributes for the svg container",
    include: ~w(fill stroke stroke-width)

  attr :major, :boolean, default: true, values: [true]
  attr :backdrop, :boolean, default: false
  attr :color, :string, default: nil, values: @shopify_color_values

  def wifi(assigns) do
    svg(
      assign(assigns,
        paths: %{
          major:
            ~S|<path d="M10 18a1.501 1.501 0 010-3 1.501 1.501 0 010 3zM1.004 8a.997.997 0 01-.607-1.795C3.106 4.138 6.516 3 10 3c3.483 0 6.892 1.137 9.598 3.202a1 1 0 11-1.212 1.59C16.026 5.991 13.048 5 10 5c-3.05 0-6.029.992-8.391 2.795A.988.988 0 011.004 8zM4 11a.996.996 0 01-.958-1.293.998.998 0 01.352-.502C5.255 7.783 7.602 7 10 7c2.397 0 4.742.782 6.601 2.203a1 1 0 01-1.213 1.59C13.875 9.637 11.961 9 10 9c-1.962 0-3.877.638-5.392 1.795a.989.989 0 01-.605.205h-.002zm8.994 3a.994.994 0 01-.594-.197 4.052 4.052 0 00-4.804 0 .999.999 0 11-1.192-1.606c2.108-1.565 5.079-1.566 7.187 0A1 1 0 0112.996 14z" fill="#5C5F62"/>|
        }
      )
    )
  end
end
