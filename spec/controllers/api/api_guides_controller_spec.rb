require "spec_helper"

describe Api::GuidesController, :type => :controller do

  before do
    @beans_v2 = FactoryGirl.create(:guide, name: 'lee\'s mung bean')
    FactoryGirl.create_list(:guide, 2)
  end

  it "should create guides" do
    guide = FactoryGirl.attributes_for(:guide)
    post 'create', :guide => guide, format: :json
    # TODO: Having some issues here, not quite sure what the 
    # way forward is. 
    #expect(response.status).to eq(200)
    #expect(json['guide']['_id'].to eq(guide.id.to_s))
  end

  it "should return an error with wrong guide information"

  it "should show a specific guide"

  it "should return a not found error if a guide isn't found"

  it "should update a guide"




    # expect(json['guide'])

  # it "lists crops." do
  #   get "index", format: :json, query: 'mung'
  #   expect(response.status).to eq(200)
  #   expect(json.length).to eq(1)
  #   expect(json['crops'][0]['_id']).to eq(@beans.id.to_s)
  # end

  # it 'returns [] for tiny searches' do
  #   get 'index', format: :json, query: 'mu'
  #   expect(response.status).to eq(200)
  #   expect(json).to eq('crops' => [])
  # end
end
