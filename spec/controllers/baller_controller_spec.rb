require 'spec_helper'

describe BallerController do
  describe "#index" do
    it "renders the index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "#create" do
    context "when valid params are passed" do
       let(:params) do 
         { name: 'LaBron', jersey: 4, sponsor: 'Gatorade' }
       end

       it "creates a baller" do
          expect {
            post :create, baller: params
          }.to change(Baller, :count).by(1)
       end
    end

    context "when invalid params are passed" do
      let(:params) { {} }

      it "raises an error" do
        expect {
            post :create, baller: params
        }.to raise_error
      end
    end
  end
end
