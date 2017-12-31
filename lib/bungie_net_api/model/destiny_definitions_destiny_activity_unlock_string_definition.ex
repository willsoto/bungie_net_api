# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyActivityUnlockStringDefinition do
  @moduledoc """
  Represents a status string that could be conditionally displayed about an activity. Note that externally, you can only see the strings themselves. Internally we combine this information with server state to determine which strings should be shown.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayString"
  ]

  @type t :: %__MODULE__{
    :"displayString" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyActivityUnlockStringDefinition do
  def decode(value, _options) do
    value
  end
end

