# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemPreviewBlockDefinition do
  @moduledoc """
  Items like Sacks or Boxes can have items that it shows in-game when you view details that represent the items you can obtain if you use or acquire the item.  This defines those categories, and gives some insights into that data&#39;s source.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"previewVendorHash",
    :"previewActionString",
    :"derivedItemCategories"
  ]

  @type t :: %__MODULE__{
    :"previewVendorHash" => integer(),
    :"previewActionString" => String.t,
    :"derivedItemCategories" => [DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemPreviewBlockDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"derivedItemCategories", :list, BungieNetAPI.Model.DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition, options)
  end
end

