# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.Numbers do
  @moduledoc """
  API calls for all endpoints tagged `Numbers`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Delete a profile for a number
  Removes the profile for a number

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `number_id` (integer()): Number ID
  - `id` (integer()): Profile ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Profile.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_numbers_number_id_profiles_id(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def delete_numbers_number_id_profiles_id(connection, number_id, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/numbers/#{number_id}/profiles/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Profile{}}
    ])
  end

  @doc """
  Get all numbers
  Provides a list of all numbers

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"filter[prefix]"` (String.t): 
    - `:"filter[number]"` (String.t): 
    - `:"filter[activated]"` (boolean()): 
    - `:"filter[name]"` (String.t): 
    - `:"filter[description]"` (String.t): 
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%Number{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_numbers(Tesla.Env.client(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.Number.t())} | {:error, Tesla.Env.t()}
  def get_numbers(connection, opts \\ []) do
    optional_params = %{
      :"filter[prefix]" => :query,
      :"filter[number]" => :query,
      :"filter[activated]" => :query,
      :"filter[name]" => :query,
      :"filter[description]" => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/numbers")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.Number{}]}
    ])
  end

  @doc """
  Retrieve a number
  Fetches a number by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Number ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Number.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_numbers_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Number.t()} | {:error, Tesla.Env.t()}
  def get_numbers_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/numbers/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Number{}}
    ])
  end

  @doc """
  List profiles for a number
  Lists all available profiles for a number 

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `number_id` (integer()): Number ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Profile.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_numbers_number_id_profiles(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def get_numbers_number_id_profiles(connection, number_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/numbers/#{number_id}/profiles")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Profile{}}
    ])
  end

  @doc """
  Creates a new profile for a number
  Shows the active profile for a number

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `number_id` (integer()): Number ID
  - `numbers_number_id_profiles` (PostNumbersNumberIdProfiles): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Profile.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_numbers_number_id_profiles(
          Tesla.Env.client(),
          integer(),
          PlacetelAPI.Model.PostNumbersNumberIdProfiles.t(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def post_numbers_number_id_profiles(
        connection,
        number_id,
        numbers_number_id_profiles,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/numbers/#{number_id}/profiles")
      |> add_param(:body, :body, numbers_number_id_profiles)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %PlacetelAPI.Model.Profile{}}
    ])
  end

  @doc """
  Activates a profile for a number
  Change the active profile for a number

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `number_id` (integer()): Number ID
  - `numbers_number_id_profiles` (PutNumbersNumberIdProfiles): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Profile.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_numbers_number_id_profiles(
          Tesla.Env.client(),
          integer(),
          PlacetelAPI.Model.PutNumbersNumberIdProfiles.t(),
          keyword()
        ) :: {:ok, PlacetelAPI.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def put_numbers_number_id_profiles(
        connection,
        number_id,
        numbers_number_id_profiles,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:put)
      |> url("/numbers/#{number_id}/profiles")
      |> add_param(:body, :body, numbers_number_id_profiles)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Profile{}}
    ])
  end
end
