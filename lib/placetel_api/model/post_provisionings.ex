# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PostProvisionings do
  @moduledoc """
  Creates a phone provisionings
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :mac,
    :phone_model,
    :webuser_id,
    :codec,
    :call_waiting,
    :encryption,
    :locale,
    :lines,
    :keys
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :mac => String.t(),
          :phone_model => integer(),
          :webuser_id => integer() | nil,
          :codec => String.t() | nil,
          :call_waiting => boolean() | nil,
          :encryption => String.t() | nil,
          :locale => String.t() | nil,
          :lines => [String.t()] | nil,
          :keys => [PlacetelAPI.Model.PutProvisioningsKeysInner.t()] | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PostProvisionings do
  import PlacetelAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:keys, :list, PlacetelAPI.Model.PutProvisioningsKeysInner, options)
  end
end
