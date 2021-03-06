# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Model.DestinyDefinitionsDestinyVendorAcceptedItemDefinition do
  @moduledoc """
  If you ever wondered how the Vault works, here it is.  The Vault is merely a set of inventory buckets that exist on your Profile/Account level. When you transfer items in the Vault, the game is using the Vault Vendor&#39;s DestinyVendorAcceptedItemDefinitions to see where the appropriate destination bucket is for the source bucket from whence your item is moving. If it finds such an entry, it transfers the item to the other bucket.  The mechanics for Postmaster works similarly, which is also a vendor. All driven by Accepted Items.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"acceptedInventoryBucketHash",
    :"destinationInventoryBucketHash"
  ]

  @type t :: %__MODULE__{
    :"acceptedInventoryBucketHash" => integer(),
    :"destinationInventoryBucketHash" => integer()
  }
end

defimpl Poison.Decoder, for: BungieNetAPI.Model.DestinyDefinitionsDestinyVendorAcceptedItemDefinition do
  def decode(value, _options) do
    value
  end
end

