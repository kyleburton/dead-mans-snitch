require 'spec_helper'
require 'dead_mans_snitch'

describe DeadMansSnitch do
  let(:snitch_id) { 'WRNZLBRNFT' }

  describe '.report' do
    subject { described_class.report snitch_id }

    context 'when remote accepts the message' do
      before do
        stub_request(:post, "https://nosnch.in/#{snitch_id}").
        to_return(:status => 202, :body => "Got it, thanks!")
      end

      it 'returns http response' do
        expect(subject.code).to eq('202')
      end
    end

    context 'when remote returns an error' do
      before do
        stub_request(:post, "https://nosnch.in/#{snitch_id}").
        to_return(:status => 400, :body => "Bad Snitch")
      end

      it 'returns http response' do
        expect(subject.code).to eq('400')
      end
    end

    context 'when Net::HTTP throws an error' do
      it 'swallows the error' do
        expect_any_instance_of(Net::HTTP).to receive(:request).and_raise(Timeout::Error)
        expect { subject }.to_not raise_error
      end

      it { is_expected.to be_falsey }
    end
  end
end
