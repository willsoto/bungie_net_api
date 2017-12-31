# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyClanAggregateStat do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"mode",
    :"statId",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"mode" => Object,
    :"statId" => String.t,
    :"value" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyClanAggregateStat do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"mode", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"value", :struct, BungieNetAPI.Model.Object, options)
  end
end

