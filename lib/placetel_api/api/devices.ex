# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.Devices do
  @moduledoc """
  API calls for all endpoints tagged `Devices`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Fetch all devices
  Fetch a list of all provisionable devices

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%Device{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_devices(Tesla.Env.client(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.Device.t())} | {:error, Tesla.Env.t()}
  def get_devices(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/devices")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.Device{}]}
    ])
  end
end
