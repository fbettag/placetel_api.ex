# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PutSipUsers do
  @moduledoc """
  Update a sip user
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :description,
    :did,
    :callerid,
    :webuser_id,
    :contact_speeddialing,
    :p_asserted_identity,
    :automatic_prefix,
    :blocked_prefixes,
    :routing_plan_id,
    :hotdesk_login,
    :hotdesk_pin,
    :hotdesk_type,
    :hotdesk_provisioning_id
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :description => String.t() | nil,
          :did => integer() | nil,
          :callerid => String.t() | nil,
          :webuser_id => integer() | nil,
          :contact_speeddialing => boolean() | nil,
          :p_asserted_identity => String.t() | nil,
          :automatic_prefix => String.t() | nil,
          :blocked_prefixes => String.t() | nil,
          :routing_plan_id => integer() | nil,
          :hotdesk_login => String.t() | nil,
          :hotdesk_pin => String.t() | nil,
          :hotdesk_type => String.t() | nil,
          :hotdesk_provisioning_id => integer() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PutSipUsers do
  def decode(value, _options) do
    value
  end
end