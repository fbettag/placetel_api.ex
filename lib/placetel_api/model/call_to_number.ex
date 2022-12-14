# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.CallToNumber do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :number
  ]

  @type t :: %__MODULE__{
          :number => PlacetelAPI.Model.Number.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.CallToNumber do
  import PlacetelAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:number, :struct, PlacetelAPI.Model.Number, options)
  end
end
