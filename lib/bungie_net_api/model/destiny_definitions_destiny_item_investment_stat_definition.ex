# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemInvestmentStatDefinition do
  @moduledoc """
  Represents a \&quot;raw\&quot; investment stat, before calculated stats are calculated and before any DestinyStatGroupDefinition is applied to transform the stat into something closer to what you see in-game.  Because these won&#39;t match what you see in-game, consider carefully whether you really want to use these stats. I have left them in case someone can do something useful or interesting with the pre-processed statistics.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"statTypeHash",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"statTypeHash" => integer(),
    :"value" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemInvestmentStatDefinition do
  def decode(value, _options) do
    value
  end
end

