# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition do
  @moduledoc """
  Not terribly useful, some basic cooldown interaction info.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"executeSeconds",
    :"isPositive"
  ]

  @type t :: %__MODULE__{
    :"executeSeconds" => float(),
    :"isPositive" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition do
  def decode(value, _options) do
    value
  end
end

