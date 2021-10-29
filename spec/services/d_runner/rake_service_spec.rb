# frozen_string_literal: true

require 'rails_helper'

describe DRunner::RakeService do
  describe '#list_rake_tasks' do
    subject { described_class.list_rake_tasks }

    context "When listing failed" do
      before { allow(Open3).to receive(:capture3).and_raise(NameError) }

      it "returns empty arrray" do
        is_expected.to eq([])
      end
    end

    context "When listing is successful" do
      let(:application_tasks) { ['rake task1'] }
      it "returns available tasks" do
        is_expected.to include(application_tasks)
      end
    end
  end
end
