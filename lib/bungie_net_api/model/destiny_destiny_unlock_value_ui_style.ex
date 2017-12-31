# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyUnlockValueUiStyle do
  @moduledoc """
  If you&#39;re showing an unlock value in the UI, this is the format in which it should be shown. You&#39;ll have to build your own algorithms on the client side to determine how best to render these options.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyUnlockValueUiStyle do
  def decode(value, _options) do
    value
  end
end
