# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.GroupsV2GroupApplicationListRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"memberships",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"memberships" => [UserUserMembership],
    :"message" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.GroupsV2GroupApplicationListRequest do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"memberships", :list, BungieNetAPI.Model.UserUserMembership, options)
  end
end

