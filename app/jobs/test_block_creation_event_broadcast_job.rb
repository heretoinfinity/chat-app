# app/jobs/test_block_creation_event_broadcast_job.rb
class TestBlockCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(test_block)
    ActionCable
      .server
      .broadcast('test_block_channel',
                 id: test_block.id,
                 created_at: test_block.created_at.strftime('%H:%M'),
                 content: test_block.content)
  end
end
