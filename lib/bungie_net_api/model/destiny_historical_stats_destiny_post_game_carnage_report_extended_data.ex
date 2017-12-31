# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"weapons",
    :"values"
  ]

  @type t :: %__MODULE__{
    :"weapons" => [DestinyHistoricalStatsDestinyHistoricalWeaponStats],
    :"values" => %{optional(String.t) => DestinyHistoricalStatsDestinyHistoricalStatsValue}
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"weapons", :list, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalWeaponStats, options)
    |> deserialize(:"values", :map, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsValue, options)
  end
end

