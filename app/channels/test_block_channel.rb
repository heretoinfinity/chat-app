class TestBlockChannel < ApplicationCable::Channel
  def subscribed
    stream_from "test_block_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create(opts)
    TestBlock.create(
      content: opts.fetch('content')
    )
  end
end
