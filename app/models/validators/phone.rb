class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || 'must be a number') unless value =~ /\d/i
  end
end