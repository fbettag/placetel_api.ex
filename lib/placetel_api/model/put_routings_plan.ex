# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PutRoutingsPlan do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :destinations
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :destinations => [PlacetelAPI.Model.PutRoutingsForwardDestinationsInner.t()] | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PutRoutingsPlan do
  import PlacetelAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :destinations,
      :list,
      PlacetelAPI.Model.PutRoutingsForwardDestinationsInner,
      options
    )
  end
end
