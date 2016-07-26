require 'prawn'
# testing
module Reports
  module Pdf
    # testing
    class Report
      include Prawn::View
      include Template::Header
      include Template::Content
      include Template::Table
      include Template::Footer

      def initialize(title, description, table_data)
        header(title)
        content(description)
        table_template1(table_data)
        footer
      end
    end
  end
end
