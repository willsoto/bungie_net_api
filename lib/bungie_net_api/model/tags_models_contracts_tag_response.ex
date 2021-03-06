# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.TagsModelsContractsTagResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tagText",
    :"ignoreStatus"
  ]

  @type t :: %__MODULE__{
    :"tagText" => String.t,
    :"ignoreStatus" => IgnoresIgnoreResponse
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.TagsModelsContractsTagResponse do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ignoreStatus", :struct, BungieNetAPI.Model.IgnoresIgnoreResponse, options)
  end
end

