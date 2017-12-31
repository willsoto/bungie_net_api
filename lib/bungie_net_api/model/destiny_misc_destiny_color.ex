# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMiscDestinyColor do
  @moduledoc """
  Represents a color whose RGBA values are all represented as values between 0 and 255.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"red",
    :"green",
    :"blue",
    :"alpha"
  ]

  @type t :: %__MODULE__{
    :"red" => binary(),
    :"green" => binary(),
    :"blue" => binary(),
    :"alpha" => binary()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMiscDestinyColor do
  def decode(value, _options) do
    value
  end
end
