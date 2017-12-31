# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DictionaryComponentResponseOfint64AndDestinyItemStatsComponent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"data",
    :"privacy"
  ]

  @type t :: %__MODULE__{
    :"data" => %{optional(String.t) => DestinyEntitiesItemsDestinyItemStatsComponent},
    :"privacy" => ComponentsComponentPrivacySetting
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DictionaryComponentResponseOfint64AndDestinyItemStatsComponent do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :map, BungieNetAPI.Model.DestinyEntitiesItemsDestinyItemStatsComponent, options)
    |> deserialize(:"privacy", :struct, BungieNetAPI.Model.ComponentsComponentPrivacySetting, options)
  end
end

