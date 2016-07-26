# testing
require 'prawn'
# testing
class HomeController < ApplicationController
  def index
  end

  def desc
    description = []
    description << "We received payment for your GitHub.com subscription. \
Thanks for your business!"
    description << 'Question? Contact us anytime at support@github.com'
    description
  end

  def title
    'Github Receipt'
  end

  def table_data
    data = [
      ['Date', Date.today],
      ['Account billed', 'jobline'],
      ['Item', '5 included seats'],
      ['Amount', 'USD $300.00'],
      ['Charged to', 'Visa'],
      ['Transaction ID', 'DT96V54'],
      ['For service through', Date.today]
    ]
    data
  end

  def report
    respond_to do |format|
      format.html
      format.pdf do
        send_data \
          Reports::Pdf::Report.new(title, desc, table_data).render,
          type: 'application/pdf',
          disposition: 'inline'
      end
    end
  end
end
