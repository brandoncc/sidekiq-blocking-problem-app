class SecondChildJob
  include Sidekiq::Worker
  sidekiq_options queue: :second_child_queue

  def perform
    # queue other jobs
  end
end
