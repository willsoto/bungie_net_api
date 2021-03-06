# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"characterId",
    :"deleted",
    :"results",
    :"merged"
  ]

  @type t :: %__MODULE__{
    :"characterId" => integer(),
    :"deleted" => boolean(),
    :"results" => %{optional(String.t) => DestinyHistoricalStatsDestinyHistoricalStatsByPeriod},
    :"merged" => DestinyHistoricalStatsDestinyHistoricalStatsByPeriod
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :map, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsByPeriod, options)
    |> deserialize(:"merged", :struct, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsByPeriod, options)
  end
end

