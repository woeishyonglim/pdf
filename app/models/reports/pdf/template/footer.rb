module Reports
  module Pdf
    module Template
      # testing
      module Footer
        def footer
          bounding_box([0, 150], width: 400) do
            expression
            signature
            company_details
          end
        end

        def expression
          text 'Thank you.', size: 40, style: :bold, color: 'E0E0E0'
          move_down 20
        end

        def signature
          text 'Jobline', size: 20, style: :bold
          move_down 10
        end

        def company_details
          company_address
          company_contact
        end

        def company_address
          bounding_box([0, 10], width: 150) do
            company_address_details.each do |address|
              text address
            end
          end
        end

        def company_contact
          bounding_box([210, 60], width: 150) do
            company_contact_details.each do |contact|
              text contact
            end
          end
        end

        def company_address_details
          [
            'Jobline Resources Pte Ltd',  '15 Queen Street #03-05',
            'Tan Chong Tower, 188537',    'Singapore'
          ]
        end

        def company_contact_details
          ['info@jobline.com.sg', 'https://www.jobline.com.sg']
        end
      end
    end
  end
end
