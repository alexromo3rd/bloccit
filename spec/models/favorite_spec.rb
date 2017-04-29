require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
  let(:post) { Post.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
  let(:favorite) { Favorite.create!(post: post, user: user) } 

  it { is_expected.to belong_to(:post) }
  it { is_expected.to belong_to(:user) }
end
