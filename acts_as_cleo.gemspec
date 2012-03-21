# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "acts_as_cleo"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robert R. Meyer"]
  s.date = "2012-03-21"
  s.description = "LinkedIn Open Source type ahead tool's REST API as a ruby gem"
  s.email = "Blue.Dog.Archolite@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "acts_as_cleo.gemspec",
    "config/cleo.yml",
    "lib/acts_as_cleo.rb",
    "lib/acts_as_cleo/result.rb",
    "lib/acts_as_cleo/version.rb",
    "lib/acts_methods.rb",
    "lib/class_methods.rb",
    "lib/cleo.rb",
    "lib/cleo/reference.rb",
    "lib/cleo/result.rb",
    "lib/cleo/server.rb",
    "lib/common_methods.rb",
    "lib/generators/acts_as_cleo/install_generator.rb",
    "lib/generators/acts_as_cleo/templates/install.rb",
    "lib/instance_methods.rb",
    "test/config/cleo.yml",
    "test/data/xml/cleo/element.xml",
    "test/data/xml/cleo/elements.xml",
    "test/data/xml/cleo/testing_element.xml",
    "test/db/connection/sqlite.rb",
    "test/db/migrate/001_create_books.rb",
    "test/db/migrate/002_create_movies.rb",
    "test/db/migrate/003_create_categories.rb",
    "test/db/migrate/004_create_electronics.rb",
    "test/db/migrate/005_create_authors.rb",
    "test/db/migrate/006_create_postings.rb",
    "test/db/migrate/007_cleo_table.rb",
    "test/db/test.db",
    "test/fixtures/authors.yml",
    "test/fixtures/books.yml",
    "test/fixtures/categories.yml",
    "test/fixtures/electronics.yml",
    "test/fixtures/movies.yml",
    "test/helper.rb",
    "test/models/author.rb",
    "test/models/book.rb",
    "test/models/category.rb",
    "test/models/electronic.rb",
    "test/models/movie.rb",
    "test/test_acts_as_cleo.rb",
    "test/test_install_generator.rb",
    "test/unit/test_acts_methods.rb",
    "test/unit/test_cleo.rb",
    "test/unit/test_result_parser.rb"
  ]
  s.homepage = "http://github.com/blue-dog-archolite/acts_as_cleo"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "A Rails enabled Cleo API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<happymapper>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_development_dependency(%q<fixtures>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<happymapper>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_dependency(%q<fixtures>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<happymapper>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<ruby-debug19>, [">= 0"])
    s.add_dependency(%q<fixtures>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end

