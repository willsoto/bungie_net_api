# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupV2 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"groupId",
    :"name",
    :"groupType",
    :"membershipIdCreated",
    :"creationDate",
    :"modificationDate",
    :"about",
    :"tags",
    :"memberCount",
    :"isPublic",
    :"isPublicTopicAdminOnly",
    :"primaryAlliedGroupId",
    :"motto",
    :"allowChat",
    :"isDefaultPostPublic",
    :"chatSecurity",
    :"locale",
    :"avatarImageIndex",
    :"homepage",
    :"membershipOption",
    :"defaultPublicity",
    :"theme",
    :"bannerPath",
    :"avatarPath",
    :"isAllianceOwner",
    :"conversationId",
    :"enableInvitationMessagingForAdmins",
    :"banExpireDate",
    :"features",
    :"clanInfo"
  ]

  @type t :: %__MODULE__{
    :"groupId" => integer(),
    :"name" => String.t,
    :"groupType" => GroupsV2GroupType,
    :"membershipIdCreated" => integer(),
    :"creationDate" => DateTime.t,
    :"modificationDate" => DateTime.t,
    :"about" => String.t,
    :"tags" => [String.t],
    :"memberCount" => integer(),
    :"isPublic" => boolean(),
    :"isPublicTopicAdminOnly" => boolean(),
    :"primaryAlliedGroupId" => integer(),
    :"motto" => String.t,
    :"allowChat" => boolean(),
    :"isDefaultPostPublic" => boolean(),
    :"chatSecurity" => GroupsV2ChatSecuritySetting,
    :"locale" => String.t,
    :"avatarImageIndex" => integer(),
    :"homepage" => GroupsV2GroupHomepage,
    :"membershipOption" => GroupsV2MembershipOption,
    :"defaultPublicity" => GroupsV2GroupPostPublicity,
    :"theme" => String.t,
    :"bannerPath" => String.t,
    :"avatarPath" => String.t,
    :"isAllianceOwner" => boolean(),
    :"conversationId" => integer(),
    :"enableInvitationMessagingForAdmins" => boolean(),
    :"banExpireDate" => DateTime.t,
    :"features" => GroupsV2GroupFeatures,
    :"clanInfo" => GroupsV2GroupV2ClanInfoAndInvestment
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupV2 do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"groupType", :struct, BungieNetAPI.Model.GroupsV2GroupType, options)
    |> deserialize(:"chatSecurity", :struct, BungieNetAPI.Model.GroupsV2ChatSecuritySetting, options)
    |> deserialize(:"homepage", :struct, BungieNetAPI.Model.GroupsV2GroupHomepage, options)
    |> deserialize(:"membershipOption", :struct, BungieNetAPI.Model.GroupsV2MembershipOption, options)
    |> deserialize(:"defaultPublicity", :struct, BungieNetAPI.Model.GroupsV2GroupPostPublicity, options)
    |> deserialize(:"features", :struct, BungieNetAPI.Model.GroupsV2GroupFeatures, options)
    |> deserialize(:"clanInfo", :struct, BungieNetAPI.Model.GroupsV2GroupV2ClanInfoAndInvestment, options)
  end
end

