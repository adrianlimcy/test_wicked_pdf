class DownloadsController < ApplicationController
  def show
    @invoice = Invoice.find(params[:invoice_id])
    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: "PDF_File",
                template: "invoices/pdf.html.slim",
                layout: 'pdf.html.slim',
                page_size: 'A4',
                dpi: '300',
                margin_top: '30',
                margin_bottom: '23',
                margin_right: '10',
                header_spacing: '0',
                quiet: true,
                no_outline: true

      end
    end
  end
end
