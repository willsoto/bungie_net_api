# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyVendorCategoryOverlayDefinition do
  @moduledoc """
  The details of an overlay prompt to show to a user. They are all fairly self-explanatory localized strings that can be shown.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"choiceDescription",
    :"description",
    :"icon",
    :"title"
  ]

  @type t :: %__MODULE__{
    :"choiceDescription" => String.t,
    :"description" => String.t,
    :"icon" => String.t,
    :"title" => String.t
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyVendorCategoryOverlayDefinition do
  def decode(value, _options) do
    value
  end
end
