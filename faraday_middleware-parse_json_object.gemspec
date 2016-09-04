require File.expand_path('../lib/faraday_middleware/parse_object', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Guarish Sharma']
  gem.email         = ['contact@gaurishsharma.com']
  gem.summary       = %q{Parse json as Ruby Object middleware for Faraday}
  gem.description   = %q{Faraday middleware for parsing JSON as openstruct Object.}
  gem.homepage      = 'https://github.com/gaurish/faraday_middleware-parse_json_object'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'faraday_middleware-parse_json_object'
  gem.require_paths = ['lib']
  gem.version       = FaradayMiddleware::ParseObject::VERSION

  gem.add_runtime_dependency 'faraday',            '~> 0.9.2'
  gem.add_runtime_dependency 'faraday_middleware', '~> 0.9.2'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'
end
