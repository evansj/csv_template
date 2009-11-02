# Include hook code here
require 'csv_template'

ActionView::Template.register_template_handler :csv, CsvTemplateHandler