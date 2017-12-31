# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyRequestsActionsDestinyItemActionRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"itemId",
    :"characterId",
    :"membershipType"
  ]

  @type t :: %__MODULE__{
    :"itemId" => integer(),
    :"characterId" => integer(),
    :"membershipType" => BungieMembershipType
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyRequestsActionsDestinyItemActionRequest do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"membershipType", :struct, BungieNetAPI.Model.BungieMembershipType, options)
  end
end

