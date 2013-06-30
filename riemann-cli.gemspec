Gem::Specification.new do |s|
  s.name        = 'riemann-cli'
  s.version     = '0.1.0'
  s.date        = '2013-06-20'
  s.summary     = "Command-line Riemann client"
  s.description = "A simple command-line tool to send events to Riemann"
  s.authors     = ["Paul Goldbaum"]
  s.email       = 'paul.goldbaum@gmail.com'
  s.license     = 'MIT'
  s.executables << 'riemann-cli'
  s.homepage    =
    'http://github.com/paulgoldbaum/riemann-cli'
  s.add_dependency 'riemann-client', '>= 0.2.2'
  s.add_dependency 'thor', '>= 0.18.0'
end
