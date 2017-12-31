# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyEquipItemResults do
  @moduledoc """
  The results of a bulk Equipping operation performed through the Destiny API.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"equipResults"
  ]

  @type t :: %__MODULE__{
    :"equipResults" => [DestinyDestinyEquipItemResult]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyEquipItemResults do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"equipResults", :list, BungieNetAPI.Model.DestinyDestinyEquipItemResult, options)
  end
end

