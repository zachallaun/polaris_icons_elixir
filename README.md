# WIP: Polaris Icons

<!-- MDOC !-->

Provides precompiled icon Phoenix Components from [Polaris Icons](https://polaris.shopify.com/icons).

Current Polaris Icons Version: **6.5.0**.

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

## Polaris Icons License Attribution

Copyright (c) 2017-present Shopify Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

The rights granted above may only be exercised to develop and distribute
applications that integrate or interoperate with Shopify software or services,
and in the case of external, stand-alone applications that do not embed
directly inside Shopify, the rights granted above may only be exercised to
develop and distribute applications that are dissimilar and visually distinct
from Shopify products and services (including the internal administration page
of a Shopify merchant store), as determined by Shopify in its sole discretion.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<!-- MDOC !-->

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

## Thanks, Max!

This project was initially forked from [mveytsman/heroicons_elixir](https://github.com/mveytsman/heroicons_elixir).
All credit for this project's inspiration and structure goes to Max and other contributors of `heroicons_elixir`!
