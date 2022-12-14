# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.RoutingObjectMailbox do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :active,
    :mp3,
    :greeting
  ]

  @type t :: %__MODULE__{
          :active => String.t() | nil,
          :mp3 => String.t() | nil,
          :greeting => PlacetelAPI.Model.Prompt.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.RoutingObjectMailbox do
  import PlacetelAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:greeting, :struct, PlacetelAPI.Model.Prompt, options)
  end
end
