require 'open3'

class DRunner::RakeService
  class << self
    def list_rake_tasks
      Open3.capture3('bundle exec rake -T')[0].split("\n").map do |task|
        task.split('#')[0].strip

        # {
        #   name: task[0].strip,
        #   description: task[1].strip
        # }
      end
    rescue StandardError => e
      puts "#{e} - #{e.message}"
      []
    end
  end
end
