module Nested_Column
  module Sorting   
    class Nested_Column::Sorting::Sort
      attr_reader :nested_column_data,:column_name
      def initialize nested_column_data, column_name, options = {}
        @nested_column_data = nested_column_data
        @column_name = column_name
        sort_nested_column
      end

      def sort_nested_column
        @sorted_nested_data = JSON.parse(@nested_column_data)["attributes"].sort_by{|s| s["attributes"][@column_name]}
        @sorted_nested_data
      end

    end
  end
end
