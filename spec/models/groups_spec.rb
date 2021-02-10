require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = FactoryBot.build(:group)
  end

  describe 'ファクトリの検証' do
    it '有効なファクトリを持つこと' do
      expect(@group).to be_valid
    end
  end

  describe '存在性の検証' do
    it 'Adminがあれば有効な状態であること' do
    end

    it 'Adminがなければ無効な状態であること' do
    end
  end

  describe '一意性の検証' do
    it '重複した学年番号なら無効な状態であること' do
    end
  end

  describe '文字数の検証' do
    it 'ユーザーネームが2文字以上なら有効であること' do
    end
  end

  describe 'メソッドの検証' do
    describe '〜メソッッド' do
    end
  end
end