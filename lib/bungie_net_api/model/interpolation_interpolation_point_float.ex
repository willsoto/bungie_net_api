# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.InterpolationInterpolationPointFloat do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"weight"
  ]

  @type t :: %__MODULE__{
    :"value" => float(),
    :"weight" => float()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.InterpolationInterpolationPointFloat do
  def decode(value, _options) do
    value
  end
end

