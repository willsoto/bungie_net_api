# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyItemStatBlockDefinition do
  @moduledoc """
  Information about the item&#39;s calculated stats, with as much data as we can find for the stats without having an actual instance of the item.  Note that this means the entire concept of providing these stats is fundamentally insufficient: we cannot predict with 100% accuracy the conditions under which an item can spawn, so we use various heuristics to attempt to simulate the conditions as accurately as possible. Actual stats for items in-game can and will vary, but these should at least be useful base points for comparison and display.  It is also worth noting that some stats, like Magazine size, have further calculations performed on them by scripts in-game and on the game servers that BNet does not have access to. We cannot know how those stats are further transformed, and thus some stats will be inaccurate even on instances of items in BNet vs. how they appear in-game. This is a known limitation of our item statistics, without any planned fix.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"statGroupHash",
    :"stats",
    :"hasDisplayableStats",
    :"primaryBaseStatHash"
  ]

  @type t :: %__MODULE__{
    :"statGroupHash" => integer(),
    :"stats" => %{optional(String.t) => DestinyDefinitionsDestinyInventoryItemStatDefinition},
    :"hasDisplayableStats" => boolean(),
    :"primaryBaseStatHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyItemStatBlockDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"stats", :map, BungieNetAPI.Model.DestinyDefinitionsDestinyInventoryItemStatDefinition, options)
  end
end

