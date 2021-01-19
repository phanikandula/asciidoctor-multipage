lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "asciidoctor-multipage/version"

Gem::Specification.new do |s|
  s.authors = ['Owen T. Heisler']
  s.files = ['lib/asciidoctor-multipage.rb']
  s.name = 'asciidoctor-multipage'
  s.summary = 'Asciidoctor multipage HTML output extension'
  s.version = AsciidoctorMultipage::VERSION

  s.description = 'An Asciidoctor extension that generates HTML output using multiple pages'
  s.email = ['writer@owenh.net']
  s.homepage = 'https://github.com/owenh000/asciidoctor-multipage'
  s.license = 'MIT'
  s.metadata = {
    "bug_tracker_uri" => "https://github.com/owenh000/asciidoctor-multipage/issues",
    "homepage_uri" => s.homepage,
    "source_code_uri" => "https://github.com/owenh000/asciidoctor-multipage",
  }

  s.add_development_dependency 'bundler', '~> 1'
  s.add_development_dependency 'minitest', '~> 5'
  s.add_development_dependency 'rake', '~> 13'
  s.add_runtime_dependency 'asciidoctor', '1.5.7.1'
  s.add_runtime_dependency 'thread_safe', '> 0'
  s.date = '2021-01-19'
  s.required_ruby_version = '>= 2.5'
end
