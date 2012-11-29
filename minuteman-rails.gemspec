Gem::Specification.new do |s|
  s.name              = "minuteman-rails"
  s.version           = "0.1.0"
  s.summary           = "Bit Analytics for Rails"
  s.description       = "Use Minuteman in your Rails app"
  s.authors           = ["elcuervo"]
  s.licenses          = ["MIT"]
  s.email             = ["yo@brunoaguirre.com"]
  s.homepage          = "http://github.com/elcuervo/minuteman-rails"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files test`.split("\n")

  s.add_dependency("minuteman", "~> 1.0.2")
  s.add_dependency("rails", "~> 3.0")

  s.add_development_dependency("minitest", "~> 4.2.0")
end
