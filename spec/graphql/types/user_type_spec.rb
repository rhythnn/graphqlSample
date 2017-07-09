require 'spec_helper'

describe UserType, type: :graphql do
  let(:user) { create(:user) }

  describe 'fields' do
    it { is_expected.to have_field(:id).of_type(types.Int) }
    it { is_expected.to have_field(:email).of_type(types.String) }
  end
end
