# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsValue do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"statId",
    :"basic",
    :"pga",
    :"weighted",
    :"activityId"
  ]

  @type t :: %__MODULE__{
    :"statId" => String.t,
    :"basic" => Object,
    :"pga" => Object,
    :"weighted" => Object,
    :"activityId" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsValue do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"basic", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"pga", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"weighted", :struct, BungieNetAPI.Model.Object, options)
  end
end

