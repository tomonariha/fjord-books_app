# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = FactoryBot.create(:user)
  end

  test '#following?' do
    another_user = FactoryBot.create(:user)
    @user.follow(another_user)
    assert_equal(true, @user.following?(another_user))
  end

  test '#followed_by?' do
    another_user = FactoryBot.create(:user)
    @user.follow(another_user)
    assert_equal(true, another_user.followed_by?(@user))
  end

  test '#unfollow' do
    another_user = FactoryBot.create(:user)
    @user.follow(another_user)
    @user.unfollow(another_user)
    assert_equal(false, @user.following?(another_user))
  end

  test '#name_or_email? =>name' do
    assert_equal(@user.name, @user.name_or_email)
  end

  test '#name_or_email? =>email' do
    @user.name = nil
    assert_equal(@user.email, @user.name_or_email)
  end
end
