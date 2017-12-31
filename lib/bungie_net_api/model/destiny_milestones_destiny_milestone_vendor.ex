# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneVendor do
  @moduledoc """
  If a Milestone has one or more Vendors that are relevant to it, this will contain information about that vendor that you can choose to show.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"vendorHash",
    :"previewItemHash"
  ]

  @type t :: %__MODULE__{
    :"vendorHash" => integer(),
    :"previewItemHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyMilestonesDestinyMilestoneVendor do
  def decode(value, _options) do
    value
  end
end
