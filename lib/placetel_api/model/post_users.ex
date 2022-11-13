# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PostUsers do
  @moduledoc """
  Create new subuser
  """

  @derive [Poison.Encoder]
  defstruct [
    :first_name,
    :last_name,
    :email,
    :did,
    :assign_did,
    :callerid,
    :phone_model,
    :phone_mac,
    :sip_user_type
  ]

  @type t :: %__MODULE__{
          :first_name => String.t(),
          :last_name => String.t(),
          :email => String.t() | nil,
          :did => integer() | nil,
          :assign_did => boolean() | nil,
          :callerid => String.t() | nil,
          :phone_model => String.t() | nil,
          :phone_mac => String.t() | nil,
          :sip_user_type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PostUsers do
  def decode(value, _options) do
    value
  end
end