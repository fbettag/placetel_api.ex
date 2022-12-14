# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.SipUsers do
  @moduledoc """
  API calls for all endpoints tagged `SipUsers`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Delete a sip user
  Delete a sip user by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Sip user ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.SipUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_sip_users_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.SipUser.t()} | {:error, Tesla.Env.t()}
  def delete_sip_users_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/sip_users/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.SipUser{}}
    ])
  end

  @doc """
  Delete short code
  Delete sip user short code

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Sip user ID
  - `code_id` (integer()): Short code ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.ShortCode.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_sip_users_id_short_codes_code_id(
          Tesla.Env.client(),
          integer(),
          integer(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.ShortCode.t()} | {:error, Tesla.Env.t()}
  def delete_sip_users_id_short_codes_code_id(connection, id, code_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/sip_users/#{id}/short_codes/#{code_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.ShortCode{}}
    ])
  end

  @doc """
  Fetch all sip users
  Fetch a list of all sip users

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"filter[did]"` (integer()): 
    - `:"filter[username]"` (String.t): 
    - `:"filter[name]"` (String.t): 
    - `:"filter[description]"` (String.t): 
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%SipUser{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sip_users(Tesla.Env.client(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.SipUser.t())} | {:error, Tesla.Env.t()}
  def get_sip_users(connection, opts \\ []) do
    optional_params = %{
      :"filter[did]" => :query,
      :"filter[username]" => :query,
      :"filter[name]" => :query,
      :"filter[description]" => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/sip_users")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.SipUser{}]}
    ])
  end

  @doc """
  Fetch a sip user
  Fetch a sip users by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Sip user ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.SipUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sip_users_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.SipUser.t()} | {:error, Tesla.Env.t()}
  def get_sip_users_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/sip_users/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.SipUser{}}
    ])
  end

  @doc """
  Short codes
  List sip user short codes

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Sip user ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.ShortCode.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sip_users_id_short_codes(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.ShortCode.t()} | {:error, Tesla.Env.t()}
  def get_sip_users_id_short_codes(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/sip_users/#{id}/short_codes")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.ShortCode{}}
    ])
  end

  @doc """
  Create a sip user
  Create a new sip user

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `sip_users` (PostSipUsers): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.SipUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_sip_users(Tesla.Env.client(), PlacetelAPI.Model.PostSipUsers.t(), keyword()) ::
          {:ok, PlacetelAPI.Model.SipUser.t()} | {:error, Tesla.Env.t()}
  def post_sip_users(connection, sip_users, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/sip_users")
      |> add_param(:body, :body, sip_users)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %PlacetelAPI.Model.SipUser{}}
    ])
  end

  @doc """
  Create short code
  Create sip user short code

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Sip user ID
  - `sip_users_id_short_codes` (PostSipUsersIdShortCodes): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.ShortCode.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_sip_users_id_short_codes(
          Tesla.Env.client(),
          integer(),
          PlacetelAPI.Model.PostSipUsersIdShortCodes.t(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.ShortCode.t()} | {:error, Tesla.Env.t()}
  def post_sip_users_id_short_codes(connection, id, sip_users_id_short_codes, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/sip_users/#{id}/short_codes")
      |> add_param(:body, :body, sip_users_id_short_codes)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %PlacetelAPI.Model.ShortCode{}}
    ])
  end

  @doc """
  Update a sip user
  Update a sip user by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Sip user ID
  - `sip_users` (PutSipUsers): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.SipUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_sip_users_id(
          Tesla.Env.client(),
          integer(),
          PlacetelAPI.Model.PutSipUsers.t(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.SipUser.t()} | {:error, Tesla.Env.t()}
  def put_sip_users_id(connection, id, sip_users, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/sip_users/#{id}")
      |> add_param(:body, :body, sip_users)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.SipUser{}}
    ])
  end
end
