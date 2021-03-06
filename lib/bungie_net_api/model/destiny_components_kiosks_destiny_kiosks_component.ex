# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyComponentsKiosksDestinyKiosksComponent do
  @moduledoc """
  A Kiosk is a Vendor (DestinyVendorDefinition) that sells items based on whether you have already acquired that item before.  This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the individual character&#39;s DestinyCharacterKiosksComponent.  Note that, because this component returns vendorItemIndexes (that is to say, indexes into the Kiosk Vendor&#39;s itemList property), these results are necessarily content version dependent. Make sure that you have the latest version of the content manifest databases before using this data.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"kioskItems"
  ]

  @type t :: %__MODULE__{
    :"kioskItems" => %{optional(String.t) => [DestinyComponentsKiosksDestinyKioskItem]}
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyComponentsKiosksDestinyKiosksComponent do
  def decode(value, _options) do
    value
  end
end

