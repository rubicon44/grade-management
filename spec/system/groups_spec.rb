require 'rails_helper'

RSpec.describe 'Groups', type: :system, js: true do
  describe '新規作成' do
    describe '管理者の場合' do
      it 'ログイン後に作成できる（学年を作成するときに一緒に作成する）' do
      end
    end

    describe '学年主任の先生の場合' do
      it 'ログイン後に担当学年のクラスを作成することができる' do
      end
    end

    describe '学年主任以外の先生の場合' do
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

    describe '学年主任の先生の場合' do
      it 'ログイン後に担当学年のクラスの一覧画面が表示される' do
      end
    end

    describe '学年主任以外の先生の場合' do
      it '一覧画面が表示されない' do
      end
    end

    describe '生徒の場合' do
      it '一覧画面が表示されない' do
      end
    end
  end

  describe '詳細' do
    describe '管理者の場合' do
      it 'ログイン後に詳細画面が表示される' do
      end
    end

    describe '学年主任の先生の場合' do
      it 'ログイン後に担当学年のクラスの詳細画面が表示される' do
      end
    end

    describe '担任の先生の場合' do
      it 'ログイン後に担当クラスの詳細画面が表示される' do
      end
    end

    describe '生徒の場合' do
      it '詳細画面が表示されない' do
      end
    end
  end

  describe '編集' do
    describe '管理者の場合' do
      it 'ログイン後に編集できる' do
      end
    end

    describe '学年主任の先生の場合' do
      it 'ログイン後に担当学年のクラスを編集できる' do
      end
    end

    describe '学年主任以外の先生の場合' do
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

    describe '学年主任の先生の場合' do
      it 'ログイン後に担当学年のクラスを削除できる' do
      end
    end

    describe '学年主任以外の先生の場合' do
      it '編集画面が表示されない' do
      end
    end

    describe '生徒の場合' do
      it '削除画面が表示されない' do
      end
    end
  end
end