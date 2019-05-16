class TestParentJob
  include Sidekiq::Worker
  sidekiq_options queue: :parent_queue

  def perform
    FirstChildJob.perform_async
    SecondChildJob.perform_async
    ThirdChildJob.perform_async
  end
end
