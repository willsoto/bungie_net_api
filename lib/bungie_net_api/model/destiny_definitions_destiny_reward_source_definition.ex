# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyRewardSourceDefinition do
  @moduledoc """
  Represents a heuristically-determined \&quot;item source\&quot; according to Bungie.net. These item sources are non-canonical: we apply a combination of special configuration and often-fragile heuristics to attempt to discern whether an item should be part of a given \&quot;source,\&quot; but we have known cases of false positives and negatives due to our imperfect heuristics.  Still, they provide a decent approximation for people trying to figure out how an item can be obtained. DestinyInventoryItemDefinition refers to sources in the sourceDatas.sourceHashes property for all sources we determined the item could spawn from.  An example in Destiny 1 of a Source would be \&quot;Nightfall\&quot;. If an item has the \&quot;Nightfall\&quot; source associated with it, it&#39;s extremely likely that you can earn that item while playing Nightfall, either during play or as an after-completion reward.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayProperties",
    :"category",
    :"hash",
    :"index",
    :"redacted"
  ]

  @type t :: %__MODULE__{
    :"displayProperties" => DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition,
    :"category" => Object,
    :"hash" => integer(),
    :"index" => integer(),
    :"redacted" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyRewardSourceDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"displayProperties", :struct, BungieNetAPI.Model.DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition, options)
    |> deserialize(:"category", :struct, BungieNetAPI.Model.Object, options)
  end
end

