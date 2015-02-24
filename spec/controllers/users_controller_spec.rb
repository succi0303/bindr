require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { create(:user) }

  describe 'GET #show' do
    before :each do
      get :show, id: user
    end

    it "assigns the requested user to @user" do
      expect(assigns(:user)).to eq(user)
    end

    it "renders the :show template" do
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new' do
    before :each do
      get :new
    end

    it "assigns a new user to @user" do
      expect(assigns(:user)).to be_a_new(User)
    end

    it "renders the :new template" do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do

    context 'with invalid information' do

      it "does not save the user in the databse" do
        expect{
          post :create,
          user: attributes_for(:user, email: nil)
        }.to_not change(User, :count)
      end

      it "re-renders the :new template" do
        post :create, user: attributes_for(:user, email: nil)
        expect(response).to render_template(:new)
      end

    end

    context "with valid information" do

      it "saves the user in the database" do
        expect{
          post :create,
          user: attributes_for(:user)
        }.to change(User, :count).by(1)
      end

      it "redirects to #show" do
        post :create, user: attributes_for(:user)
        expect(response).to redirect_to user_path(assigns(:user))
      end
    end
  end

  describe 'GET #edit' do

    before :each do
      get :edit, id: user
    end

    it "assigns the requested user to @user" do
      expect(assigns(:user)).to eq(user)
    end

    it "renders the :edit template" do
      expect(response).to render_template(:edit)
    end
  end

  describe 'PATCH #update' do

    before :each do
      @user = create(:user, name: 'update_user', email: 'update@example.com')
    end

    it "assigns the requested user to @user" do
      patch :update, id: @user, user: attributes_for(:user)
      expect(assigns(:user)).to eq(@user)
    end

    context 'with invalid information' do

      before :each do
        patch :update, id: @user,
          user: attributes_for(:user, name: ' ', email: ' ')
      end

      it "does not change @user's attributes" do
        @user.reload
        expect(@user.name).to_not eq(' ')
        expect(@user.email).to_not eq(' ')
      end

      it "re-renders the :edit template" do
        expect(response).to render_template :edit
      end
    end

    context 'with valid information' do

      before :each do
        patch :update, id: @user,
          user: attributes_for(:user, name: 'update_user', email: 'update@example.com')
      end

      it "changes @user's attribute" do
        @user.reload
        expect(@user.name).to eq('update_user')
        expect(@user.email).to eq('update@example.com')
      end

      it "redirects to #show" do
        expect(response).to redirect_to @user
      end
    end
  end

  describe 'DELETE #destroy' do

    before :each do
      @user = create(:user)
    end

    it "deletes the user" do
      expect{
        delete :destroy, id: @user
      }.to change(User, :count).by(-1)
    end

    it "redirects to root_path" do
      delete :destroy, id: @user
      expect(response).to redirect_to root_path
    end
  end

end
