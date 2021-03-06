# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMilestonesDestinyPublicMilestoneActivityVariant do
  @moduledoc """
  Represents a variant of an activity that&#39;s relevant to a milestone.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"activityHash",
    :"activityModeHash",
    :"activityModeType"
  ]

  @type t :: %__MODULE__{
    :"activityHash" => integer(),
    :"activityModeHash" => integer(),
    :"activityModeType" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMilestonesDestinyPublicMilestoneActivityVariant do
  def decode(value, _options) do
    value
  end
end

