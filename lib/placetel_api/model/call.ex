# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.Call do
  @moduledoc """
  Call model
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :type,
    :from_number,
    :to_number,
    :file_url,
    :duration,
    :contact,
    :received_at,
    :unread
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :type => String.t() | nil,
          :from_number => String.t() | nil,
          :to_number => PlacetelAPI.Model.CallToNumber.t() | nil,
          :file_url => String.t() | nil,
          :duration => integer() | nil,
          :contact => PlacetelAPI.Model.Contact.t() | nil,
          :received_at => DateTime.t() | nil,
          :unread => boolean() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.Call do
  import PlacetelAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:to_number, :struct, PlacetelAPI.Model.CallToNumber, options)
    |> deserialize(:contact, :struct, PlacetelAPI.Model.Contact, options)
  end
end
