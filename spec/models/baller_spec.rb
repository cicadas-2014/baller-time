require 'spec_helper'

describe Baller do
  let(:rebecca) { Baller.new }

  it "has a name" do
    expect(rebecca).to respond_to(:name)
  end  

  it "defaults to awesome" do
    expect(subject).to be_awesome
  end

  describe "#name" do
    it "errors if there is no name" do
      subject.save
      expect(
        subject.errors.messages[:name]
      ).to include("can't be blank")
    end
  end

  describe "#jersey" do
    it "is an integer" do
        subject.jersey = 2
        subject.save
        subject.errors.messages[:jersey].should be_nil
    end

    it "can't be a decimal" do
        subject.jersey = 2.4
        subject.save
        subject.errors.messages[:jersey].should include("must be an integer")
    end

    it "can't be an empty string" do
      subject.jersey = ""
      subject.save
      subject.errors.messages[:jersey].should include("is not a number")
    end
  end

  describe ".yo" do

  end
end
