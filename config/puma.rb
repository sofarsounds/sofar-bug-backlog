min_thread   = Integer(ENV.fetch('PUMA_MIN_THREADS')  { 5 })
max_thread   = Integer(ENV.fetch('PUMA_MAX_THREADS')  { 5 })
worker_count = Integer(ENV.fetch('WEB_CONCURRENCY')   { 2 })

threads min_thread, max_thread
workers worker_count
preload_app!

before_fork do
  ActiveRecord::Base.connection_pool.disconnect!
end

on_worker_boot do
  ::ActiveRecord::Base.establish_connection

  require 'newrelic_rpm'
  NewRelic::Agent.manual_start
end
