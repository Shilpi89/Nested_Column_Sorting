module Nested_Column
  module Sorting   
    class Nested_Column::Sorting::Sort
      attr_reader :table_name,:nested_column_name,:column_name
      def initialize table_name, nested_column_name, column_name, options = {}
        @table_name = table_name
        @nested_column_name = nested_column_name
        @column_name = column_name
        sort_nested_column
      end

      def sort_nested_column
        @sorted_nested_column = JSON.parse(@table_name.@nested_column_name.to_json)["attributes"].sort_by{|s| s["attributes"][@column_name]}
        @sorted_nested_column
      end

    end
  end
end
