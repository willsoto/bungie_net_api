# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition do
  @moduledoc """
  The definition of a known, reusable plug that can be applied to a socket.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"plugItemHash"
  ]

  @type t :: %__MODULE__{
    :"plugItemHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition do
  def decode(value, _options) do
    value
  end
end
