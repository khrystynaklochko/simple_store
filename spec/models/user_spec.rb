require 'rails_helper'
require 'cancan/matchers'

RSpec.describe User, type: :model do
  describe 'abilities' do
    subject(:ability) { Ability.new user }
    let(:user) { nil }

    context 'user is not registred' do
      [:create, :read, :update, :delete].each do |method|
        it { expect(subject).to_not be_able_to method, Product.new }
        it { expect(subject).to_not be_able_to method, Category.new }
        it { expect(subject).to_not be_able_to method, Review.new }
      end
    end

    context 'user is registred user' do
      let(:user) { FactoryGirl.create :user }
      [:create, :read, :update, :delete].each do |method|
        it { expect(subject).to_not be_able_to method, Product.new }
        it { expect(subject).to_not be_able_to method, Category.new }
      end
      it { expect(subject).to_not be_able_to :update, Review.new }
      it { expect(subject).to_not be_able_to :delete, Review.new }
      it { expect(subject).to be_able_to :create, Review.new }
    end

    context 'user is admin user' do
      let(:user) { FactoryGirl.create :admin }
      it { expect(subject).to be_able_to :crud, Product.new }
      it { expect(subject).to be_able_to :crud, Category.new }
      it { expect(subject).to be_able_to :crud, Review.new }
    end
  end
end