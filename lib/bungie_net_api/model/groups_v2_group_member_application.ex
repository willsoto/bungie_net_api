# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupMemberApplication do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"groupId",
    :"creationDate",
    :"resolveState",
    :"resolveDate",
    :"resolvedByMembershipId",
    :"requestMessage",
    :"resolveMessage",
    :"destinyUserInfo",
    :"bungieNetUserInfo"
  ]

  @type t :: %__MODULE__{
    :"groupId" => integer(),
    :"creationDate" => DateTime.t,
    :"resolveState" => GroupsV2GroupApplicationResolveState,
    :"resolveDate" => DateTime.t,
    :"resolvedByMembershipId" => integer(),
    :"requestMessage" => String.t,
    :"resolveMessage" => String.t,
    :"destinyUserInfo" => UserUserInfoCard,
    :"bungieNetUserInfo" => UserUserInfoCard
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupMemberApplication do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"resolveState", :struct, BungieNetAPI.Model.GroupsV2GroupApplicationResolveState, options)
    |> deserialize(:"destinyUserInfo", :struct, BungieNetAPI.Model.UserUserInfoCard, options)
    |> deserialize(:"bungieNetUserInfo", :struct, BungieNetAPI.Model.UserUserInfoCard, options)
  end
end

