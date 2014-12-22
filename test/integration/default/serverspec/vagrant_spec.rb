require 'serverspec'

set :backend, :exec

# vagrantユーザについて
describe user("vagrant") do
  it { should exist } # vagrantユーザが存在する
  it { should_not belong_to_group "wheel" } # vagrantユーザはwheelに所属している
end
