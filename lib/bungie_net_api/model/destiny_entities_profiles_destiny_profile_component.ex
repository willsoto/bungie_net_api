# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyEntitiesProfilesDestinyProfileComponent do
  @moduledoc """
  The most essential summary information about a Profile (in Destiny 1, we called these \&quot;Accounts\&quot;).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"userInfo",
    :"dateLastPlayed",
    :"versionsOwned",
    :"characterIds"
  ]

  @type t :: %__MODULE__{
    :"userInfo" => Object,
    :"dateLastPlayed" => DateTime.t,
    :"versionsOwned" => Object,
    :"characterIds" => [integer()]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyEntitiesProfilesDestinyProfileComponent do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"userInfo", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"versionsOwned", :struct, BungieNetAPI.Model.Object, options)
  end
end

