defmodule PolarisIconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  setup do
    Mix.Task.run("polaris_icons.build")
    {:ok, assigns: %{__changed__: nil}}
  end

  describe "icon with major and minor variants" do
    test "defaults to major" do
      assert render_component(&PolarisIcons.clock/1, %{}) ==
               ~s|<svg xmlns="http://www.w3.org/2000/svg" class="Polaris-Icon__Major " aria-hidden="true" viewBox="0 0 20 20">\n  <path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zm1-15a1 1 0 10-2 0v5a1 1 0 00.293.707l3 3a1 1 0 001.414-1.414L11 9.586V5z" fill="#5C5F62"/>\n</svg>|
    end

    test "has optional minor" do
      assert render_component(&PolarisIcons.clock/1, %{minor: true}) ==
               ~s|<svg xmlns="http://www.w3.org/2000/svg" class="Polaris-Icon__Minor " aria-hidden="true" viewBox="0 0 20 20">\n  <path fill-rule="evenodd" d="M10 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8zm2.293-4.707a.997.997 0 01-.707-.293l-2.293-2.293A.997.997 0 019 10V6a1 1 0 112 0v3.586l2 2a.999.999 0 01-.707 1.707z" fill="#5C5F62"/>\n</svg>|
    end
  end

  test "raises on mix styles" do
    assert_raise ArgumentError, "expected either major or minor, but got neither.", fn ->
      render_component(&PolarisIcons.clock/1, %{major: false, minor: false})
    end
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc, _metadata, docs} =
      Code.fetch_docs(PolarisIcons)

    doc =
      Enum.find_value(docs, fn
        {{:function, :clock, 1}, _annotation, _signature, doc, _metadata} -> doc
        _ -> nil
      end)

    assert doc["en"] == """
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

           ## Attributes

           * `rest` (`:global`) - the arbitrary HTML attributes for the svg container. Supports all globals plus: `["fill", "stroke", "stroke-width"]`.
           * `major` (`:boolean`) - Defaults to `true`.
           * `minor` (`:boolean`) - Defaults to `false`.
           * `backdrop` (`:boolean`) - Defaults to `false`.
           * `color` (`:string`) - Defaults to `nil`.
           """
  end
end
