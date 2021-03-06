# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyStatAggregationType do
  @moduledoc """
  When a Stat (DestinyStatDefinition) is aggregated, this is the rules used for determining the level and formula used for aggregation.  * CharacterAverage &#x3D; apply a weighted average using the related DestinyStatGroupDefinition on the DestinyInventoryItemDefinition across the character&#39;s equipped items. See both of those definitions for details. * Character &#x3D; don&#39;t aggregate: the stat should be located and used directly on the character. * Item &#x3D; don&#39;t aggregate: the stat should be located and used directly on the item.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyStatAggregationType do
  def decode(value, _options) do
    value
  end
end

