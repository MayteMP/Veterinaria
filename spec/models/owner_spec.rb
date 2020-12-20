require 'rails_helper'

RSpec.describe Owner, type: :model do
  
  describe "valid attributtes" do 
    let(:factory_owner) { build(:owner) }
    context "is valid with valid attributes" do 
      it { expect(factory_owner).to be_valid }
      it "is valid without internal_number" do 
        factory_owner.internal_number = nil
        expect(factory_owner).to be_valid
      end
      it "is valid without internal_number" do 
        factory_owner.internal_number = nil
        expect(factory_owner).to be_valid
      end
      it "is valid without last_name_two" do 
        factory_owner.last_name_two = nil
        expect(factory_owner).to be_valid
      end
    end
  end

  describe "invalid attributes" do 
    let(:factory_owner) { build(:owner) }
    context "is invalid without attibutes" do
      it "is name owner nil" do 
        factory_owner.name = nil
        expect(factory_owner).not_to allow_value(nil).for(:name)
      end
      it "is last_name owner nil" do 
        factory_owner.last_name = nil
        expect(factory_owner).not_to allow_value(nil).for(:last_name)
      end
      it "is street owner nil" do 
        factory_owner.street_name = nil
        expect(factory_owner).not_to allow_value(nil).for(:street_name)
      end
      it "is town owner nil" do 
        factory_owner.town = nil
        expect(factory_owner).not_to allow_value(nil).for(:town)
      end
      it "is external_number nil" do 
        factory_owner.external_number = nil
        expect(factory_owner).not_to allow_value(nil).for(:external_number)
      end
      it "is city nil" do 
        factory_owner.city = nil
        expect(factory_owner).not_to allow_value(nil).for(:city)
      end
      it "is country nil" do 
        factory_owner.country = nil
        expect(factory_owner).not_to allow_value(nil).for(:country)
      end
      it "is phone_number nil" do 
        factory_owner.phone_number = nil
        expect(factory_owner).not_to allow_value(nil).for(:phone_number)
      end
    end
    context "is invalid without numericality " do 
      it "is not phone_number numbers" do 
        factory_owner.phone_number = Faker::Name.name
        expect(factory_owner).to validate_numericality_of(:phone_number)
      end
    end
  end

end
