# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.QueriesSearchResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"totalResults",
    :"hasMore",
    :"query",
    :"replacementContinuationToken",
    :"useTotalResults"
  ]

  @type t :: %__MODULE__{
    :"totalResults" => integer(),
    :"hasMore" => boolean(),
    :"query" => QueriesPagedQuery,
    :"replacementContinuationToken" => String.t,
    :"useTotalResults" => boolean()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.QueriesSearchResult do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"query", :struct, BungieNetAPI.Model.QueriesPagedQuery, options)
  end
end

