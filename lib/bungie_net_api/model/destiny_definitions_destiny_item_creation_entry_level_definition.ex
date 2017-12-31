# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemCreationEntryLevelDefinition do
  @moduledoc """
  An overly complicated wrapper for the item level at which the item should spawn.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"level"
  ]

  @type t :: %__MODULE__{
    :"level" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemCreationEntryLevelDefinition do
  def decode(value, _options) do
    value
  end
end
