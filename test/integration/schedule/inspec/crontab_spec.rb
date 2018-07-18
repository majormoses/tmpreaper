describe crontab('root').commands('/usr/sbin/tmpreaper') do
  its('minutes') { should cmp 0 }
  its('hours') { should cmp 12 }
  its('days') { should cmp '*' }
  its('weekdays') { should cmp '*' }
  its('months') { should cmp '*' }
  # looks like a missing attribute in the upstream
  # its('year') { should cmp '*' }
end
