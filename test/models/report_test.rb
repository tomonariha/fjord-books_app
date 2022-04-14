# frozen_string_literal: true

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  setup do
    @report = FactoryBot.create(:report)
  end

  test '#editable? =>yes' do
    user = User.find(@report.user_id)
    assert_equal(true, @report.editable?(user))
  end

  test '#editable? =>no' do
    another_user = FactoryBot.create(:user)
    assert_equal(false, @report.editable?(another_user))
  end

  test '#created on' do
    date = DateTime.now.to_date
    assert_equal(date, @report.created_on)
  end
end
