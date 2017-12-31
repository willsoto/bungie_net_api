# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyProgressionRewardDefinition do
  @moduledoc """
  Inventory Items can reward progression when actions are performed on them. A common example of this in Destiny 1 was Bounties, which would reward Experience on your Character and the like when you completed the bounty.  Note that this maps to a DestinyProgressionMappingDefinition, and *not* a DestinyProgressionDefinition directly. This is apparently so that multiple progressions can be granted progression points/experience at the same time.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"progressionMappingHash",
    :"amount",
    :"applyThrottles"
  ]

  @type t :: %__MODULE__{
    :"progressionMappingHash" => integer(),
    :"amount" => integer(),
    :"applyThrottles" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyProgressionRewardDefinition do
  def decode(value, _options) do
    value
  end
end
