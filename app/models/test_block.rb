# app/models/test_block.rb
class TestBlock < ApplicationRecord
  after_create_commit do
    TestBlockCreationEventBroadcastJob.perform_later(self)
  end
end
