# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyActivityHistoryResults do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"activities"
  ]

  @type t :: %__MODULE__{
    :"activities" => [DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyActivityHistoryResults do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"activities", :list, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup, options)
  end
end
