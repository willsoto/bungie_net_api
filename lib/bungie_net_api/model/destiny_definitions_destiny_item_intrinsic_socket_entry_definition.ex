# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition do
  @moduledoc """
  Represents a socket that has a plug associated with it intrinsically. This is useful for situations where the weapon needs to have a visual plug/Mod on it, but that plug/Mod should never change.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"plugItemHash",
    :"socketTypeHash"
  ]

  @type t :: %__MODULE__{
    :"plugItemHash" => integer(),
    :"socketTypeHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition do
  def decode(value, _options) do
    value
  end
end
