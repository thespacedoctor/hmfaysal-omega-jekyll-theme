# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-omega"
  spec.version       = "0.1.4"
  spec.authors       = ["hmfaysal","thespacedoctor"]
  spec.email         = ["nothingbutdave@gmail.com"]

  spec.summary       = "The HMFAYSAL OMEGA Jekyll theme"
  spec.homepage      = "https://github.com/hmfaysal/hmfaysal-omega-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|images|_plugins|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7"
  spec.add_runtime_dependency "jekyll-feed", '~> 0.9'
  spec.add_runtime_dependency "jekyll-archives", '~> 2.1'
  spec.add_runtime_dependency "jekyll-paginate", '~> 1.1'
  spec.add_runtime_dependency "jekyll-sitemap", '~> 1.2'
  spec.add_runtime_dependency "jekyll-gist", '~> 1.5'
  spec.add_runtime_dependency "jekyll-seo-tag", '~> 2.4'
  spec.add_runtime_dependency "rmultimarkdown", '~> 6.2'
  spec.add_runtime_dependency "pygments.rb", '~> 1.2'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
