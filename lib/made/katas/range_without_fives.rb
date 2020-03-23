# frozen_string_literal: true

module Made
  module Katas
    # Simple coding Kata based on https://www.codewars.com/kata/5813d19765d81c592200001a/train/ruby
    class RangeWithoutFives
      attr_accessor :start_number, :end_number

      def initialize(start_number:, end_number:)
        self.start_number = start_number
        self.end_number   = end_number
      end

      def count
        to_a.count
      end

      private

      def to_a
        @to_a ||= begin
          range = (start_number..end_number)
          range.reject { |n| n.to_s.include?('5') }
        end
      end
    end
  end
end
