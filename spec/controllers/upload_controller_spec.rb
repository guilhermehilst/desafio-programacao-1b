require 'rails_helper'

RSpec.describe UploadController, type: :controller do

  describe "POST #create" do
    context 'when there is a file' do
      it 'redirect to results path' do
        post :create, file: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/files/test.txt')))
        expect(response).to redirect_to(upload_path)
      end
    end
    context 'when there is no file' do
      before { post :create }
      it 'redirect to root path' do
        
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "GET #show" do
    let(:parser){ FactoryGirl.build :parser}
    context 'session is setted' do
      before{
        sales, total = parser.parse_file
        session[:sales] = sales
        session[:total] = total
        get :show
      }
      it 'response should be success' do
        expect(response).to be_success
      end
    end

    context 'there is no session settted' do
      it 'respond should not be success' do
        get :show
        expect(response).not_to be_success 
      end
    end
  end

end
