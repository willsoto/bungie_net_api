# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyUnlockDefinition do
  @moduledoc """
  Unlock Flags are small bits (literally, a bit, as in a boolean value) that the game server uses for an extremely wide range of state checks, progress storage, and other interesting tidbits of information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayProperties",
    :"hash",
    :"index",
    :"redacted"
  ]

  @type t :: %__MODULE__{
    :"displayProperties" => Object,
    :"hash" => integer(),
    :"index" => integer(),
    :"redacted" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyUnlockDefinition do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"displayProperties", :struct, BungieNetAPI.Model.Object, options)
  end
end

