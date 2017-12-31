# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyVendorDefinition do
  @moduledoc """
  These are the definitions for Vendors.  In Destiny, a Vendor can be a lot of things - some things that you wouldn&#39;t expect, and some things that you don&#39;t even see directly in the game. Vendors are the Dolly Levi of the Destiny universe.  - Traditional Vendors as you see in game: people who you come up to and who give you quests, rewards, or who you can buy things from.  - Kiosks/Collections, which are really just Vendors that don&#39;t charge currency (or charge some pittance of a currency) and whose gating for purchases revolves more around your character&#39;s state.  - Previews for rewards or the contents of sacks. These are implemented as Vendors, where you can&#39;t actually purchase from them but the items that they have for sale and the categories of sale items reflect the rewards or contents of the sack. This is so that the game could reuse the existing Vendor display UI for rewards and save a bunch of wheel reinvention.  - Item Transfer capabilities, like the Vault and Postmaster. Vendors can have \&quot;acceptedItem\&quot; buckets that determine the source and destination buckets for transfers. When you interact with such a vendor, these buckets are what gets shown in the UI instead of any items that the Vendor would have for sale. Yep, the Vault is a vendor.  It is pretty much guaranteed that they&#39;ll be used for even more features in the future. They have come to be seen more as generic categorized containers for items than \&quot;vendors\&quot; in a traditional sense, for better or worse.  Where possible and time allows, we&#39;ll attempt to split those out into their own more digestible derived \&quot;Definitions\&quot;: but often time does not allow that, as you can see from the above ways that vendors are used which we never split off from Vendor Definitions externally.  Since Vendors are so many things to so many parts of the game, the definition is understandably complex. You will want to combine this data with live Vendor information from the API when it is available.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayProperties",
    :"buyString",
    :"sellString",
    :"displayItemHash",
    :"inhibitBuying",
    :"inhibitSelling",
    :"factionHash",
    :"resetIntervalMinutes",
    :"resetOffsetMinutes",
    :"failureStrings",
    :"unlockRanges",
    :"vendorIdentifier",
    :"vendorPortrait",
    :"vendorBanner",
    :"enabled",
    :"visible",
    :"vendorCategoryIdentifier",
    :"vendorSubcategoryIdentifier",
    :"consolidateCategories",
    :"actions",
    :"categories",
    :"originalCategories",
    :"displayCategories",
    :"interactions",
    :"inventoryFlyouts",
    :"itemList",
    :"services",
    :"acceptedItems",
    :"returnWithVendorRequest",
    :"hash",
    :"index",
    :"redacted"
  ]

  @type t :: %__MODULE__{
    :"displayProperties" => DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition,
    :"buyString" => String.t,
    :"sellString" => String.t,
    :"displayItemHash" => integer(),
    :"inhibitBuying" => boolean(),
    :"inhibitSelling" => boolean(),
    :"factionHash" => integer(),
    :"resetIntervalMinutes" => integer(),
    :"resetOffsetMinutes" => integer(),
    :"failureStrings" => [String.t],
    :"unlockRanges" => [DatesDateRange],
    :"vendorIdentifier" => String.t,
    :"vendorPortrait" => String.t,
    :"vendorBanner" => String.t,
    :"enabled" => boolean(),
    :"visible" => boolean(),
    :"vendorCategoryIdentifier" => String.t,
    :"vendorSubcategoryIdentifier" => String.t,
    :"consolidateCategories" => boolean(),
    :"actions" => [DestinyDefinitionsDestinyVendorActionDefinition],
    :"categories" => [DestinyDefinitionsDestinyVendorCategoryEntryDefinition],
    :"originalCategories" => [DestinyDefinitionsDestinyVendorCategoryEntryDefinition],
    :"displayCategories" => [DestinyDefinitionsDestinyDisplayCategoryDefinition],
    :"interactions" => [DestinyDefinitionsDestinyVendorInteractionDefinition],
    :"inventoryFlyouts" => [DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition],
    :"itemList" => [DestinyDefinitionsDestinyVendorItemDefinition],
    :"services" => [DestinyDefinitionsDestinyVendorServiceDefinition],
    :"acceptedItems" => [DestinyDefinitionsDestinyVendorAcceptedItemDefinition],
    :"returnWithVendorRequest" => boolean(),
    :"hash" => integer(),
    :"index" => integer(),
    :"redacted" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyVendorDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"displayProperties", :struct, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition, options)
    |> deserialize(:"unlockRanges", :list, BungieNetAPI.Model.DatesDateRange, options)
    |> deserialize(:"actions", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorActionDefinition, options)
    |> deserialize(:"categories", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorCategoryEntryDefinition, options)
    |> deserialize(:"originalCategories", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorCategoryEntryDefinition, options)
    |> deserialize(:"displayCategories", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyDisplayCategoryDefinition, options)
    |> deserialize(:"interactions", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorInteractionDefinition, options)
    |> deserialize(:"inventoryFlyouts", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition, options)
    |> deserialize(:"itemList", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorItemDefinition, options)
    |> deserialize(:"services", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorServiceDefinition, options)
    |> deserialize(:"acceptedItems", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyVendorAcceptedItemDefinition, options)
  end
end

