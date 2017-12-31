# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyCharacterDestinyCharacterCustomization do
  @moduledoc """
  Raw data about the customization options chosen for a character&#39;s face and appearance.  You can look up the relevant class/race/gender combo in DestinyCharacterCustomizationOptionDefinition for the character, and then look up these values within the CustomizationOptions found to pull some data about their choices. Warning: not all of that data is meaningful. Some data has useful icons. Others have nothing, and are only meant for 3D rendering purposes (which we sadly do not expose yet)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"personality",
    :"face",
    :"skinColor",
    :"lipColor",
    :"eyeColor",
    :"hairColors",
    :"featureColors",
    :"decalColor",
    :"wearHelmet",
    :"hairIndex",
    :"featureIndex",
    :"decalIndex"
  ]

  @type t :: %__MODULE__{
    :"personality" => integer(),
    :"face" => integer(),
    :"skinColor" => integer(),
    :"lipColor" => integer(),
    :"eyeColor" => integer(),
    :"hairColors" => [integer()],
    :"featureColors" => [integer()],
    :"decalColor" => integer(),
    :"wearHelmet" => boolean(),
    :"hairIndex" => integer(),
    :"featureIndex" => integer(),
    :"decalIndex" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyCharacterDestinyCharacterCustomization do
  def decode(value, _options) do
    value
  end
end

