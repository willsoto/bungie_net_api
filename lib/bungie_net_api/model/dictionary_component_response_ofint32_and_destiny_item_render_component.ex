# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DictionaryComponentResponseOfint32AndDestinyItemRenderComponent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"data",
    :"privacy"
  ]

  @type t :: %__MODULE__{
    :"data" => %{optional(String.t) => DestinyEntitiesItemsDestinyItemRenderComponent},
    :"privacy" => ComponentsComponentPrivacySetting
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DictionaryComponentResponseOfint32AndDestinyItemRenderComponent do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :map, BungieNetAPI.Model.DestinyEntitiesItemsDestinyItemRenderComponent, options)
    |> deserialize(:"privacy", :struct, BungieNetAPI.Model.ComponentsComponentPrivacySetting, options)
  end
end

