# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsItemsDestinyPlugRuleDefinition do
  @moduledoc """
  Dictates a rule around whether the plug is enabled or insertable.  In practice, the live Destiny data will refer to these entries by index. You can then look up that index in the appropriate property (enabledRules or insertionRules) to get the localized string for the failure message if it failed.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"failureMessage"
  ]

  @type t :: %__MODULE__{
    :"failureMessage" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsItemsDestinyPlugRuleDefinition do
  def decode(value, _options) do
    value
  end
end

