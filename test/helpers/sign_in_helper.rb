# frozen_string_literal: true

module SignInHelper
  def sign_in(user)
    visit root_path
    fill_in 'Eメール', with: user.email
    fill_in 'パスワード', with: 'password'
    click_button 'ログイン'
  end
end
