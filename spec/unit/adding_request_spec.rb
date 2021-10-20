# rails spec ./spec/unit/adding_request_spec.rb
require 'rails_helper'

RSpec.describe Request, type: :model do
    before(:all) do
        @request = Request.create(event_id: '1', uin: '999009999',
        date: '02/02/02', request_type: 'volunteering', points: '10', approved: 'true')
    end

    it 'is valid with valid attributes' do
        expect(@request).to be_valid
    end

    it 'has no event id' do
        @request.event_id = nil
        expect(@request).not_to be_valid
    end

    it 'has no uin' do
        @request.uin = nil
        expect(@request).not_to be_valid
    end

    it 'has no date' do
        @request.date = nil
        expect(@request).not_to be_valid
    end

    it 'has no request type' do
        @request.request_type = nil
        expect(@request).not_to be_valid
    end

    it 'has no approval' do
        @request.approved = nil
        expect(@request).not_to be_valid
    end
end
