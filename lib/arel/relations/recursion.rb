module Arel
  module Recursion
    module BaseCase
      def table
        self
      end

      def relation_for(attribute)
        self[attribute] and self
      end

      def table_sql(formatter = Sql::TableReference.new(self))
        formatter.table self
      end
    end
  end
end