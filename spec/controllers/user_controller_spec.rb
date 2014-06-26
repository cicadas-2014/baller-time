require 'spec_helper'

describe UserController do

    describe "#new" do
        it "renders new page" do
            get :new
            expect(response).to render_template(:new)
        end

        it "assigns a user object" do
            get :new
            expect(assigns(:user)).to be_a_new(User)
        end
    end

    describe "#create" do
        context "when valid params are passed" do
            let(:params) do 
                { email: 'blahty@blah.com' }
            end

            it "redirects to show" do
                post :create, user: params
                expect(response).to redirect_to(users_path(User.last))
            end

            it "creates a new user" do
                expect {
                    post :create, user: params
                }.to change { User.count }.by(1)
            end
        end
    end

    describe "#show" do
        it "assigns the user" do
            u = User.new
            u.email = "sam@dbc.com"
            u.save

            get :show, id: u.id
            expect(assigns(:user)).to eq(u)
        end
    end
end
