require 'rails_helper'

RSpec.describe Flat, type: :model do
  describe '#initialize' do
    let(:flat) { Flat.new(name: 'Bloomy Flat: A lovely little flat in Bloomsbury, London. There is a lot of sunlight in the mornings and afternoons.') }

    # Doesn't work
    # it 'returns an error message when the name is missing' do
    #   flat.valid?
    #   expect(flat.errors.messages).to eq({ name: ["can't be blank"] })
    # end

    it 'returns an error message when the name is too long' do
      flat.valid?
      expect(flat.name.length).to eq(name: [6..20])
    end
  end
end
