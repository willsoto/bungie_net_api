# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyResponsesDestinyVendorResponse do
  @moduledoc """
  A response containing all of the components for a vendor.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"vendor",
    :"categories",
    :"sales",
    :"itemComponents"
  ]

  @type t :: %__MODULE__{
    :"vendor" => Object,
    :"categories" => Object,
    :"sales" => Object,
    :"itemComponents" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyResponsesDestinyVendorResponse do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"vendor", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"categories", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"sales", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"itemComponents", :struct, BungieNetAPI.Model.Object, options)
  end
end
