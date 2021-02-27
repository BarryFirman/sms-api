class PhoneNumberController < ApplicationController
  before_action :ensure_phone_number
  def create
    phone_number = PhoneNumber.new phone_number: phone_number_params[:phone_number]
    if phone_number.save
      json_response 'Phone Number Saved', :ok
    else
      json_response phone_number.errors.messages, :unprocessable_entity
    end
  end


  private

  def phone_number_params
    params.require(:phone_number).permit(:phone_number)
  end

  def ensure_phone_number
    return if params[:phone_number].present?

    json_response 'Phone Number Required', :bad_request
  end
end
