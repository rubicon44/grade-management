require 'rails_helper'

RSpec.describe Admin, type: :model do
  before do
    # テストデータ作成
  end

  it '有効なファクトリを持つこと' do
  end

  it 'ユーザーネーム、メールアドレス、パスワードがあれば有効な状態であること' do
  end

  describe '存在性の検証' do
    it 'ユーザーネームがなければ無効な状態であること' do
    end

    it 'メールアドレスがなければ無効な状態であること' do
    end

    it 'パスワードなければ無効な状態であること' do
    end
  end

  describe '一位性の検証' do
    it '重複したメールアドレスなら無効な状態であること' do
    end

    it 'メールアドレスは大文字小文字区別せず扱うこと' do
    end
  end

  describe '文字数の検証' do
    it 'ユーザーネームが2文字未満なら無効であること' do
    end

    it 'ユーザーネームが2~20文字の範囲なら有効であること' do
    end

    it 'ユーザーネームが20文字を超えるなら無効であること' do
    end

    it 'メールアドレスが255文字以内なら有効であること' do
    end

    it 'メールアドレスが255文字を越えるなら無効であること' do
    end

    it 'パスワードが6文字以上なら有効であること' do
    end

    it 'パスワードが6文字未満なら無効であること' do
    end
  end

  describe 'フォーマットの検証' do
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
