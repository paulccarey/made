# frozen_string_literal: true

require 'spec_helper'

module Made
  module Katas
    RSpec.describe RangeWithoutFives do
      describe '#count' do
        let(:range) { described_class.new(start_number: start_number, end_number: end_number) }

        context 'range does not include any fives' do
          let(:start_number) { 1 }
          let(:end_number) { 4 }

          it 'returns all numbers in the range' do
            expect(range.count).to eq(4)
          end
        end

        context 'range includes five' do
          let(:start_number) { 1 }
          let(:end_number) { 9 }

          it 'removes the 5 from the range' do
            expect(range.count).to eq(8)
          end
        end

        context 'range includes 2 numbers with a five' do
          let(:start_number) { 4 }
          let(:end_number) { 17 }

          it 'removes bot numbers containing 5 from the range' do
            expect(range.count).to eq(12)
          end
        end
      end
    end
  end
end
