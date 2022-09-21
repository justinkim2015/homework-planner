class WarningEmailJob < ApplicationJob
  queue_as :default

  def perform(assignment)
    assignment.warning_email
  end
end
