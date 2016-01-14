title '/tmp Compliance Profile'

control 'tmp-1.0' do
  impact 0.3
  title 'A /tmp directory must exist'
  desc 'A /tmp directory must exist'
  describe file '/tmp' do
    it { should be_directory }
  end
end

control 'tmp-1.1' do
  impact 0.3
  title '/tmp directory is owned by the root user'
  desc 'The /tmp directory must be owned by the root user'
  describe file '/tmp' do
    it { should be_owned_by 'root' }
  end
end
