# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDestinyVendorReplyType do
  @moduledoc """
  This determines the type of reply that a Vendor will have during an Interaction.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDestinyVendorReplyType do
  def decode(value, _options) do
    value
  end
end

