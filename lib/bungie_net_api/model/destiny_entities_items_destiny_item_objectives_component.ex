# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyEntitiesItemsDestinyItemObjectivesComponent do
  @moduledoc """
  Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"objectives",
    :"flavorObjective"
  ]

  @type t :: %__MODULE__{
    :"objectives" => [DestinyQuestsDestinyObjectiveProgress],
    :"flavorObjective" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyEntitiesItemsDestinyItemObjectivesComponent do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"objectives", :list, BungieNetAPI.Model.DestinyQuestsDestinyObjectiveProgress, options)
    |> deserialize(:"flavorObjective", :struct, BungieNetAPI.Model.Object, options)
  end
end

