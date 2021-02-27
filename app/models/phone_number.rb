# frozen_string_literal: true

class PhoneNumber < ApplicationRecord

  VALID_PREFIXES = %w[+44 44 0].freeze
  VALID_LENGTH = 10
  ANCHOR_NUMBER = '7'


  validates :phone_number, presence: true
  validate :ensure_phone_number_format
  before_save :shape_phone_number


  private

  def ensure_phone_number_format
    return if errors.any?

    error_text = 'Invalid Format - {detail}'
    number = twilio_format phone_number

    return errors.add(:phone_number, error_text.gsub('{detail}', 'Invalid Characters')) if invalid_chars?(number)

    errors.add(:phone_number, error_text.gsub('{detail}', 'Prefix')) unless VALID_PREFIXES.include? phone_number_prefix(number)
    errors.add(:phone_number, error_text.gsub('{detail}', 'Length')) unless correct_phone_number_length?(number)

  end

  def invalid_chars?(phone_number)
    !phone_number.sub(/^\+/, '').index(/\D/).nil?
  end

  def phone_number_prefix(phone_number)
    idx = phone_number.index(ANCHOR_NUMBER)
    phone_number[0, idx]
  end

  def correct_phone_number_length?(phone_number)
    idx = phone_number.index(ANCHOR_NUMBER)

    true if phone_number[idx..].length == VALID_LENGTH
  end

  # Return a format usable for Twilio
  def shape_phone_number
    self.phone_number = twilio_format phone_number
  end

  # To ensure all phone numbers are validated and shaped against teh same number format
  # normalise the phone number into the format required by Twilio first.
  def twilio_format(phone_number)
    phone_number.gsub(' ', '')
  end


end
