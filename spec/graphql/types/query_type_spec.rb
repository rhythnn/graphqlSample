require 'spec_helper'

describe QueryType do
  let(:user) { create(:user) }

  describe '#current_user' do  
    subject { described_class.fields['current_user'] }

    it do
      expect(subject.type).to be UserType
    end

    it 'passes current_user from context to UserType' do
      expect(subject.resolve(nil, nil, { current_user: user })).to eq(user)
    end
  end
end
