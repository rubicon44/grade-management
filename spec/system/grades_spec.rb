require 'rails_helper'

RSpec.describe 'Grades', type: :system, js: true do
  describe '新規作成' do
    describe '管理者の場合' do
      it 'ログイン後に作成できる（学年を作成するときに1つ以上クラスも作成する）' do
      end
    end

    describe '先生の場合' do
      it '作成画面が表示されない' do
      end
    end

    describe '生徒の場合' do
      it '作成画面が表示されない' do
      end
    end
  end

  describe '一覧' do
    describe '管理者の場合' do
      it 'ログイン後に一覧画面が表示される' do
      end
    end

    describe '先生の場合' do
      it '一覧画面が表示されない' do
      end
    end

    describe '生徒の場合' do
      it '一覧画面が表示されない' do
      end
    end
  end

  # '詳細'なし（「学年」押下で「クラス」の一覧へページ遷移）。

  describe '編集' do
    describe '管理者の場合' do
      it 'ログイン後に編集できる' do
      end
    end

    describe '先生の場合' do
      it '編集画面が表示されない' do
      end
    end

    describe '生徒の場合' do
      it '編集画面が表示されない' do
      end
    end
  end

  describe '削除' do
    describe '管理者の場合' do
      it 'ログイン後に削除できる' do
      end
    end

    describe '先生の場合' do
      it '削除画面が表示されない' do
      end
    end

    describe '生徒の場合' do
      it '削除画面が表示されない' do
      end
    end
  end
end