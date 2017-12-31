# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupAction do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"groupType",
    :"name",
    :"about",
    :"motto",
    :"theme",
    :"avatarImageIndex",
    :"tags",
    :"isPublic",
    :"membershipOption",
    :"isPublicTopicAdminOnly",
    :"isDefaultPostPublic",
    :"allowChat",
    :"isDefaultPostAlliance",
    :"chatSecurity",
    :"callsign",
    :"locale",
    :"homepage",
    :"platformMembershipType"
  ]

  @type t :: %__MODULE__{
    :"groupType" => Object,
    :"name" => String.t,
    :"about" => String.t,
    :"motto" => String.t,
    :"theme" => String.t,
    :"avatarImageIndex" => integer(),
    :"tags" => String.t,
    :"isPublic" => boolean(),
    :"membershipOption" => GroupsV2MembershipOption,
    :"isPublicTopicAdminOnly" => boolean(),
    :"isDefaultPostPublic" => boolean(),
    :"allowChat" => boolean(),
    :"isDefaultPostAlliance" => boolean(),
    :"chatSecurity" => GroupsV2ChatSecuritySetting,
    :"callsign" => String.t,
    :"locale" => String.t,
    :"homepage" => GroupsV2GroupHomepage,
    :"platformMembershipType" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupAction do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"groupType", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"membershipOption", :struct, BungieNetAPI.Model.GroupsV2MembershipOption, options)
    |> deserialize(:"chatSecurity", :struct, BungieNetAPI.Model.GroupsV2ChatSecuritySetting, options)
    |> deserialize(:"homepage", :struct, BungieNetAPI.Model.GroupsV2GroupHomepage, options)
    |> deserialize(:"platformMembershipType", :struct, BungieNetAPI.Model.Object, options)
  end
end
