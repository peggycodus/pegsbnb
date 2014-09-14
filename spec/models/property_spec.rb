require 'rails_helper'

describe Property do
  it { should belong_to :user }
  it { should have_many :photos }
  it { should validate_numericality_of(:price).is_greater_than(0) }

  before :each do
    @user = FactoryGirl.create(:user)
    @property1 = FactoryGirl.create(:property, user_id: @user.id)
  end

  context ".search" do
    it "searches all properties" do
      @propertya = Property.create(city: "Chicago", price: "200")
      @propertyb = Property.create(city: "Portland", price: "83")
      @propertyc = Property.create(city: "Seattle", price: "99")
      expect(Property.search("Seattle")).to eq [@propertyc]
      expect(Property.search("Seattle")).to not_eq [@propertya, @propertyb]
    end
  end

end
