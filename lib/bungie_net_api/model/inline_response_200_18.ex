# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.InlineResponse20018 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Response",
    :"ErrorCode",
    :"ThrottleSeconds",
    :"ErrorStatus",
    :"Message",
    :"MessageData"
  ]

  @type t :: %__MODULE__{
    :"Response" => GroupsV2GroupResponse,
    :"ErrorCode" => ExceptionsPlatformErrorCodes,
    :"ThrottleSeconds" => integer(),
    :"ErrorStatus" => String.t,
    :"Message" => String.t,
    :"MessageData" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.InlineResponse20018 do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Response", :struct, BungieNetAPI.Model.GroupsV2GroupResponse, options)
    |> deserialize(:"ErrorCode", :struct, BungieNetAPI.Model.ExceptionsPlatformErrorCodes, options)
  end
end

