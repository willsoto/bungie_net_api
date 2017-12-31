# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsAccountResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"mergedDeletedCharacters",
    :"mergedAllCharacters",
    :"characters"
  ]

  @type t :: %__MODULE__{
    :"mergedDeletedCharacters" => DestinyHistoricalStatsDestinyHistoricalStatsWithMerged,
    :"mergedAllCharacters" => DestinyHistoricalStatsDestinyHistoricalStatsWithMerged,
    :"characters" => [DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsAccountResult do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"mergedDeletedCharacters", :struct, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsWithMerged, options)
    |> deserialize(:"mergedAllCharacters", :struct, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsWithMerged, options)
    |> deserialize(:"characters", :list, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter, options)
  end
end

