# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupV2Card do
  @moduledoc """
  A small infocard of group information, usually used for when a list of groups are returned
  """

  @derive [Poison.Encoder]
  defstruct [
    :"groupId",
    :"name",
    :"groupType",
    :"creationDate",
    :"about",
    :"motto",
    :"memberCount",
    :"locale",
    :"membershipOption",
    :"capabilities",
    :"clanInfo",
    :"avatarPath",
    :"theme"
  ]

  @type t :: %__MODULE__{
    :"groupId" => integer(),
    :"name" => String.t,
    :"groupType" => GroupsV2GroupType,
    :"creationDate" => DateTime.t,
    :"about" => String.t,
    :"motto" => String.t,
    :"memberCount" => integer(),
    :"locale" => String.t,
    :"membershipOption" => GroupsV2MembershipOption,
    :"capabilities" => GroupsV2Capabilities,
    :"clanInfo" => GroupsV2GroupV2ClanInfo,
    :"avatarPath" => String.t,
    :"theme" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupV2Card do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"groupType", :struct, BungieNetAPI.Model.GroupsV2GroupType, options)
    |> deserialize(:"membershipOption", :struct, BungieNetAPI.Model.GroupsV2MembershipOption, options)
    |> deserialize(:"capabilities", :struct, BungieNetAPI.Model.GroupsV2Capabilities, options)
    |> deserialize(:"clanInfo", :struct, BungieNetAPI.Model.GroupsV2GroupV2ClanInfo, options)
  end
end
