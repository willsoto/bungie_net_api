# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.QueriesPagedQuery do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"itemsPerPage",
    :"currentPage",
    :"requestContinuationToken"
  ]

  @type t :: %__MODULE__{
    :"itemsPerPage" => integer(),
    :"currentPage" => integer(),
    :"requestContinuationToken" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.QueriesPagedQuery do
  def decode(value, _options) do
    value
  end
end
