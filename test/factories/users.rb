# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:name) { |i| "user#{i}" }
    sequence(:email) { |i| "test#{i}@example.com" }
    password { 'password' }
  end
end
