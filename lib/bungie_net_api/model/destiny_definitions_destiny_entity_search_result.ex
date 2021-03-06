# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyEntitySearchResult do
  @moduledoc """
  The results of a search for Destiny content. This will be improved on over time, I&#39;ve been doing some experimenting to see what might be useful.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"suggestedWords",
    :"results"
  ]

  @type t :: %__MODULE__{
    :"suggestedWords" => [String.t],
    :"results" => Object
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyEntitySearchResult do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :struct, BungieNetAPI.Model.Object, options)
  end
end

