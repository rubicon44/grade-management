require 'rails_helper'

RSpec.describe Admin, type: :model do
  before do
    @admin = FactoryBot.build(:admin)
  end

  describe 'ファクトリの検証' do
    it '有効なファクトリを持つこと' do
      expect(@admin).to be_valid
    end
  end

  describe '存在性の検証' do
    it 'ユーザーネーム、メールアドレス、パスワードがあれば有効な状態であること' do
      admin = Admin.new(
        username: 'sample',
        email: 'sample@example.com',
        password: '123456'
      )
      expect(admin).to be_valid
    end

    it 'ユーザーネームがなければ無効な状態であること' do
      @admin.username = nil
      @admin.valid?
      expect(@admin.errors).to be_added(:username, :blank)
    end

    it 'メールアドレスがなければ無効な状態であること' do
      @admin.email = nil
      @admin.valid?
      expect(@admin.errors).to be_added(:email, :blank)
    end

    it 'パスワードなければ無効な状態であること' do
      @admin.password = nil
      @admin.valid?
      expect(@admin.errors).to be_added(:password, :blank)
    end
  end

  describe '一位性の検証' do
    it '重複したメールアドレスなら無効な状態であること' do
      admin = FactoryBot.create(:admin, email: 'sample@example.com')
      duplicate_admin = FactoryBot.build(:admin, email: 'sample@example.com')
      duplicate_admin.valid?
      expect(duplicate_admin.errors).to be_added(:email, :taken, value: 'sample@example.com')
    end

    it 'メールアドレスは大文字小文字区別せず扱うこと' do
      admin = FactoryBot.create(:admin, email: 'sample@example.com')
      duplicate_admin = FactoryBot.build(:admin, email: 'SAMPLE@EXAMPLE.COM')
      duplicate_admin.valid?
      expect(duplicate_admin.errors).to be_added(:email, :taken, value: 'sample@example.com')
    end
  end

  describe '文字数の検証' do
    it 'ユーザーネームが2文字未満なら無効であること' do
      @admin.username = 'a' * 1
      @admin.valid?
      expect(@admin.errors).to be_added(:username, :too_short, count: 2)
    end

    it 'ユーザーネームが2~20文字の範囲なら有効であること' do
      @admin.username = 'a' * 10
      expect(@admin).to be_valid
    end

    it 'ユーザーネームが20文字を超えるなら無効であること' do
      @admin.username = 'a' * 21
      @admin.valid?
      expect(@admin.errors).to be_added(:username, :too_long, count: 20)
    end

    it 'メールアドレスが255文字以内なら有効であること' do
      @admin.email = 'a' * 243 + '@example.com'
      expect(@admin).to be_valid
    end

    it 'メールアドレスが255文字を越えるなら無効であること' do
      @admin.email = 'a' * 244 + '@example.com'
      @admin.valid?
      expect(@admin.errors).to be_added(:email, :too_long, count: 255)
    end

    it 'パスワードが6文字以上なら有効であること' do
      @admin.password = @admin.password_confirmation = 'a' * 5
      @admin.valid?
      expect(@admin.errors).to be_added(:password, :too_short, count: 6)
    end

    it 'パスワードが6文字未満なら無効であること' do
      @admin.password = @admin.password_confirmation = 'a' * 6
      expect(@admin).to be_valid
    end
  end

  describe 'フォーマットの検証' do
    # todo: 一旦保留
    it 'メールアドレスが正当なフォーマットなら有効であること' do
    end

    it 'メールアドレスが不正なフォーマットなら無効であること' do
    end
  end

  describe 'メソッドの検証' do
    describe '〜メソッッド' do
    end
  end
end
