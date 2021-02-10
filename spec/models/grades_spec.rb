require 'rails_helper'

RSpec.describe Grade, type: :model do
  before do
    @grade = FactoryBot.build(:grade)
  end

  describe 'ファクトリの検証' do
    it '有効なファクトリを持つこと' do
      expect(@grade).to be_valid
    end
  end

  describe '存在性の検証' do
    it '学年番号がなければ無効な状態であること' do
      @grade.grade_number = nil
      @grade.valid?
      expect(@grade.errors).to be_added(:grade_number, :blank)
    end
  end

  describe '一意性の検証' do
    it '重複した学年番号なら無効な状態であること' do
      grade = FactoryBot.create(:grade, grade_number: '1')
      duplicate_grade = FactoryBot.build(:grade, grade_number: '1')
      duplicate_grade.valid?
      expect(duplicate_grade.errors).to be_added(:grade_number, :taken, value: '1')
    end
  end

  describe '文字数の検証' do
    it '学年番号が1~99文字の範囲なら有効であること' do
      @grade.grade_number = '1' * 99
      expect(@grade).to be_valid
    end

    it '学年番号が100文字以上なら無効であること' do
      @grade.grade_number = '1' * 100
      @grade.valid?
      expect(@grade.errors).to be_added(:grade_number, :too_long, count: 99)
    end
  end

  describe 'メソッドの検証' do
    describe '〜メソッッド' do
    end
  end
end