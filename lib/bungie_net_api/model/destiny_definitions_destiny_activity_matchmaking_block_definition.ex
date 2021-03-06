# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition do
  @moduledoc """
  Information about matchmaking and party size for the activity.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"isMatchmade",
    :"minParty",
    :"maxParty",
    :"maxPlayers",
    :"requiresGuardianOath"
  ]

  @type t :: %__MODULE__{
    :"isMatchmade" => boolean(),
    :"minParty" => integer(),
    :"maxParty" => integer(),
    :"maxPlayers" => integer(),
    :"requiresGuardianOath" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition do
  def decode(value, _options) do
    value
  end
end

