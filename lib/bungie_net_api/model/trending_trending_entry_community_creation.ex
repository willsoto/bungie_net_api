# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.TrendingTrendingEntryCommunityCreation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"media",
    :"title",
    :"author",
    :"authorMembershipId",
    :"postId",
    :"body",
    :"upvotes"
  ]

  @type t :: %__MODULE__{
    :"media" => String.t,
    :"title" => String.t,
    :"author" => String.t,
    :"authorMembershipId" => integer(),
    :"postId" => integer(),
    :"body" => String.t,
    :"upvotes" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.TrendingTrendingEntryCommunityCreation do
  def decode(value, _options) do
    value
  end
end

