 require 'rubygems'
 require 'rufus/scheduler'
 
 
 scheduler = Rufus::Scheduler.start_new   
 
   scheduler.cron('42 8 * * thu') do 
     puts "test"
   end
 
