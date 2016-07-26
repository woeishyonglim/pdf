require 'prawn/table'

module Reports
  module Pdf
    module Template
      # testing
      module Table
        def table_template1(data)
          table(data) do
            cells.padding = 12
            cells.borders = []
            rows(0..-2).borders = [:bottom]
            cells.border_color = 'D3D3D3'
            column(0).width = 200
            column(1).width = 340
            columns(1).font_style = :bold
          end
        end
      end
    end
  end
end
