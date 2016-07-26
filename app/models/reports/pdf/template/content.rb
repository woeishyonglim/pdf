# testing
module Reports
  module Pdf
    module Template
      # testing
      module Content
        def content(text_array)
          text_array.each do |txt|
            text txt
          end

          move_down 40
        end
      end
    end
  end
end
