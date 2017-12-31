# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupPotentialMember do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"potentialStatus",
    :"groupId",
    :"destinyUserInfo",
    :"bungieNetUserInfo",
    :"joinDate"
  ]

  @type t :: %__MODULE__{
    :"potentialStatus" => GroupsV2GroupPotentialMemberStatus,
    :"groupId" => integer(),
    :"destinyUserInfo" => UserUserInfoCard,
    :"bungieNetUserInfo" => UserUserInfoCard,
    :"joinDate" => DateTime.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupPotentialMember do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"potentialStatus", :struct, BungieNetAPI.Model.GroupsV2GroupPotentialMemberStatus, options)
    |> deserialize(:"destinyUserInfo", :struct, BungieNetAPI.Model.UserUserInfoCard, options)
    |> deserialize(:"bungieNetUserInfo", :struct, BungieNetAPI.Model.UserUserInfoCard, options)
  end
end

