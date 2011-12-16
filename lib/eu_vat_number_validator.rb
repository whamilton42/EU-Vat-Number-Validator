require "eu_vat_number_validator/version"
require 'eu_vat_number_validator/is_vat'
require 'eu_vat_number_validator/http_fetcher'

module EuVatNumberValidator
  class << self
    def is_valid?(country_code, number)
      checker = EuVatNumberValidator::IsVat.new
      checker.is_valid?(country_code, number)
    end
  end
end