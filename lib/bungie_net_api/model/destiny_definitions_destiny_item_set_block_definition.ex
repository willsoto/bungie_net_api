# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemSetBlockDefinition do
  @moduledoc """
  Primarily for Quests, this is the definition of properties related to the item if it is a quest and its various quest steps.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"itemList",
    :"requireOrderedSetItemAdd",
    :"setIsFeatured",
    :"setType"
  ]

  @type t :: %__MODULE__{
    :"itemList" => [DestinyDefinitionsDestinyItemSetBlockEntryDefinition],
    :"requireOrderedSetItemAdd" => boolean(),
    :"setIsFeatured" => boolean(),
    :"setType" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemSetBlockDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"itemList", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyItemSetBlockEntryDefinition, options)
  end
end
