# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyPostGameCarnageReportEntry do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"standing",
    :"score",
    :"player",
    :"characterId",
    :"values",
    :"extended"
  ]

  @type t :: %__MODULE__{
    :"standing" => integer(),
    :"score" => Object,
    :"player" => Object,
    :"characterId" => integer(),
    :"values" => %{optional(String.t) => DestinyHistoricalStatsDestinyHistoricalStatsValue},
    :"extended" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyPostGameCarnageReportEntry do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"score", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"player", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"values", :map, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsValue, options)
    |> deserialize(:"extended", :struct, BungieNetAPI.Model.Object, options)
  end
end

