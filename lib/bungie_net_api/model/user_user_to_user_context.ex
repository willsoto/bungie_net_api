# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.UserUserToUserContext do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"isFollowing",
    :"ignoreStatus",
    :"globalIgnoreEndDate"
  ]

  @type t :: %__MODULE__{
    :"isFollowing" => boolean(),
    :"ignoreStatus" => IgnoresIgnoreResponse,
    :"globalIgnoreEndDate" => DateTime.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.UserUserToUserContext do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ignoreStatus", :struct, BungieNetAPI.Model.IgnoresIgnoreResponse, options)
  end
end
