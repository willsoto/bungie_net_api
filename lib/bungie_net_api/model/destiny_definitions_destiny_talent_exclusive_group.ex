# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyTalentExclusiveGroup do
  @moduledoc """
  As of Destiny 2, nodes can exist as part of \&quot;Exclusive Groups\&quot;. These differ from exclusive sets in that, within the group, many nodes can be activated. But the act of activating any node in the group will cause \&quot;opposing\&quot; nodes (nodes in groups that are not allowed to be activated at the same time as this group) to deactivate.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"groupHash",
    :"loreHash",
    :"nodeHashes",
    :"opposingGroupHashes",
    :"opposingNodeHashes"
  ]

  @type t :: %__MODULE__{
    :"groupHash" => integer(),
    :"loreHash" => integer(),
    :"nodeHashes" => [integer()],
    :"opposingGroupHashes" => [integer()],
    :"opposingNodeHashes" => [integer()]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyTalentExclusiveGroup do
  def decode(value, _options) do
    value
  end
end

