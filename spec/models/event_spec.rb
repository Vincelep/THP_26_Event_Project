require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:each) do
    @event = FactoryBot.create(:event)
  end

  it "has a valid factory" do
    expect(build(:event)).to be_valid
  end

  describe "#start_date" do
    it { expect(@event).to validate_presence_of(:start_date) }
  end

  describe "#duration" do
    # it { expect(@event).to validate_presence_of(:duration) }
    it { expect(@event.duration % 5).to be( 0 ) }
  end

  describe "#title" do
    it { expect(@event).to validate_presence_of(:title) }
  end

  describe "#description" do
    it { expect(@event).to validate_presence_of(:description) }
  end

  describe "#price" do
    it { expect(@event).to validate_presence_of(:price) }
  end

  describe "#location" do
    it { expect(@event).to validate_presence_of(:location) }
  end

  context "associations" do
    it { expect(@event).to have_many(:attendances) }
    it { expect(@event).to have_many(:attendees) }
    it { expect(@event).to belong_to(:administrator) }
  end
end
