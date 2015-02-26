require 'rails_helper'

RSpec.describe BindersController, type: :controller do

  let(:binder) { create(:binder) }

  before :each do
    allow(controller).to receive(:signed_in_user).and_return(true)
    allow(controller).to receive(:correct_user).and_return(true)
  end

  describe "GET #index" do

    before :each do
      get :index
    end

    it "assigns array of binders" do
      expect(assigns(:binders)).to match_array([binder])
    end

    it "renders :index template" do
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do

    before :each do
      get :show, id: binder
    end

    it "assigns requested binder to @binder" do
      expect(assigns(:binder)).to eq(binder)
    end

    it "renders :show template" do
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do

    before :each do
      get :new
    end

    it "assigns new binder to @binder" do
      expect(assigns(:binder)).to be_a_new(Binder)
    end

    it "renders :new template" do
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do

    context "with invalid attributes" do

      it "does not save binder in database" do
        expect{
          post :create,
          binder: attributes_for(:binder, title: nil)
        }.to_not change(Binder, :count)
      end

      it "re-renders :new template" do
        post :create, binder: attributes_for(:binder, title: nil)
        expect(response).to render_template :new
      end
    end

    context "with valid attributes" do

      before :each do
        allow(controller).to receive(:current_user).and_return(binder.user)
      end

      it "saves binder in database" do
        expect{
          post :create, binder: attributes_for(:binder)
        }.to change(Binder, :count).by(1)
      end

      it "redirects to binder#show" do
        post :create, binder: attributes_for(:binder)
        expect(response).to redirect_to binder_path(assigns(:binder))
      end
    end
  end

  describe "GET #edit" do

    before :each do
      get :edit, id: binder
    end

    it "assigns the requested binder to @binder" do
      expect(assigns(:binder)).to eq(binder)
    end

    it "renders :edit template" do
      expect(response).to render_template :edit
    end
  end

  describe "PATCH #update" do

    before :each do
      @binder = create(:binder)
      allow(controller).to receive(:current_user).and_return(@binder.user)
    end

    context "with invalid attributes" do

      before :each do
        patch :update, id: @binder, binder: attributes_for(:binder, title: nil)
      end

      it "does'nt change @binder's attributes" do
        @binder.reload
        expect(@binder.title).to_not eq(nil)
      end

      it "re-renders :edit template" do
        expect(response).to render_template :edit
      end
    end

    context "with valid attributes" do

      before :each do
        patch :update, id: @binder, binder: attributes_for(:binder, title: 'update')
      end

      it "changes @binder's attributes" do
        @binder.reload
        expect(@binder.title).to eq('update')
      end

      it "redirects to binder#show" do
        expect(response).to redirect_to @binder
      end
    end
  end

  describe "DELETE #destroy" do

    before :each do
      @binder = create(:binder)
    end

    it "deletes binder" do
      expect{
        delete :destroy, id: @binder
      }.to change(Binder, :count).by(-1)
    end

    it "redrects to user#show" do
      delete :destroy, id: @binder
      expect(response).to redirect_to @binder.user
    end
  end

end
