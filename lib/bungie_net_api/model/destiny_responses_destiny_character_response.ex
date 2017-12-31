# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyResponsesDestinyCharacterResponse do
  @moduledoc """
  The response contract for GetDestinyCharacter, with components that can be returned for character and item-level data.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"inventory",
    :"character",
    :"progressions",
    :"renderData",
    :"activities",
    :"equipment",
    :"kiosks",
    :"itemComponents"
  ]

  @type t :: %__MODULE__{
    :"inventory" => Object,
    :"character" => Object,
    :"progressions" => Object,
    :"renderData" => Object,
    :"activities" => Object,
    :"equipment" => Object,
    :"kiosks" => Object,
    :"itemComponents" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyResponsesDestinyCharacterResponse do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"inventory", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"character", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"progressions", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"renderData", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"activities", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"equipment", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"kiosks", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"itemComponents", :struct, BungieNetAPI.Model.Object, options)
  end
end
