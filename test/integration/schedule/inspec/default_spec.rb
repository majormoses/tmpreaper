describe package('tmpreaper') do
  it { should be_installed }
end

describe file('/etc/tmpreaper.conf') do
  it { should exist }
  it { should_not be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '00644' }
  its('content') { should match(/TMPREAPER_PROTECT_EXTRA=''/) }
  its('content') { should match(%r{TMPREAPER_DIRS='/tmp/.'}) }
  its('content') { should match(/TMPREAPER_TIME='3d'/) }
  its('content') { should match(/TMPREAPER_DELAY='256'/) }
  its('content') { should match(/TMPREAPER_ADDITIONALOPTIONS=''/) }
end
