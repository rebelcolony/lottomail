set :application, "lotto"
set :repository,  "git@github.com:rebelcolony/lottomail.git"
set :rails_env, "production"

set :scm, :git
set :scm_verbose, true
default_run_options[:pty] = true
set :branch, "master"
set :git_enable_submodules, 1

set :address, "lottomail.org"

role :web, address                          # Your HTTP server, Apache/etc
role :app, address                          # This may be the same as your `Web` server
role :db,  address, :primary => true # This is where Rails migrations will run

set :deploy_via, :remote_cache
set :deploy_to, "/var/www/apps/#{application}"
set :user, "kevin"

# SSH Keys
ssh_options[:keys] = %w(/Users/kevin/.ssh/id_rsa /Users/alastairbrunton/.ssh/ndthub)
ssh_options[:port] = 8888

after "deploy:update_code", "recipiez:rename_db_file"
before "deploy:symlink", "deploy:change_owner"
after "deploy:symlink", "deploy:update_crontab"


set :db_user, 'root'
set :db_password, 'Ve7arb'
set :db_local_user, db_user
set :db_local_password, 'pa55wd'
set :dump_dir, '/Users/alastairbrunton/dumps/'
set :database_to_dump, 'lotto'
set :db_dev, "lotto_development"



namespace :deploy do
  task :restart do
    recipiez::restart_passenger
  end
  
  task :change_owner do
    run "chown -R kevin:kevin #{release_path}"
  end
  
  desc "Update the crontab file"
  task :update_crontab, :roles => :db do
    run "cd #{release_path} && whenever --update-crontab #{application}"
  end
end

