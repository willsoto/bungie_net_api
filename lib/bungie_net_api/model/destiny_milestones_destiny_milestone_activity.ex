# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivity do
  @moduledoc """
  Sometimes, we know the specific activity that the Milestone wants you to play. This entity provides additional information about that Activity and all of its variants. (sometimes there&#39;s only one variant, but I think you get the point)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"activityHash",
    :"activityModeHash",
    :"activityModeType",
    :"modifierHashes",
    :"variants"
  ]

  @type t :: %__MODULE__{
    :"activityHash" => integer(),
    :"activityModeHash" => integer(),
    :"activityModeType" => integer(),
    :"modifierHashes" => [integer()],
    :"variants" => [DestinyMilestonesDestinyMilestoneActivityVariant]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivity do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"variants", :list, BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneActivityVariant, options)
  end
end
