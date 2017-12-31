# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyInventoryItemDefinition do
  @moduledoc """
  So much of what you see in Destiny is actually an Item used in a new and creative way. This is the definition for Items in Destiny, which started off as just entities that could exist in your Inventory but ended up being the backing data for so much more: quests, reward previews, slots, and subclasses.  In practice, you will want to associate this data with \&quot;live\&quot; item data from a Bungie.Net Platform call: these definitions describe the item in generic, non-instanced terms: but an actual instance of an item can vary widely from these generic definitions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayProperties",
    :"secondaryIcon",
    :"secondaryOverlay",
    :"secondarySpecial",
    :"backgroundColor",
    :"screenshot",
    :"itemTypeDisplayName",
    :"uiItemDisplayStyle",
    :"itemTypeAndTierDisplayName",
    :"displaySource",
    :"tooltipStyle",
    :"action",
    :"inventory",
    :"setData",
    :"stats",
    :"emblemObjectiveHash",
    :"equippingBlock",
    :"translationBlock",
    :"preview",
    :"quality",
    :"value",
    :"sourceData",
    :"objectives",
    :"plug",
    :"gearset",
    :"sack",
    :"sockets",
    :"summary",
    :"talentGrid",
    :"investmentStats",
    :"perks",
    :"loreHash",
    :"summaryItemHash",
    :"animations",
    :"allowActions",
    :"links",
    :"doesPostmasterPullHaveSideEffects",
    :"nonTransferrable",
    :"itemCategoryHashes",
    :"specialItemType",
    :"itemType",
    :"itemSubType",
    :"classType",
    :"equippable",
    :"damageTypeHashes",
    :"damageTypes",
    :"defaultDamageType",
    :"defaultDamageTypeHash",
    :"hash",
    :"index",
    :"redacted"
  ]

  @type t :: %__MODULE__{
    :"displayProperties" => DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition,
    :"secondaryIcon" => String.t,
    :"secondaryOverlay" => String.t,
    :"secondarySpecial" => String.t,
    :"backgroundColor" => Object,
    :"screenshot" => String.t,
    :"itemTypeDisplayName" => String.t,
    :"uiItemDisplayStyle" => String.t,
    :"itemTypeAndTierDisplayName" => String.t,
    :"displaySource" => String.t,
    :"tooltipStyle" => String.t,
    :"action" => Object,
    :"inventory" => Object,
    :"setData" => Object,
    :"stats" => Object,
    :"emblemObjectiveHash" => integer(),
    :"equippingBlock" => Object,
    :"translationBlock" => Object,
    :"preview" => Object,
    :"quality" => Object,
    :"value" => Object,
    :"sourceData" => Object,
    :"objectives" => Object,
    :"plug" => Object,
    :"gearset" => Object,
    :"sack" => Object,
    :"sockets" => Object,
    :"summary" => Object,
    :"talentGrid" => Object,
    :"investmentStats" => [DestinyDefinitionsDestinyItemInvestmentStatDefinition],
    :"perks" => [DestinyDefinitionsDestinyItemPerkEntryDefinition],
    :"loreHash" => integer(),
    :"summaryItemHash" => integer(),
    :"animations" => [DestinyDefinitionsAnimationsDestinyAnimationReference],
    :"allowActions" => boolean(),
    :"links" => [LinksHyperlinkReference],
    :"doesPostmasterPullHaveSideEffects" => boolean(),
    :"nonTransferrable" => boolean(),
    :"itemCategoryHashes" => [integer()],
    :"specialItemType" => Object,
    :"itemType" => Object,
    :"itemSubType" => Object,
    :"classType" => Object,
    :"equippable" => boolean(),
    :"damageTypeHashes" => [integer()],
    :"damageTypes" => [DestinyDamageType],
    :"defaultDamageType" => Object,
    :"defaultDamageTypeHash" => integer(),
    :"hash" => integer(),
    :"index" => integer(),
    :"redacted" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyInventoryItemDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"displayProperties", :struct, BungieNetAPI.Model.DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition, options)
    |> deserialize(:"backgroundColor", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"action", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"inventory", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"setData", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"stats", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"equippingBlock", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"translationBlock", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"preview", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"quality", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"value", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"sourceData", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"objectives", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"plug", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"gearset", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"sack", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"sockets", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"summary", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"talentGrid", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"investmentStats", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyItemInvestmentStatDefinition, options)
    |> deserialize(:"perks", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyItemPerkEntryDefinition, options)
    |> deserialize(:"animations", :list, BungieNetAPI.Model.DestinyDefinitionsAnimationsDestinyAnimationReference, options)
    |> deserialize(:"links", :list, BungieNetAPI.Model.LinksHyperlinkReference, options)
    |> deserialize(:"specialItemType", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"itemType", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"itemSubType", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"classType", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"damageTypes", :list, BungieNetAPI.Model.DestinyDamageType, options)
    |> deserialize(:"defaultDamageType", :struct, BungieNetAPI.Model.Object, options)
  end
end

