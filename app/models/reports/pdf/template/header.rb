require 'prawn-svg'
# testing
module Reports
  module Pdf
    module Template
      # testing
      module Header
        def header(title)
          logo
          title(title)
        end

        def logo
          svg IO.read("#{Rails.root}/Takkun.svg"), position: :center, width: 63
          move_down 20
        end

        def title(title)
          text title, align: :center, size: 20
          move_down 40
        end
      end
    end
  end
end
