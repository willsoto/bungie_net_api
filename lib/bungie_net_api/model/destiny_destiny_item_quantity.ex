# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyItemQuantity do
  @moduledoc """
  Used in a number of Destiny contracts to return data about an item stack and its quantity. Can optionally return an itemInstanceId if the item is instanced - in which case, the quantity returned will be 1. If it&#39;s not... uh, let me know okay? Thanks.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"itemHash",
    :"itemInstanceId",
    :"quantity"
  ]

  @type t :: %__MODULE__{
    :"itemHash" => integer(),
    :"itemInstanceId" => integer(),
    :"quantity" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyItemQuantity do
  def decode(value, _options) do
    value
  end
end

