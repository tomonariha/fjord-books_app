# frozen_string_literal: true

FactoryBot.define do
  factory :report do
    user { FactoryBot.create(:user) }
    title { '本のタイトル' }
    content { '本の内容' }
  end
end
