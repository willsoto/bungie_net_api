# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyFactionVendorDefinition do
  @moduledoc """
  These definitions represent faction vendors at different points in the game.  A single faction may contain multiple vendors, or the same vendor available at two different locations.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"vendorHash",
    :"destinationHash",
    :"backgroundImagePath"
  ]

  @type t :: %__MODULE__{
    :"vendorHash" => integer(),
    :"destinationHash" => integer(),
    :"backgroundImagePath" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyFactionVendorDefinition do
  def decode(value, _options) do
    value
  end
end

