# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.Provisionings do
  @moduledoc """
  API calls for all endpoints tagged `Provisionings`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Delete a phone provisionings
  Delete a phone provisioning

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_provisionings_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_provisionings_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/provisionings/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false}
    ])
  end

  @doc """
  Delete a phone provisionings custom configuration key
  Delete a phone provisioning custom configuration key

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `custom_configuration_id` (integer()): Custom configuration ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_provisionings_id_custom_configurations_custom_configuration_id(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_provisionings_id_custom_configurations_custom_configuration_id(
        connection,
        id,
        custom_configuration_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:delete)
      |> url("/provisionings/#{id}/custom_configurations/#{custom_configuration_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false}
    ])
  end

  @doc """
  Get all phone provisionings
  Provides a full list of all registered provisioned phones

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:search` (String.t):
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%Provisioning{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_provisionings(Tesla.Env.client(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.Provisioning.t())} | {:error, Tesla.Env.t()}
  def get_provisionings(connection, opts \\ []) do
    optional_params = %{
      :search => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/provisionings")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.Provisioning{}]}
    ])
  end

  @doc """
  Retrieve a phone provisionings
  Fetches a phone provisioning by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Provisioning.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_provisionings_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Provisioning.t()} | {:error, Tesla.Env.t()}
  def get_provisionings_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/provisionings/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Provisioning{}}
    ])
  end

  @doc """
  Retrieve a phone provisionings custom configurations
  Fetches a phone provisionings custom configurations by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.CustomConfiguration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_provisionings_id_custom_configurations(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.CustomConfiguration.t()} | {:error, Tesla.Env.t()}
  def get_provisionings_id_custom_configurations(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/provisionings/#{id}/custom_configurations")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.CustomConfiguration{}}
    ])
  end

  @doc """
  Creates a phone provisionings
  Creates a phone provisioning

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `provisionings` (PostProvisionings):
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Provisioning.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_provisionings(Tesla.Env.client(), PlacetelAPI.Model.PostProvisionings.t(), keyword()) ::
          {:ok, PlacetelAPI.Model.Provisioning.t()} | {:error, Tesla.Env.t()}
  def post_provisionings(connection, provisionings, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/provisionings")
      |> add_param(:body, :body, provisionings)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %PlacetelAPI.Model.Provisioning{}}
    ])
  end

  @doc """
  Trigger reconfiguration of a phone
  This sends a SIP command to the user on line 1 to fetch configuration changes.

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Provisioning.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_provisionings_id_reconfigure(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Provisioning.t()} | {:error, Tesla.Env.t()}
  def post_provisionings_id_reconfigure(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/provisionings/#{id}/reconfigure")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %PlacetelAPI.Model.Provisioning{}}
    ])
  end

  @doc """
  Update a phone provisionings
  Updates a phone provisioning

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `provisionings` (PutProvisionings):
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Provisioning.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_provisionings_id(
          Tesla.Env.client(),
          integer(),
          PlacetelAPI.Model.PutProvisionings.t(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.Provisioning.t()} | {:error, Tesla.Env.t()}
  def put_provisionings_id(connection, id, provisionings, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/provisionings/#{id}")
      |> add_param(:body, :body, provisionings)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Provisioning{}}
    ])
  end

  @doc """
  Update or create a phone provisionings custom configuration key
  Updates or creates a phone provisioning custom configuration key

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): ID
  - `provisionings_id_custom_configurations` (PutProvisioningsIdCustomConfigurations):
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Provisioning.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_provisionings_id_custom_configurations(
          Tesla.Env.client(),
          integer(),
          PlacetelAPI.Model.PutProvisioningsIdCustomConfigurations.t(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.Provisioning.t()} | {:error, Tesla.Env.t()}
  def put_provisionings_id_custom_configurations(
        connection,
        id,
        provisionings_id_custom_configurations,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:put)
      |> url("/provisionings/#{id}/custom_configurations")
      |> add_param(:body, :body, provisionings_id_custom_configurations)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Provisioning{}}
    ])
  end
end
