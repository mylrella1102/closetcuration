require 'rails_helper'

RSpec.describe Account, type: :model do
  before do
    @account = FactoryBot.build(:account)
  end

  describe 'アイテム登録機能' do
    context '登録できる場合' do
      it 'name,date,userが存在すれば登録できる' do
        expect(@account).to be_valid
      end
    end
    context '登録できない場合' do
      it 'nameが空では保存できない' do
        @account.name = ''
        @account.valid?
        expect(@account.errors.full_messages).to include("Name can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @account.user = nil
        @account.valid?
        expect(@account.errors.full_messages).to include('User must exist')
      end
    end
  end
end
