require 'rails_helper'

RSpec.describe BindersController, type: :controller do

  let(:binder) { create(:binder) }

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

end
