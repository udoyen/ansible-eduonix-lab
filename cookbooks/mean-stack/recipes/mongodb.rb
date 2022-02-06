package 'mongodb' do
  action :install
  version '3.12.1'
end

service 'mongodb' do
  action [:start,:enable]
end


