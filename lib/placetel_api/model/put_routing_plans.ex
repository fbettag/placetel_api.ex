# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PutRoutingPlans do
  @moduledoc """
  Update a routing plan
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :description,
    :did,
    :routing_objects
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t() | nil,
          :did => String.t() | nil,
          :routing_objects => [PlacetelAPI.Model.PutRoutingsQueue.t()] | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PutRoutingPlans do
  import PlacetelAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:routing_objects, :list, PlacetelAPI.Model.PutRoutingsQueue, options)
  end
end
