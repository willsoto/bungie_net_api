# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyVendorCategoryEntryDefinition do
  @moduledoc """
  This is the definition for a single Vendor Category, into which Sale Items are grouped.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"categoryIndex",
    :"categoryId",
    :"categoryHash",
    :"quantityAvailable",
    :"showUnavailableItems",
    :"hideIfNoCurrency",
    :"hideFromRegularPurchase",
    :"buyStringOverride",
    :"disabledDescription",
    :"displayTitle",
    :"overlay",
    :"vendorItemIndexes"
  ]

  @type t :: %__MODULE__{
    :"categoryIndex" => integer(),
    :"categoryId" => String.t,
    :"categoryHash" => integer(),
    :"quantityAvailable" => integer(),
    :"showUnavailableItems" => boolean(),
    :"hideIfNoCurrency" => boolean(),
    :"hideFromRegularPurchase" => boolean(),
    :"buyStringOverride" => String.t,
    :"disabledDescription" => String.t,
    :"displayTitle" => String.t,
    :"overlay" => Object,
    :"vendorItemIndexes" => [integer()]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyVendorCategoryEntryDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"overlay", :struct, BungieNetAPI.Model.Object, options)
  end
end

