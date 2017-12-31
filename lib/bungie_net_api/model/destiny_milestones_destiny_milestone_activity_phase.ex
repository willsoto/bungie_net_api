# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivityPhase do
  @moduledoc """
  Represents whatever information we can return about an explicit phase in an activity. In the future, I hope we&#39;ll have more than just \&quot;guh, you done gone and did something,\&quot; but for the forseeable future that&#39;s all we&#39;ve got. I&#39;m making it more than just a list of booleans out of that overly-optimistic hope.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"complete"
  ]

  @type t :: %__MODULE__{
    :"complete" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivityPhase do
  def decode(value, _options) do
    value
  end
end
