# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemPerkEntryDefinition do
  @moduledoc """
  An intrinsic perk on an item, and the requirements for it to be activated.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"requirementDisplayString",
    :"perkHash"
  ]

  @type t :: %__MODULE__{
    :"requirementDisplayString" => String.t,
    :"perkHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemPerkEntryDefinition do
  def decode(value, _options) do
    value
  end
end
