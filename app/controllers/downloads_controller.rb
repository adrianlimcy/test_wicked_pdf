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
                dpi: '300'

      end
    end
  end
end
