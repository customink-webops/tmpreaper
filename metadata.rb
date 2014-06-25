name             "tmpreaper"
maintainer       "CustomInk, LLC"
maintainer_email "svargo@customink.com"
license          "All rights reserved"
description      "Installs/Configures tmpreaper"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.3"

recipe "tmpreaper", "Main tmpreaper configuration"
recipe "tmpreaper::schedule", "Adds cron job for tmpreaper"

%w(ubuntu).each do |os|
  supports os
end

attribute "show_warning",
  :display_name => "Show Warning",
  :description => "Boolean to show warning",
  :type => "string",
  :default => "false"

attribute "project_extra",
  :display_name => "Project Extra",
  :description => "Extra Project Variables",
  :default => ""

attribute "dirs",
  :display_name => "Dirs",
  :description => "Directory or directories to clean",
  :type => "array",
  :default => [ "/tmp" ]

attribute "delay",
  :display_name => "Delay",
  :description => "Maximum delay before starting processing",
  :default => "256"

attribute "additional_options",
  :display_name => "Additional Options",
  :default => ""

attribute "tmptime",
  :display_name => "How old files to clean",
  :default => nil

attribute "cron[hour]",
  :display_name => "Cron Time (hour)",
  :description => "Hour to run the cron job",
  :default => "2"

attribute "cron[minute]",
  :display_name => "Cron Time (minute)",
  :description => "Minute to run the cron job",
  :default => "15"
