require 'rails_helper'

RSpec.describe Item, type: :model do

  describe '商品出品機能テスト' do
    context '商品出品ができる場合' do
      it "全ての情報が適切に入力されている場合、商品出品ができる" do
      end
    end


    context '商品出品ができない場合' do

      it '商品画像が１枚なければ登録できない' do
      end

      it 'item_nameが空では登録できない' do
      end


      it 'description_itemが空では登録できない' do
      end

      it 'category_idが1では登録できない' do
      end

      it 'pstatus_idが1では登録できない' do
      end

      it 'shippingcharge_idが1では登録できない' do
      end

      it 'shippingarea_idが1では登録できない' do
      end

      it 'deliverydatedays_idが1では登録できない' do
      end

      it 'priceが空では登録できない' do
      end

      it 'priceが¥300~¥9,999,999の間意外では登録できない' do
      end

      it 'priceが半角数値意外では登録できない' do
      end

      it 'userが紐付いていなければ出品できない' do
      end
    end
  end
end