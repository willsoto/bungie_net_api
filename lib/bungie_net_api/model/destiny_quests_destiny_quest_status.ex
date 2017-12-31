# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyQuestsDestinyQuestStatus do
  @moduledoc """
  Data regarding the progress of a Quest for a specific character. Quests are composed of multiple steps, each with potentially multiple objectives: this QuestStatus will return Objective data for the *currently active* step in this quest.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"questHash",
    :"stepHash",
    :"stepObjectives",
    :"tracked",
    :"itemInstanceId",
    :"completed",
    :"redeemed",
    :"started",
    :"vendorHash"
  ]

  @type t :: %__MODULE__{
    :"questHash" => integer(),
    :"stepHash" => integer(),
    :"stepObjectives" => [DestinyQuestsDestinyObjectiveProgress],
    :"tracked" => boolean(),
    :"itemInstanceId" => integer(),
    :"completed" => boolean(),
    :"redeemed" => boolean(),
    :"started" => boolean(),
    :"vendorHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyQuestsDestinyQuestStatus do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"stepObjectives", :list, BungieNetAPI.Model.DestinyQuestsDestinyObjectiveProgress, options)
  end
end
