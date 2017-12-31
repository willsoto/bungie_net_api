# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupOptionsEditAction do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"InvitePermissionOverride",
    :"UpdateCulturePermissionOverride",
    :"HostGuidedGamePermissionOverride",
    :"UpdateBannerPermissionOverride",
    :"JoinLevel"
  ]

  @type t :: %__MODULE__{
    :"InvitePermissionOverride" => boolean(),
    :"UpdateCulturePermissionOverride" => boolean(),
    :"HostGuidedGamePermissionOverride" => integer(),
    :"UpdateBannerPermissionOverride" => boolean(),
    :"JoinLevel" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupOptionsEditAction do
  def decode(value, _options) do
    value
  end
end
