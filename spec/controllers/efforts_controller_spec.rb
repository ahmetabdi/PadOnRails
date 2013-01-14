require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EffortsController do
 include Devise::TestHelpers
  # This should return the minimal set of attributes required to create a valid
  # Effort. As you add validations to Effort, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all efforts as @efforts" do
      effort = Effort.create! valid_attributes
      get :index
      assigns(:efforts).should eq([effort])
    end
  end

  describe "GET show" do
    it "assigns the requested effort as @effort" do
      effort = Effort.create! valid_attributes
      get :show, :id => effort.id.to_s
      assigns(:effort).should eq(effort)
    end
  end

  describe "GET new" do
    it "assigns a new effort as @effort" do
      get :new
      assigns(:effort).should be_a_new(Effort)
    end
  end

  describe "GET edit" do
    it "assigns the requested effort as @effort" do
      effort = Effort.create! valid_attributes
      get :edit, :id => effort.id.to_s
      assigns(:effort).should eq(effort)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Effort" do
        expect {
          post :create, :effort => valid_attributes
        }.to change(Effort, :count).by(1)
      end

      it "assigns a newly created effort as @effort" do
        post :create, :effort => valid_attributes
        assigns(:effort).should be_a(Effort)
        assigns(:effort).should be_persisted
      end

      it "redirects to the created effort" do
        post :create, :effort => valid_attributes
        response.should redirect_to(Effort.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved effort as @effort" do
        # Trigger the behavior that occurs when invalid params are submitted
        Effort.any_instance.stub(:save).and_return(false)
        post :create, :effort => {}
        assigns(:effort).should be_a_new(Effort)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Effort.any_instance.stub(:save).and_return(false)
        post :create, :effort => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested effort" do
        effort = Effort.create! valid_attributes
        # Assuming there are no other efforts in the database, this
        # specifies that the Effort created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Effort.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => effort.id, :effort => {'these' => 'params'}
      end

      it "assigns the requested effort as @effort" do
        effort = Effort.create! valid_attributes
        put :update, :id => effort.id, :effort => valid_attributes
        assigns(:effort).should eq(effort)
      end

      it "redirects to the effort" do
        effort = Effort.create! valid_attributes
        put :update, :id => effort.id, :effort => valid_attributes
        response.should redirect_to(effort)
      end
    end

    describe "with invalid params" do
      it "assigns the effort as @effort" do
        effort = Effort.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Effort.any_instance.stub(:save).and_return(false)
        put :update, :id => effort.id.to_s, :effort => {}
        assigns(:effort).should eq(effort)
      end

      it "re-renders the 'edit' template" do
        effort = Effort.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Effort.any_instance.stub(:save).and_return(false)
        put :update, :id => effort.id.to_s, :effort => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
          before(:each) do
        User.destroy_all
        @user = Factory(:user)
        sign_in @user
      end
    it "destroys the requested effort" do
      effort = Effort.create! valid_attributes
      expect {
        delete :destroy, :id => effort.id
      }.to change(Effort, :count).by(-1)
    end

    it "redirects to timesheet" do
      effort = Effort.create! valid_attributes
      delete :destroy, :id => effort.id 
      response.should redirect_to(timesheet_path(@user)) 
      
    end
  end 
end 
