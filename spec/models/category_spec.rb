require 'rails_helper'

RSpec.describe Category, type: :model do

  describe 'model category' do

    context 'database fields' do
      it { is_expected.to respond_to :title }
    end

    context 'validations' do
      it { is_expected.to validate_presence_of :title }
    end

  end

end
