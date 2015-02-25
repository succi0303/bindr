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

end
