# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PlacetelAPI.Model.PutCallCenterQueues do
  @moduledoc """
  Update a queue
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :num_loops,
    :priority,
    :description,
    :mail_notification,
    :ringing_time,
    :max_iterations,
    :play_prompt,
    :prompt_id,
    :play_prompt_waiting,
    :prompt_waiting_id,
    :play_prompt_end,
    :prompt_end_id,
    :play_mailbox,
    :prompt_mailbox_id
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :num_loops => integer() | nil,
          :priority => integer() | nil,
          :description => String.t() | nil,
          :mail_notification => String.t() | nil,
          :ringing_time => integer() | nil,
          :max_iterations => integer() | nil,
          :play_prompt => boolean() | nil,
          :prompt_id => integer() | nil,
          :play_prompt_waiting => boolean() | nil,
          :prompt_waiting_id => integer() | nil,
          :play_prompt_end => boolean() | nil,
          :prompt_end_id => integer() | nil,
          :play_mailbox => boolean() | nil,
          :prompt_mailbox_id => integer() | nil
        }
end

defimpl Poison.Decoder, for: PlacetelAPI.Model.PutCallCenterQueues do
  def decode(value, _options) do
    value
  end
end
