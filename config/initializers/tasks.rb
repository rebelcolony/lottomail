 require 'rubygems'
 require 'rufus/scheduler'
 
 
 scheduler = Rufus::Scheduler.start_new   
 
   scheduler.cron('48 13 * * thu') do 
     puts "test"
   end
 
