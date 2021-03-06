# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivityCompletionStatus do
  @moduledoc """
  Represents this player&#39;s personal completion status for the Activity under a Milestone, if the activity has trackable completion and progress information. (most activities won&#39;t, or the concept won&#39;t apply. For instance, it makes sense to talk about a tier of a raid as being Completed or having progress, but it doesn&#39;t make sense to talk about a Crucible Playlist in those terms.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"completed",
    :"phases"
  ]

  @type t :: %__MODULE__{
    :"completed" => boolean(),
    :"phases" => [DestinyMilestonesDestinyMilestoneActivityPhase]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivityCompletionStatus do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"phases", :list, BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivityPhase, options)
  end
end

