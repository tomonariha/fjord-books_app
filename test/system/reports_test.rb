# frozen_string_literal: true

require 'application_system_test_case'

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = FactoryBot.create(:report)
    user = User.find(@report.user_id)
    sign_in(user)
    visit reports_path
  end

  test 'get report_index' do
    assert_selector 'h1', text: '日報'
  end

  test 'create new_report' do
    click_on '新規作成'
    fill_in 'タイトル', with: 'テスト入門'
    fill_in '内容', with: 'テスト楽しい'
    click_button '登録する'
    assert_text '日報が作成されました。'
  end

  test 'update report' do
    click_on '編集'
    fill_in 'タイトル', with: 'テスト入門'
    fill_in '内容', with: 'テスト便利'
    click_button '更新する'
    assert_text '日報が更新されました。'
  end

  test 'delete report' do
    accept_confirm do
      click_on '削除'
    end
    assert_text '日報が削除されました。'
  end
end
