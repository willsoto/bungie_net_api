# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupMember do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"memberType",
    :"isOnline",
    :"groupId",
    :"destinyUserInfo",
    :"bungieNetUserInfo",
    :"joinDate"
  ]

  @type t :: %__MODULE__{
    :"memberType" => GroupsV2RuntimeGroupMemberType,
    :"isOnline" => boolean(),
    :"groupId" => integer(),
    :"destinyUserInfo" => UserUserInfoCard,
    :"bungieNetUserInfo" => UserUserInfoCard,
    :"joinDate" => DateTime.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupMember do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"memberType", :struct, BungieNetAPI.Model.GroupsV2RuntimeGroupMemberType, options)
    |> deserialize(:"destinyUserInfo", :struct, BungieNetAPI.Model.UserUserInfoCard, options)
    |> deserialize(:"bungieNetUserInfo", :struct, BungieNetAPI.Model.UserUserInfoCard, options)
  end
end

