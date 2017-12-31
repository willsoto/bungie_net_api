# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.ForumPostResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"lastReplyTimestamp",
    :"IsPinned",
    :"urlMediaType",
    :"thumbnail",
    :"popularity",
    :"isActive",
    :"isAnnouncement",
    :"userRating",
    :"userHasRated",
    :"userHasMutedPost",
    :"latestReplyPostId",
    :"latestReplyAuthorId",
    :"ignoreStatus",
    :"locale"
  ]

  @type t :: %__MODULE__{
    :"lastReplyTimestamp" => DateTime.t,
    :"IsPinned" => boolean(),
    :"urlMediaType" => ForumForumMediaType,
    :"thumbnail" => String.t,
    :"popularity" => ForumForumPostPopularity,
    :"isActive" => boolean(),
    :"isAnnouncement" => boolean(),
    :"userRating" => integer(),
    :"userHasRated" => boolean(),
    :"userHasMutedPost" => boolean(),
    :"latestReplyPostId" => integer(),
    :"latestReplyAuthorId" => integer(),
    :"ignoreStatus" => IgnoresIgnoreResponse,
    :"locale" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.ForumPostResponse do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"urlMediaType", :struct, BungieNetAPI.Model.ForumForumMediaType, options)
    |> deserialize(:"popularity", :struct, BungieNetAPI.Model.ForumForumPostPopularity, options)
    |> deserialize(:"ignoreStatus", :struct, BungieNetAPI.Model.IgnoresIgnoreResponse, options)
  end
end
