
describe file('/root/.ssh/authorized_keys') do
    packer_key = File.read('files/packer_key.pub').strip

    its('content') { should include packer_key }
end
