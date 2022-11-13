# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.Prompts do
  @moduledoc """
  API calls for all endpoints tagged `Prompts`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Delete a prompt
  Delete a prompt by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Prompt ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_prompts_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_prompts_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/prompts/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false}
    ])
  end

  @doc """
  Fetch all prompts
  Provides a list of all prompts

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"filter[name]"` (String.t): 
    - `:"filter[description]"` (String.t): 
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%Prompt{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_prompts(Tesla.Env.client(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.Prompt.t())} | {:error, Tesla.Env.t()}
  def get_prompts(connection, opts \\ []) do
    optional_params = %{
      :"filter[name]" => :query,
      :"filter[description]" => :query,
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/prompts")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.Prompt{}]}
    ])
  end

  @doc """
  Retrieve a prompt
  Fetches a prompt by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Prompt ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Prompt.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_prompts_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, PlacetelAPI.Model.Prompt.t()} | {:error, Tesla.Env.t()}
  def get_prompts_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/prompts/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Prompt{}}
    ])
  end

  @doc """
  Create a prompt
  Creates a new prompt

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `prompts` (PostPrompts): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Prompt.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_prompts(Tesla.Env.client(), PlacetelAPI.Model.PostPrompts.t(), keyword()) ::
          {:ok, PlacetelAPI.Model.Prompt.t()} | {:error, Tesla.Env.t()}
  def post_prompts(connection, prompts, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/prompts")
      |> add_param(:body, :body, prompts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %PlacetelAPI.Model.Prompt{}}
    ])
  end

  @doc """
  Update a prompt
  Update a prompt by its ID

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `id` (integer()): Prompt ID
  - `prompts` (PutPrompts): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PlacetelAPI.Model.Prompt.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_prompts_id(Tesla.Env.client(), integer(), PlacetelAPI.Model.PutPrompts.t(), keyword()) ::
          {:ok, PlacetelAPI.Model.Prompt.t()} | {:error, Tesla.Env.t()}
  def put_prompts_id(connection, id, prompts, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/prompts/#{id}")
      |> add_param(:body, :body, prompts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %PlacetelAPI.Model.Prompt{}}
    ])
  end
end