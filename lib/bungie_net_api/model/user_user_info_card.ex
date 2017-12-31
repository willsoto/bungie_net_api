# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.UserUserInfoCard do
  @moduledoc """
  This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"supplementalDisplayName",
    :"iconPath",
    :"membershipType",
    :"membershipId",
    :"displayName"
  ]

  @type t :: %__MODULE__{
    :"supplementalDisplayName" => String.t,
    :"iconPath" => String.t,
    :"membershipType" => Object,
    :"membershipId" => integer(),
    :"displayName" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.UserUserInfoCard do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"membershipType", :struct, BungieNetAPI.Model.Object, options)
  end
end
