# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PostPrompts do
  @moduledoc """
  Create a prompt
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :description,
    :text,
    :voice,
    :file
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t() | nil,
          :text => String.t() | nil,
          :voice => String.t(),
          :file => String.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PostPrompts do
  def decode(value, _options) do
    value
  end
end
