# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/var/www/apps/lotto/current/log/cron_log.log"
set :path, "/var/www/apps/lotto/current"

every :wednesday, :at => "2pm" do
  rake "lotto:lotto_wednesday"
end

every :friday, :at => "2pm" do
  rake "lotto:euro_millions"
end

every :saturday, :at => "2pm" do
  rake "lotto:lotto_saturday"
end

every :saturday, :at => "14:05" do
  rake "lotto:thunderball_saturday"
end

every :wednesday, :at => "14:05" do
  rake "lotto:thunderball_wednesday"
end

every :wednesday, :at => "19:00" do
  rake "lotto:powerball_wednesday"
end

every :saturday, :at => "19:00" do
  rake "lotto:powerball_saturday"
end

every :wednesday, :at => "19:05" do
  rake "lotto:canada_wednesday"
end

every :saturday, :at => "19:10" do
  rake "lotto:canada_saturday"
end

every :tuesday, :at => "19:00" do
  rake "lotto:mega_millions_tuesday"
end

every :friday, :at => "19:15" do
  rake "lotto:mega_millions_friday"
end

every :wednesday, :at => "19:20" do
  rake "lotto:new_york_wednesday"
end

every :saturday, :at => "19:20" do
  rake "lotto:new_york_saturday"
end

every :wednesday, :at => "14:15" do
  rake "lotto:irish_wednesday"
end

every :saturday, :at => "14:30" do
  rake "lotto:irish_saturday"
end

