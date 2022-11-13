# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.CallDetailRecords do
  @moduledoc """
  API calls for all endpoints tagged `CallDetailRecords`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Get call detail records
  Provides a list of call detail records

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `date` (Date.t): YYYY-MM-DD
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page of results to fetch.
    - `:per_page` (integer()): Number of results to return per page.

  ### Returns

  - `{:ok, [%CallDetailRecord{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_call_detail_records(Tesla.Env.client(), Date.t(), keyword()) ::
          {:ok, list(PlacetelAPI.Model.CallDetailRecord.t())} | {:error, Tesla.Env.t()}
  def get_call_detail_records(connection, date, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/call_detail_records")
      |> add_param(:query, :date, date)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%PlacetelAPI.Model.CallDetailRecord{}]}
    ])
  end
end
