# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.UserUserMembershipData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"destinyMemberships",
    :"bungieNetUser"
  ]

  @type t :: %__MODULE__{
    :"destinyMemberships" => [UserUserInfoCard],
    :"bungieNetUser" => UserGeneralUser
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.UserUserMembershipData do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"destinyMemberships", :list, BungieNetAPI.Model.UserUserInfoCard, options)
    |> deserialize(:"bungieNetUser", :struct, BungieNetAPI.Model.UserGeneralUser, options)
  end
end

