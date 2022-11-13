# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.RoutingObjectTimeSettings do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :enabled,
    :mon,
    :tue,
    :wed,
    :thu,
    :fri,
    :sat,
    :sun,
    :extended_time_settings,
    :time_from,
    :time_to,
    :additional_dates,
    :time_ranges
  ]

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :mon => boolean() | nil,
          :tue => boolean() | nil,
          :wed => boolean() | nil,
          :thu => boolean() | nil,
          :fri => boolean() | nil,
          :sat => boolean() | nil,
          :sun => boolean() | nil,
          :extended_time_settings => boolean() | nil,
          :time_from => String.t() | nil,
          :time_to => String.t() | nil,
          :additional_dates => String.t() | nil,
          :time_ranges => String.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.RoutingObjectTimeSettings do
  def decode(value, _options) do
    value
  end
end
