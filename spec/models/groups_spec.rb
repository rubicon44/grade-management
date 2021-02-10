require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = FactoryBot.create(:group)
  end

  describe 'ファクトリの検証' do
    it '有効なファクトリを持つこと' do
      expect(@group).to be_valid
    end
  end

  describe '存在性の検証' do
    it '学年があれば有効な状態であること' do
      grade = FactoryBot.create(:grade)
      group = Group.new(
        grade: grade,
        group_number: '1'
      )
      expect(group).to be_valid
    end

    it '学年がなければ無効な状態であること' do
      @group.grade_id = nil
      @group.valid?
      expect(@group.errors).to be_added(:grade_id, :blank)
    end

    it 'クラス番号がなければ無効な状態であること' do
      @group.group_number = nil
      @group.valid?
      expect(@group.errors).to be_added(:group_number, :blank)
    end
  end

  describe '一意性の検証' do
    it '重複したクラス番号なら無効な状態であること' do
      group = FactoryBot.create(:group, group_number: '1')
      duplicate_group = FactoryBot.build(:group, group_number: '1')
      duplicate_group.valid?
      expect(duplicate_group.errors).to be_added(:group_number, :taken, value: '1')
    end
  end

  describe '文字数の検証' do
    it 'クラス番号が0文字なら無効であること' do
      @group.group_number = ''
      @group.valid?
      expect(@group.errors).to be_added(:group_number, :too_short, count: 1)
    end

    it 'クラス番号が1~20文字以内なら有効であること' do
      @group.group_number = '1' * 20
      expect(@group).to be_valid
    end

    it 'クラス番号が21文字以上なら無効であること' do
      @group.group_number = '1' * 21
      @group.valid?
      expect(@group.errors).to be_added(:group_number, :too_long, count: 20)
    end
  end

  describe 'メソッドの検証' do
    describe '〜メソッッド' do
    end
  end
end