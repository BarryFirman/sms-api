require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:valid_starting_zero) { PhoneNumber.new phone_number: '07123 456789' }
  let(:valid_starting_four_four) { PhoneNumber.new phone_number: '447123 456789' }
  let(:valid_starting_plus_four_four) { PhoneNumber.new phone_number: '+44 7123 456789' }
  let(:valid_no_space) { PhoneNumber.new phone_number: '07123456789' }
  let(:invalid_by_count_less) { PhoneNumber.new phone_number: '07123 456' }
  let(:invalid_by_count_more) { PhoneNumber.new phone_number: '07123 456789123' }
  let(:invalid_by_alpha) { PhoneNumber.new phone_number: '07abc defghi'}

  context 'valid phone numbers' do
    it 'should accept valid number with a zero' do
      expect do
        expect(valid_starting_zero.valid?).to be(true)
        valid_starting_zero.save
      end.to change(PhoneNumber, :count).by(1)
    end

    it 'should accept valid number starting with four four' do
      expect do
        expect(valid_starting_four_four.valid?).to be(true)
        valid_starting_four_four.save
      end.to change(PhoneNumber, :count).by(1)
    end

    it 'should accept valid number starting with plus four four' do
      expect do
        expect(valid_starting_plus_four_four.valid?).to be(true)
        valid_starting_plus_four_four.save
      end.to change(PhoneNumber, :count).by(1)
    end

    it 'should accept valid number with no spaces' do
      expect do
        expect(valid_no_space.valid?).to be(true)
        valid_no_space.save
      end.to change(PhoneNumber, :count).by(1)
    end

    context 'shaping the number' do
      it 'should correctly shape the number for Twilio' do
        number = valid_starting_zero
        number.save
        expect(number.reload.phone_number).to equal(valid_starting_zero.phone_number.gsub(' ', ''))
      end
    end
  end

  context 'invalid numbers' do
    it 'should not accept a nil value for the number' do
      expect do
        number = PhoneNumber.new phone_number: nil
        expect(number.valid?).to be(false)
      end.to change(PhoneNumber, :count).by(0)
    end

    it 'should not accept a number that is too short' do
      expect do
        expect(invalid_by_count_less.valid?).to be(false)
        invalid_by_count_less.save
      end.to change(PhoneNumber, :count).by(0)
    end

    it 'should not accept a number that is too long' do
      expect do
        expect(invalid_by_count_more.valid?).to be(false)
        invalid_by_count_more.save
      end.to change(PhoneNumber, :count).by(0)
    end

    it 'should not accept a number with an invalid format' do
      expect do
        expect(invalid_by_alpha.valid?).to be(false)
        invalid_by_count_less.save
      end.to change(PhoneNumber, :count).by(0)
    end
  end
end
