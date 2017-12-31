# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule BungieNetAPI.Api.Destiny2 do
  @moduledoc """
  API calls for all endpoints tagged `Destiny2`.
  """

  alias BungieNetAPI.Connection
  import BungieNetAPI.RequestBuilder


  @doc """
  Activate a Talent Node. Chill out, everyone: we haven&#39;t decided yet whether this will be able to activate nodes with costs, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not actually implemented yet, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_activate_talent_node(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_activate_talent_node(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/ActivateTalentNode/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end

  @doc """
  Equip an item. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_equip_item(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_equip_item(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/EquipItem/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end

  @doc """
  Equip a list of items by itemInstanceIds. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Any items not found on your character will be ignored.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20038{}} on success
  {:error, info} on failure
  """
  @spec destiny2_equip_items(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20038.t} | {:error, Tesla.Env.t}
  def destiny2_equip_items(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/EquipItems/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20038{})
  end

  @doc """
  Gets activity history stats for indicated character.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The id of the character to retrieve.
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :count (integer()): Number of rows to return
    - :mode (integer()): A filter for the activity mode to be returned. None returns all activities. See the documentation for DestinyActivityModeType for valid values, and pass in string representation.
    - :page (integer()): Page number to return, starting with 0.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20046{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_activity_history(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20046.t} | {:error, Tesla.Env.t}
  def destiny2_get_activity_history(connection, character_id, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"count" => :query,
      :"mode" => :query,
      :"page" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Account/#{destiny_membership_id}/Character/#{character_id}/Stats/Activities/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20046{})
  end

  @doc """
  Returns character information for the supplied character.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): ID of the character.
  - destiny_membership_id (integer()): Destiny membership ID.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :components ([DestinyDestinyComponentType]): A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20033{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_character(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20033.t} | {:error, Tesla.Env.t}
  def destiny2_get_character(connection, character_id, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"components" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Profile/#{destiny_membership_id}/Character/#{character_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20033{})
  end

  @doc """
  Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - group_id (integer()): Group ID of the clan whose leaderboards you wish to fetch.
  - opts (KeywordList): [optional] Optional parameters
    - :modes (String.t): List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20042{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_clan_aggregate_stats(Tesla.Env.client, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20042.t} | {:error, Tesla.Env.t}
  def destiny2_get_clan_aggregate_stats(connection, group_id, opts \\ []) do
    optional_params = %{
      :"modes" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/Stats/AggregateClanStats/#{group_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20042{})
  end

  @doc """
  Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - group_id (integer()): Group ID of the clan whose leaderboards you wish to fetch.
  - opts (KeywordList): [optional] Optional parameters
    - :maxtop (integer()): Maximum number of top players to return. Use a large number to get entire leaderboard.
    - :modes (String.t): List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
    - :statid (String.t): ID of stat to return rather than returning all Leaderboard stats.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20041{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_clan_leaderboards(Tesla.Env.client, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20041.t} | {:error, Tesla.Env.t}
  def destiny2_get_clan_leaderboards(connection, group_id, opts \\ []) do
    optional_params = %{
      :"maxtop" => :query,
      :"modes" => :query,
      :"statid" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/Stats/Leaderboards/Clans/#{group_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20041{})
  end

  @doc """
  Returns information on the weekly clan rewards and if the clan has earned them or not. Note that this will always report rewards as not redeemed.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - group_id (integer()): A valid group id of clan.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20034{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_clan_weekly_reward_state(Tesla.Env.client, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20034.t} | {:error, Tesla.Env.t}
  def destiny2_get_clan_weekly_reward_state(connection, group_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Clan/#{group_id}/WeeklyRewardState/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20034{})
  end

  @doc """
  Gets all activities the character has participated in together with aggregate statistics for those activities.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The specific character whose activities should be returned.
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20048{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_destiny_aggregate_activity_stats(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20048.t} | {:error, Tesla.Env.t}
  def destiny2_get_destiny_aggregate_activity_stats(connection, character_id, destiny_membership_id, membership_type, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Account/#{destiny_membership_id}/Character/#{character_id}/Stats/AggregateActivityStats/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20048{})
  end

  @doc """
  Returns the static definition of an entity of the given Type and hash identifier. Examine the API Documentation for the Type Names of entities that have their own definitions. Note that the return type will always *inherit from* DestinyDefinition, but the specific type returned will be the requested entity type if it can be found. Please don&#39;t use this as a chatty alternative to the Manifest database if you require large sets of data, but for simple and one-off accesses this should be handy.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - entity_type (String.t): The type of entity for whom you would like results. These correspond to the entity&#39;s definition contract name. For instance, if you are looking for items, this property should be &#39;DestinyInventoryItemDefinition&#39;. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is tentatively in final form, but there may be bugs that prevent desirable operation.
  - hash_identifier (integer()): The hash identifier for the specific Entity you want returned.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20030{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_destiny_entity_definition(Tesla.Env.client, String.t, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20030.t} | {:error, Tesla.Env.t}
  def destiny2_get_destiny_entity_definition(connection, entity_type, hash_identifier, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Manifest/#{entity_type}/#{hash_identifier}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20030{})
  end

  @doc """
  Returns the current version of the manifest as a json object.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20029{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_destiny_manifest(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20029.t} | {:error, Tesla.Env.t}
  def destiny2_get_destiny_manifest(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Manifest/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20029{})
  end

  @doc """
  Gets historical stats for indicated character.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The id of the character to retrieve. You can omit this character ID or set it to 0 to get aggregate stats across all characters.
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :dayend (DateTime.t): Last day to return when daily stats are requested. Use the format YYYY-MM-DD.
    - :daystart (DateTime.t): First day to return when daily stats are requested. Use the format YYYY-MM-DD
    - :groups ([DestinyHistoricalStatsDefinitionsDestinyStatsGroupType]): Group of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals
    - :modes ([DestinyHistoricalStatsDefinitionsDestinyActivityModeType]): Game modes to return. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
    - :period_type (integer()): Indicates a specific period type to return. Optional. May be: Daily, AllTime, or Activity

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20044{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_historical_stats(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20044.t} | {:error, Tesla.Env.t}
  def destiny2_get_historical_stats(connection, character_id, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"dayend" => :query,
      :"daystart" => :query,
      :"groups" => :query,
      :"modes" => :query,
      :"periodType" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Account/#{destiny_membership_id}/Character/#{character_id}/Stats/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20044{})
  end

  @doc """
  Gets historical stats definitions.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20040{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_historical_stats_definition(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20040.t} | {:error, Tesla.Env.t}
  def destiny2_get_historical_stats_definition(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Stats/Definition/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20040{})
  end

  @doc """
  Gets aggregate historical stats organized around each character for a given account.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :groups ([DestinyHistoricalStatsDefinitionsDestinyStatsGroupType]): Groups of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20045{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_historical_stats_for_account(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20045.t} | {:error, Tesla.Env.t}
  def destiny2_get_historical_stats_for_account(connection, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"groups" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Account/#{destiny_membership_id}/Stats/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20045{})
  end

  @doc """
  Retrieve the details of an instanced Destiny Item. An instanced Destiny item is one with an ItemInstanceId. Non-instanced items, such as materials, have no useful instance-specific details and thus are not queryable here.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - destiny_membership_id (integer()): The membership ID of the destiny profile.
  - item_instance_id (integer()): The Instance ID of the destiny item.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :components ([DestinyDestinyComponentType]): A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20035{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_item(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20035.t} | {:error, Tesla.Env.t}
  def destiny2_get_item(connection, destiny_membership_id, item_instance_id, membership_type, opts \\ []) do
    optional_params = %{
      :"components" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Profile/#{destiny_membership_id}/Item/#{item_instance_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20035{})
  end

  @doc """
  Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment/suggestion/preparation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :maxtop (integer()): Maximum number of top players to return. Use a large number to get entire leaderboard.
    - :modes (String.t): List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
    - :statid (String.t): ID of stat to return rather than returning all Leaderboard stats.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20041{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_leaderboards(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20041.t} | {:error, Tesla.Env.t}
  def destiny2_get_leaderboards(connection, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"maxtop" => :query,
      :"modes" => :query,
      :"statid" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Account/#{destiny_membership_id}/Stats/Leaderboards/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20041{})
  end

  @doc """
  Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The specific character to build the leaderboard around for the provided Destiny Membership.
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :maxtop (integer()): Maximum number of top players to return. Use a large number to get entire leaderboard.
    - :modes (String.t): List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
    - :statid (String.t): ID of stat to return rather than returning all Leaderboard stats.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20041{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_leaderboards_for_character(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20041.t} | {:error, Tesla.Env.t}
  def destiny2_get_leaderboards_for_character(connection, character_id, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"maxtop" => :query,
      :"modes" => :query,
      :"statid" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/Stats/Leaderboards/#{membership_type}/#{destiny_membership_id}/#{character_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20041{})
  end

  @doc """
  Gets the available post game carnage report for the activity ID.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - activity_id (integer()): The ID of the activity whose PGCR is requested.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20039{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_post_game_carnage_report(Tesla.Env.client, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20039.t} | {:error, Tesla.Env.t}
  def destiny2_get_post_game_carnage_report(connection, activity_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Stats/PostGameCarnageReport/#{activity_id}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20039{})
  end

  @doc """
  Returns Destiny Profile information for the supplied membership.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - destiny_membership_id (integer()): Destiny membership ID.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :components ([DestinyDestinyComponentType]): A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20032{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_profile(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20032.t} | {:error, Tesla.Env.t}
  def destiny2_get_profile(connection, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"components" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Profile/#{destiny_membership_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20032{})
  end

  @doc """
  Gets custom localized content for the milestone of the given hash, if it exists.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - milestone_hash (integer()): The identifier for the milestone to be returned.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20049{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_public_milestone_content(Tesla.Env.client, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20049.t} | {:error, Tesla.Env.t}
  def destiny2_get_public_milestone_content(connection, milestone_hash, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Milestones/#{milestone_hash}/Content/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20049{})
  end

  @doc """
  Gets public information about currently available Milestones.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20050{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_public_milestones(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20050.t} | {:error, Tesla.Env.t}
  def destiny2_get_public_milestones(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/Milestones/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20050{})
  end

  @doc """
  Gets details about unique weapon usage, including all exotic weapons.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The id of the character to retrieve.
  - destiny_membership_id (integer()): The Destiny membershipId of the user to retrieve.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20047{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_unique_weapon_history(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20047.t} | {:error, Tesla.Env.t}
  def destiny2_get_unique_weapon_history(connection, character_id, destiny_membership_id, membership_type, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Account/#{destiny_membership_id}/Character/#{character_id}/Stats/UniqueWeapons/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20047{})
  end

  @doc """
  Get the details of a specific Vendor. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The Destiny Character ID of the character for whom we&#39;re getting vendor info.
  - destiny_membership_id (integer()): Destiny membership ID of another user. You may be denied.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - vendor_hash (integer()): The Hash identifier of the Vendor to be returned.
  - opts (KeywordList): [optional] Optional parameters
    - :components ([DestinyDestinyComponentType]): A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20037{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_vendor(Tesla.Env.client, integer(), integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20037.t} | {:error, Tesla.Env.t}
  def destiny2_get_vendor(connection, character_id, destiny_membership_id, membership_type, vendor_hash, opts \\ []) do
    optional_params = %{
      :"components" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Profile/#{destiny_membership_id}/Character/#{character_id}/Vendors/#{vendor_hash}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20037{})
  end

  @doc """
  Get currently available vendors from the list of vendors that can possibly have rotating inventory. Note that this does not include things like preview vendors and vendors-as-kiosks, neither of whom have rotating/dynamic inventories. Use their definitions as-is for those. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - character_id (integer()): The Destiny Character ID of the character for whom we&#39;re getting vendor info.
  - destiny_membership_id (integer()): Destiny membership ID of another user. You may be denied.
  - membership_type (integer()): A valid non-BungieNet membership type.
  - opts (KeywordList): [optional] Optional parameters
    - :components ([DestinyDestinyComponentType]): A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20036{}} on success
  {:error, info} on failure
  """
  @spec destiny2_get_vendors(Tesla.Env.client, integer(), integer(), integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20036.t} | {:error, Tesla.Env.t}
  def destiny2_get_vendors(connection, character_id, destiny_membership_id, membership_type, opts \\ []) do
    optional_params = %{
      :"components" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/#{membership_type}/Profile/#{destiny_membership_id}/Character/#{character_id}/Vendors/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20036{})
  end

  @doc """
  Insert a plug into a socketed item. I know how it sounds, but I assure you it&#39;s much more G-rated than you might be guessing. We haven&#39;t decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_insert_socket_plug(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_insert_socket_plug(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/InsertSocketPlug/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end

  @doc """
  Extract an item from the Postmaster, with whatever implications that may entail. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it&#39;s an instanced item.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_pull_from_postmaster(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_pull_from_postmaster(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/PullFromPostmaster/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end

  @doc """
  Report a player that you met in an activity that was engaging in ToS-violating activities. Both you and the offending player must have played in the activityId passed in. Please use this judiciously and only when you have strong suspicions of violation, pretty please.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - activity_id (integer()): The ID of the activity where you ran into the brigand that you&#39;re reporting.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_report_offensive_post_game_carnage_report_player(Tesla.Env.client, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_report_offensive_post_game_carnage_report_player(connection, activity_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Stats/PostGameCarnageReport/#{activity_id}/Report/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end

  @doc """
  Gets a page list of Destiny items.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - search_term (String.t): The string to use when searching for Destiny entities.
  - type (String.t): The type of entity for whom you would like results. These correspond to the entity&#39;s definition contract name. For instance, if you are looking for items, this property should be &#39;DestinyInventoryItemDefinition&#39;.
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Page number to return, starting with 0.

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20043{}} on success
  {:error, info} on failure
  """
  @spec destiny2_search_destiny_entities(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20043.t} | {:error, Tesla.Env.t}
  def destiny2_search_destiny_entities(connection, search_term, type, opts \\ []) do
    optional_params = %{
      :"page" => :query
    }
    %{}
    |> method(:get)
    |> url("/Destiny2/Armory/Search/#{type}/#{search_term}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20043{})
  end

  @doc """
  Returns a list of Destiny memberships given a full Gamertag or PSN ID.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - display_name (String.t): The full gamertag or PSN id of the player. Spaces and case are ignored.
  - membership_type (integer()): A valid non-BungieNet membership type, or All.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20031{}} on success
  {:error, info} on failure
  """
  @spec destiny2_search_destiny_player(Tesla.Env.client, String.t, integer(), keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20031.t} | {:error, Tesla.Env.t}
  def destiny2_search_destiny_player(connection, display_name, membership_type, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/Destiny2/SearchDestinyPlayer/#{membership_type}/#{display_name}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20031{})
  end

  @doc """
  Set the Lock State for an instanced item. You must have a valid Destiny Account.

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_set_item_lock_state(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_set_item_lock_state(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/SetLockState/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end

  @doc """
  Transfer an item to/from your vault. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it&#39;s an instanced item. itshappening.gif

  ## Parameters

  - connection (BungieNetAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %BungieNetAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec destiny2_transfer_item(Tesla.Env.client, keyword()) :: {:ok, BungieNetAPI.Model.InlineResponse20015.t} | {:error, Tesla.Env.t}
  def destiny2_transfer_item(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/Destiny2/Actions/Items/TransferItem/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%BungieNetAPI.Model.InlineResponse20015{})
  end
end
