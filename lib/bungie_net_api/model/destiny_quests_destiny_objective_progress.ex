# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyQuestsDestinyObjectiveProgress do
  @moduledoc """
  Returns data about a character&#39;s status with a given Objective. Combine with DestinyObjectiveDefinition static data for display purposes.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"objectiveHash",
    :"destinationHash",
    :"activityHash",
    :"progress",
    :"complete"
  ]

  @type t :: %__MODULE__{
    :"objectiveHash" => integer(),
    :"destinationHash" => integer(),
    :"activityHash" => integer(),
    :"progress" => integer(),
    :"complete" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyQuestsDestinyObjectiveProgress do
  def decode(value, _options) do
    value
  end
end
