# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyEquipItemResult do
  @moduledoc """
  The results of an Equipping operation performed through the Destiny API.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"itemInstanceId",
    :"equipStatus"
  ]

  @type t :: %__MODULE__{
    :"itemInstanceId" => integer(),
    :"equipStatus" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyEquipItemResult do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"equipStatus", :struct, BungieNetAPI.Model.Object, options)
  end
end

