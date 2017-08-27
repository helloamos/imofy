#!/usr/bin/env puma

directory '/home/deploy/rails_apps/imofy'
rackup "/home/deploy/rails_apps/imofy/config.ru"
environment 'production'

tag ''

pidfile "/home/deploy/rails_apps/imofy/shared/tmp/pids/puma.pid"
state_path "/home/deploy/rails_apps/imofy/shared/tmp/pids/puma.state"
stdout_redirect '/home/deploy/rails_apps/imofy/shared/log/puma_access.log', '/home/deploy/rails_apps/imofy/shared/log/puma_error.log', true


threads 0,16



bind 'unix:///home/deploy/rails_apps/imofy/shared/tmp/sockets/puma.sock'

workers 1





prune_bundler


on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = "/home/deploy/rails_apps/imofy/current/Gemfile"
end


