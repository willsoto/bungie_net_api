# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemSocketCategoryDefinition do
  @moduledoc """
  Sockets are grouped into categories in the UI. These define which category and which sockets are under that category.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"socketCategoryHash",
    :"socketIndexes"
  ]

  @type t :: %__MODULE__{
    :"socketCategoryHash" => integer(),
    :"socketIndexes" => [integer()]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemSocketCategoryDefinition do
  def decode(value, _options) do
    value
  end
end

