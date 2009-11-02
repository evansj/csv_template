require 'fastercsv'

class CsvTemplateHandler < ActionView::TemplateHandler
  include ActionView::TemplateHandlers::Compilable
  
  def compile(template)
    "_set_controller_content_type(Mime::CSV);" +
    "FasterCSV.generate do |csv|\n" +
    template.source +
    "\nend\n"
  end
end
