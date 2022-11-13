# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.Recordings do
  @moduledoc """
  API calls for all endpoints tagged `Recordings`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Delete a recording
  Delete a recording by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Recording ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_recordings_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_recordings_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/recordings/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false}
    ])
  end

  @doc """
  Fetch call recordings
  Provides a list of all call recordings

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"filter[direction]"` ([String.t]): 
    - `:"filter[from]"` (String.t): 
    - `:"filter[to]"` (String.t): 
    - `:"filter[date]"` (Date.t): YYYY-MM-DD
    - `:order` (String.t): 
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%Recording{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recordings(Tesla.Env.client(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.Recording.t())} | {:error, Tesla.Env.t()}
  def get_recordings(connection, opts \\ []) do
    optional_params = %{
      :"filter[direction]" => :query,
      :"filter[from]" => :query,
      :"filter[to]" => :query,
      :"filter[date]" => :query,
      :order => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/recordings")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.Recording{}]}
    ])
  end

  @doc """
  Fetch specific recording
  Fetch recording

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Recording ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Recording.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recordings_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Recording.t()} | {:error, Tesla.Env.t()}
  def get_recordings_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/recordings/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Recording{}}
    ])
  end
end
