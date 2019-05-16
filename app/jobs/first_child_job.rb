class FirstChildJob
  include Sidekiq::Worker
  sidekiq_options queue: :first_child_queue

  def perform
    # queue other jobs
  end
end
