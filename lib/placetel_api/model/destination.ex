# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.Destination do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :targets,
    :ringing_time
  ]

  @type t :: %__MODULE__{
          :targets => [String.t()] | nil,
          :ringing_time => String.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.Destination do
  def decode(value, _options) do
    value
  end
end