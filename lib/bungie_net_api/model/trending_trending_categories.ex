# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.TrendingTrendingCategories do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"categories"
  ]

  @type t :: %__MODULE__{
    :"categories" => [TrendingTrendingCategory]
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.TrendingTrendingCategories do
  import BungieNetAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"categories", :list, BungieNetAPI.Model.TrendingTrendingCategory, options)
  end
end

