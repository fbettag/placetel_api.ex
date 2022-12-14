# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Api.SMS do
  @moduledoc """
  API calls for all endpoints tagged `SMS`.
  """

  alias PlacetelAPI.Connection
  import PlacetelAPI.RequestBuilder

  @doc """
  Send SMS
  Sends an SMS

  ### Parameters

  - `connection` (PlacetelAPI.Connection): Connection to server
  - `sms` (PostSms): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_sms(Tesla.Env.client(), PlacetelAPI.Model.PostSms.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def post_sms(connection, sms, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/sms")
      |> add_param(:body, :body, sms)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, false}
    ])
  end
end
