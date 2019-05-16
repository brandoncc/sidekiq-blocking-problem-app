class ThirdChildJob
  include Sidekiq::Worker
  sidekiq_options queue: :third_child_queue

  def perform
    # queue other jobs
  end
end
