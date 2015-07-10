preload_app true
worker_processes 4
timeout 10

before_fork do |*|
  Sequel::DATABASES.each(&:disconnect)
end
