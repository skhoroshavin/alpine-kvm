
describe file('/root/.ssh/authorized_keys') do
    packer_key = File.read('files/packer_key.pub').strip

    its('content') { should include packer_key }
end

describe processes('ntpd') do
    it { should exist }
end

describe command('rc-status') do
    its('stdout') { should match /ntpd.*started/ }
end
