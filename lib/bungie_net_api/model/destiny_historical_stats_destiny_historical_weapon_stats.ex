# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalWeaponStats do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"referenceId",
    :"values"
  ]

  @type t :: %__MODULE__{
    :"referenceId" => integer(),
    :"values" => %{optional(String.t) => DestinyHistoricalStatsDestinyHistoricalStatsValue}
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalWeaponStats do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"values", :map, BungieNetAPI.Model.DestinyHistoricalStatsDestinyHistoricalStatsValue, options)
  end
end

