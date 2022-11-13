# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.ShortCode do
  @moduledoc """
  ShortCode model
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :description,
    :code,
    :action,
    :number,
    :group_id,
    :updated_at,
    :created_at
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :description => String.t() | nil,
          :code => String.t() | nil,
          :action => String.t() | nil,
          :number => String.t() | nil,
          :group_id => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :created_at => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.ShortCode do
  def decode(value, _options) do
    value
  end
end
