# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyEntitiesItemsDestinyItemPerksComponent do
  @moduledoc """
  Instanced items can have perks: benefits that the item bestows.  These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item&#39;s tooltip.  Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"perks"
  ]

  @type t :: %__MODULE__{
    :"perks" => [DestinyPerksDestinyPerkReference]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyEntitiesItemsDestinyItemPerksComponent do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"perks", :list, BungieNetAPI.Model.DestinyPerksDestinyPerkReference, options)
  end
end

