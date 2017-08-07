# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
set :environment, 'development'
set :output, "log/cron_log.log"
#
every 1.day, at: '9:00am' do
  rake "events:breakfast"
end
every 1.day, at: '12:30pm' do
  rake "events:lunch"
end
every 1.day, at: '6:30pm' do
  rake "events:dinner"
end
every 1.day, at: '11:58pm' do
  rake "log:clear"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
