require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end  
  describe 'ユーザー新規登録単体テスト' do
    context '新規登録できる場合' do
      it "全ての情報が適切に入力されている場合、新規登録ができる"do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'emailに@がないと登録できない' do
        @user.email = "testabc.ne.jp"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it 'nicknameが空では登録できない' do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'メールアドレスが空では登録できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したメールアドレスは登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'パスワードが空では登録できない' do
        @user.password = ""
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'パスワードが6文字未満では登録できない' do
        @user.password = '12345'
        @user.password_confirmation = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it '英字のみのパスワードでは登録できない' do
        @user.password = "testabc"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it '数字のみのパスワードでは登録できない' do
        @user.password = "1234567"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it '全角文字を含むパスワードでは登録できない' do
        @user.password = "ああああああああ"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it '姓（全角）が空だと登録できない' do
        @user.first_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank", "First name is invalid")
      end
      it '姓（全角）に半角文字が含まれていると登録できない' do
        @user.first_name = "ｱｱｱｱｱｱ"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name is invalid")
      end
      it '名（全角）が空だと登録できない' do
        @user.last_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank", "Last name is invalid")
      end
      it '名（全角）に半角文字が含まれていると登録できない' do
        @user.last_name = "ｱｱｱｱｱｱ"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name is invalid")
      end
      it '姓（カナ）が空だと登録できない' do
        @user.first_name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank", "First name kana is invalid")
      end
      it '姓（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
        @user.first_name_kana = "あ亜1*"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana is invalid")
      end
      it '名（カナ）が空だと登録できない' do
        @user.last_name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana can't be blank", "Last name kana is invalid")
      end
      it '名（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
        @user.last_name_kana = "あ亜1*"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana is invalid")
      end
      it '生年月日が空だと登録できない' do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
    end
  end
end