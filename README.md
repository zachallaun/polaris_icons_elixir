# Polaris Icons

[Polaris Icons](https://polaris.shopify.com/icons) are a set of svg icons for use by Shopify partners building applications on the Shopify platform.

This library provides optimized svgs for each Polaris Icon packaged as a Phoenix Component.

Current Polaris Icons Version: **6.5.0**.

## Installation

Add Polaris Icons to your `mix.exs`:

```elixir
defp deps do
  [
    {:polaris_icons, "~> 0.0.1"}
  ]
end
```

After that, run `mix deps.get`.

## Usage

The components are provided by the `PolarisIcons` module.
Each icon is a Phoenix Component you can use in your HEEx templates.

```eex
<PolarisIcons.abandoned_cart />
<PolarisIcons.clock />
<PolarisIcons.clock minor />
<PolarisIcons.clock minor backdrop color="warning" />
```

Some icons have both a major (default) and minor variant, or only one or the other.
As seen above, for icons that support both, the minor variant can be selected using the `minor` attribute.
Using an icon that only supports a minor variant without specifying the `minor` attribute will issue a compile-time attribute error.

```eex
Correct:
<PolarisIcons.adjust minor />

Will result in a compile-time error:
<PolarisIcons.adjust />
```

You can also pass arbitrary HTML attributes to the components, such as classes:

```eex
<PolarisIcons.clock class="w-2 h-2" />
<PolarisIcons.clock minor class="w-2 h-2 text-gray-500" />
```

For a full list of icons see [the docs](https://hexdocs.pm/polaris_icons) or [Polaris Icons](https://polaris.shopify.com/icons).

## Attribution

This project was initially forked from [mveytsman/heroicons_elixir](https://github.com/mveytsman/heroicons_elixir).
All credit for this project's inspiration and structure goes to Max and other contributors of `heroicons_elixir`!
