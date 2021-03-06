# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyItemSubType do
  @moduledoc """
  This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \&quot;Sub-Type\&quot; is where we classify and categorize items one step further in specificity: \&quot;Auto Rifle\&quot; instead of just \&quot;Weapon\&quot; for example, or \&quot;Vanguard Bounty\&quot; instead of merely \&quot;Bounty\&quot;.  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \&quot;best guess\&quot; fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyItemSubType do
  def decode(value, _options) do
    value
  end
end

