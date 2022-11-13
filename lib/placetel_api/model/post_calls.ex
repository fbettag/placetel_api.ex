# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PostCalls do
  @moduledoc """
  Initate a call
  """

  @derive [Poison.Encoder]
  defstruct [
    :sipuid,
    :target,
    :from_name
  ]

  @type t :: %__MODULE__{
          :sipuid => String.t(),
          :target => String.t(),
          :from_name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PostCalls do
  def decode(value, _options) do
    value
  end
end