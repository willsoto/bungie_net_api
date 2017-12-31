# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem do
  @moduledoc """
  A subclass of DestinyItemQuantity, that provides not just the item and its quantity but also information that BNet can - at some point - use internally to provide more robust runtime information about the item&#39;s qualities.  If you want it, please ask! We&#39;re just out of time to wire it up right now. Or a clever person just may do it with our existing endpoints.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"vendorHash",
    :"vendorItemIndex",
    :"itemHash",
    :"itemInstanceId",
    :"quantity"
  ]

  @type t :: %__MODULE__{
    :"vendorHash" => integer(),
    :"vendorItemIndex" => integer(),
    :"itemHash" => integer(),
    :"itemInstanceId" => integer(),
    :"quantity" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem do
  def decode(value, _options) do
    value
  end
end
