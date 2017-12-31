# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.ContentCommentSummary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"topicId",
    :"commentCount"
  ]

  @type t :: %__MODULE__{
    :"topicId" => integer(),
    :"commentCount" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.ContentCommentSummary do
  def decode(value, _options) do
    value
  end
end

