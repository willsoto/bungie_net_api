# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyProgressionDestinyFactionProgression do
  @moduledoc """
  Mostly for historical purposes, we segregate Faction progressions from other progressions. This is just a DestinyProgression with a shortcut for finding the DestinyFactionDefinition of the faction related to the progression.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"factionHash",
    :"factionVendorIndex",
    :"progressionHash",
    :"dailyProgress",
    :"dailyLimit",
    :"weeklyProgress",
    :"weeklyLimit",
    :"currentProgress",
    :"level",
    :"levelCap",
    :"stepIndex",
    :"progressToNextLevel",
    :"nextLevelAt"
  ]

  @type t :: %__MODULE__{
    :"factionHash" => integer(),
    :"factionVendorIndex" => integer(),
    :"progressionHash" => integer(),
    :"dailyProgress" => integer(),
    :"dailyLimit" => integer(),
    :"weeklyProgress" => integer(),
    :"weeklyLimit" => integer(),
    :"currentProgress" => integer(),
    :"level" => integer(),
    :"levelCap" => integer(),
    :"stepIndex" => integer(),
    :"progressToNextLevel" => integer(),
    :"nextLevelAt" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyProgressionDestinyFactionProgression do
  def decode(value, _options) do
    value
  end
end
