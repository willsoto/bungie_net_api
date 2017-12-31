# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMilestonesDestinyMilestone do
  @moduledoc """
  Represents a runtime instance of a user&#39;s milestone status. Live Milestone data should be combined with DestinyMilestoneDefinition data to show the user a picture of what is available for them to do in the game, and their status in regards to said \&quot;things to do.\&quot; Consider it a big, wonky to-do list, or Advisors 3.0 for those who remember the Destiny 1 API.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"milestoneHash",
    :"availableQuests",
    :"values",
    :"vendorHashes",
    :"vendors",
    :"rewards",
    :"startDate",
    :"endDate"
  ]

  @type t :: %__MODULE__{
    :"milestoneHash" => integer(),
    :"availableQuests" => [DestinyMilestonesDestinyMilestoneQuest],
    :"values" => %{optional(String.t) => float()},
    :"vendorHashes" => [integer()],
    :"vendors" => [DestinyMilestonesDestinyMilestoneVendor],
    :"rewards" => [DestinyMilestonesDestinyMilestoneRewardCategory],
    :"startDate" => DateTime.t,
    :"endDate" => DateTime.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMilestonesDestinyMilestone do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"availableQuests", :list, BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneQuest, options)
    |> deserialize(:"vendors", :list, BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneVendor, options)
    |> deserialize(:"rewards", :list, BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneRewardCategory, options)
  end
end

