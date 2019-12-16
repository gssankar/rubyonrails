class ExampleJob < ActiveJob::Base
#  rescue_from(ErrorLoadingSite) do
 #   retry_job wait: 5.minutes, queue: :low_priority 
  #end 

  sidekiq_options retry: 5

  def perform(*args)
    # Perform Job
  end
end