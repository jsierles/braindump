# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','braindump','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'braindump'
  s.version = Braindump::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/braindump
lib/braindump/version.rb
lib/braindump.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','braindump.rdoc']
  s.rdoc_options << '--title' << 'braindump' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'braindump'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('open4')
  s.add_development_dependency('rainbow')
  s.add_runtime_dependency('gli','2.5.0')
end
