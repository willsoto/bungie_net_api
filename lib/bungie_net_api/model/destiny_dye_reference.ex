# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDyeReference do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"channelHash",
    :"dyeHash"
  ]

  @type t :: %__MODULE__{
    :"channelHash" => integer(),
    :"dyeHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDyeReference do
  def decode(value, _options) do
    value
  end
end

