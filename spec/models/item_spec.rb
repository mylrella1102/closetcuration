require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'アイテム登録機能' do
    context '登録できる場合' do
      it 'name,info,category_id,color_id,season_id,info,user,accountが存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context '登録できない場合' do
      it 'imageが空では保存できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameが空では保存できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'category_idが1では保存できない' do
        @item.category_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end

      it 'accountが紐付いていないと保存できない' do
        @item.account = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Account must exist')
      end

    end
  end
end
