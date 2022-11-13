# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PostCallCenterAgents do
  @moduledoc """
  Create an agent
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :extension_type,
    :extension_sip,
    :extension_pstn,
    :agent_type,
    :description,
    :priority
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :extension_type => String.t(),
          :extension_sip => String.t(),
          :extension_pstn => String.t(),
          :agent_type => String.t() | nil,
          :description => String.t() | nil,
          :priority => integer() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PostCallCenterAgents do
  def decode(value, _options) do
    value
  end
end