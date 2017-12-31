# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyActivityModifierReferenceDefinition do
  @moduledoc """
  A reference to an Activity Modifier from another entity, such as an Activity (for now, just Activities).  This defines some
  """

  @derive [Poison.Encoder]
  defstruct [
    :"activityModifierHash"
  ]

  @type t :: %__MODULE__{
    :"activityModifierHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyActivityModifierReferenceDefinition do
  def decode(value, _options) do
    value
  end
end
