# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"teamId",
    :"standing",
    :"score",
    :"teamName"
  ]

  @type t :: %__MODULE__{
    :"teamId" => integer(),
    :"standing" => Object,
    :"score" => Object,
    :"teamName" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"standing", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"score", :struct, BungieNetAPI.Model.Object, options)
  end
end

