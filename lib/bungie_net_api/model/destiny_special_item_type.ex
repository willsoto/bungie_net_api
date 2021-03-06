# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinySpecialItemType do
  @moduledoc """
  As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinySpecialItemType do
  def decode(value, _options) do
    value
  end
end

