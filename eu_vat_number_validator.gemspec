# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "eu_vat_number_validator/version"

Gem::Specification.new do |s|
  s.name        = "eu_vat_number_validator"
  s.version     = EuVatNumberValidator::VERSION
  s.authors     = ["William Hamilton"]
  s.email       = ["whamilton42@hotmail.com"]
  s.homepage    = ""
  s.summary     = %q{Validates EU VAT numbers.}
  s.description = %q{Yup.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
