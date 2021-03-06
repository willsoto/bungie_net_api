# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyTalentNode do
  @moduledoc """
  I see you&#39;ve come to find out more about Talent Nodes. I&#39;m so sorry. Talent Nodes are the conceptual, visual nodes that appear on Talent Grids. Talent Grids, in Destiny 1, were found on almost every instanced item: they had Nodes that could be activated to change the properties of the item. In Destiny 2, Talent Grids only exist for Builds/Subclasses, and while the basic concept is the same (Nodes can be activated once you&#39;ve gained sufficient Experience on the Item, and provide effects), there are some new concepts from Destiny 1. Examine DestinyTalentGridDefinition and its subordinates for more information. This is the \&quot;Live\&quot; information for the current status of a Talent Node on a specific item. Talent Nodes have many Steps, but only one can be active at any one time: and it is the Step that determines both the visual and the game state-changing properties that the Node provides. Examine this and DestinyTalentNodeStepDefinition carefully. *IMPORTANT NOTE* Talent Nodes are, unfortunately, Content Version DEPENDENT. Though they refer to hashes for Nodes and Steps, those hashes are not guaranteed to be immutable across content versions. This is a source of great exasperation for me, but as a result anyone using Talent Grid data must ensure that the content version of their static content matches that of the server responses before showing or making decisions based on talent grid data.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"nodeIndex",
    :"nodeHash",
    :"state",
    :"isActivated",
    :"stepIndex",
    :"materialsToUpgrade",
    :"activationGridLevel",
    :"progressPercent",
    :"hidden",
    :"nodeStatsBlock"
  ]

  @type t :: %__MODULE__{
    :"nodeIndex" => integer(),
    :"nodeHash" => integer(),
    :"state" => Object,
    :"isActivated" => boolean(),
    :"stepIndex" => integer(),
    :"materialsToUpgrade" => [DestinyDefinitionsDestinyMaterialRequirement],
    :"activationGridLevel" => integer(),
    :"progressPercent" => float(),
    :"hidden" => boolean(),
    :"nodeStatsBlock" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyTalentNode do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"state", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"materialsToUpgrade", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyMaterialRequirement, options)
    |> deserialize(:"nodeStatsBlock", :struct, BungieNetAPI.Model.Object, options)
  end
end

