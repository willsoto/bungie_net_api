# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyDestinationDefinition do
  @moduledoc """
  On to one of the more confusing subjects of the API. What is a Destination, and what is the relationship between it, Activities, Locations, and Places?  A \&quot;Destination\&quot; is a specific region/city/area of a larger \&quot;Place\&quot;. For instance, a Place might be Earth where a Destination might be Bellevue, Washington. (Please, pick a more interesting destination if you come to visit Earth).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayProperties",
    :"placeHash",
    :"defaultFreeroamActivityHash",
    :"activityGraphEntries",
    :"bubbleSettings",
    :"bubbles",
    :"hash",
    :"index",
    :"redacted"
  ]

  @type t :: %__MODULE__{
    :"displayProperties" => DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition,
    :"placeHash" => integer(),
    :"defaultFreeroamActivityHash" => integer(),
    :"activityGraphEntries" => [DestinyDefinitionsDestinyActivityGraphListEntryDefinition],
    :"bubbleSettings" => [DestinyDefinitionsDestinyDestinationBubbleSettingDefinition],
    :"bubbles" => [DestinyDefinitionsDestinyBubbleDefinition],
    :"hash" => integer(),
    :"index" => integer(),
    :"redacted" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyDestinationDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"displayProperties", :struct, BungieNetAPI.Model.DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition, options)
    |> deserialize(:"activityGraphEntries", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyActivityGraphListEntryDefinition, options)
    |> deserialize(:"bubbleSettings", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyDestinationBubbleSettingDefinition, options)
    |> deserialize(:"bubbles", :list, BungieNetAPI.Model.DestinyDefinitionsDestinyBubbleDefinition, options)
  end
end

