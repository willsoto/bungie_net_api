# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.SingleComponentResponseOfDestinyVendorReceiptsComponent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"data",
    :"privacy"
  ]

  @type t :: %__MODULE__{
    :"data" => DestinyEntitiesProfilesDestinyVendorReceiptsComponent,
    :"privacy" => ComponentsComponentPrivacySetting
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.SingleComponentResponseOfDestinyVendorReceiptsComponent do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :struct, BungieNetAPI.Model.DestinyEntitiesProfilesDestinyVendorReceiptsComponent, options)
    |> deserialize(:"privacy", :struct, BungieNetAPI.Model.ComponentsComponentPrivacySetting, options)
  end
end
