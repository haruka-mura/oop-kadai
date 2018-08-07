require 'rails_helper'

RSpec.describe CreateUserAndSendMail, type: :model do
  describe '#save' do
    subject {CreateUserAndSendMail.new(user).save}
    let(:user) { build(:user) }

    context 'saveが成功するとき' do
      it { is_expected.to be_truthy }
    end

    context 'レコードが１増える' do
      it { expect{subject}.to change{User.count}.by(1) }
    end
  end
end
