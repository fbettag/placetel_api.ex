# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.RoutingObjectCustomCallerId do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :enabled,
    :name,
    :number
  ]

  @type t :: %__MODULE__{
          :enabled => String.t() | nil,
          :name => String.t() | nil,
          :number => String.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.RoutingObjectCustomCallerId do
  def decode(value, _options) do
    value
  end
end