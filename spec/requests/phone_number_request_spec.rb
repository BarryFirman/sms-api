require 'rails_helper'

RSpec.describe "PhoneNumbers", type: :request do

  describe 'POST /create' do
    # it 'returns http success' do
    #   get '/phone_number/create'
    #   expect(response).to have_http_status(:success)
    # end

    context 'valid parameters' do
      it 'should create and shape a new PhoneNumber entry' do
        post phone_number_create_path, params: { phone_number: { phone_number: '07123 456789' } }
        expect(response).to have_http_status(:success)
        expect do
          post phone_number_create_path, params: { phone_number: { phone_number: '07123 456789' } }
          expect(PhoneNumber.first.phone_number).to eq('07123456789')
          expect(response.body).to eq({ messages: 'Phone Number Saved' }.to_json)
        end.to change(PhoneNumber, :count).by(1)
      end
    end

    context 'invalid parameters' do
      it 'should not create a new PhoneNumber entry for invalid phone number' do
        expect do
          post phone_number_create_path, params: { phone_number: { phone_number: '07123' } }
        end.to change(PhoneNumber, :count).by(0)
      end

      it 'should not create an entry for an empty phone number' do
        expect do
          post phone_number_create_path, params: { phone_number: { phone_number: nil } }
        end.to change(PhoneNumber, :count).by(0)
      end
    end
  end

end
