# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PutRoutingsQueue do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id
  ]

  @type t :: %__MODULE__{
          :id => integer()
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PutRoutingsQueue do
  def decode(value, _options) do
    value
  end
end