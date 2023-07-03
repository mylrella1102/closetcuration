require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe 'コーディネート投稿機能' do
    context '投稿できる場合' do
      it 'date,weather_id,low_id,high_id,content,user,accountが存在すれば登録できる' do
        expect(@post).to be_valid
      end
    end
    context '投稿できない場合' do
      it 'dateが空では保存できない' do
        @post.date = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Date can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end

      it 'accountが紐付いていないと保存できない' do
        @post.account = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('Account must exist')
      end

    end
  end
end
