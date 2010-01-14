 require 'rubygems'
 require 'rufus/scheduler'
 
 
 scheduler = Rufus::Scheduler.start_new   
 
   scheduler.cron('40 13 * * thu') do 
     puts "test"
   end
 
