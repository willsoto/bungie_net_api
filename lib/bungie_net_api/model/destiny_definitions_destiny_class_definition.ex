# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyClassDefinition do
  @moduledoc """
  Defines a Character Class in Destiny 2. These are types of characters you can play, like Titan, Warlock, and Hunter.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"classType",
    :"displayProperties",
    :"genderedClassNames",
    :"mentorVendorHash",
    :"hash",
    :"index",
    :"redacted"
  ]

  @type t :: %__MODULE__{
    :"classType" => Object,
    :"displayProperties" => DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition,
    :"genderedClassNames" => %{optional(String.t) => String.t},
    :"mentorVendorHash" => integer(),
    :"hash" => integer(),
    :"index" => integer(),
    :"redacted" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyClassDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"classType", :struct, BungieNetAPI.Model.Object, options)
    |> deserialize(:"displayProperties", :struct, BungieNetAPI.Model.DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition, options)
  end
end
