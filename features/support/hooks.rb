require "report_builder"
require "date"

at_exit do
  t = Time.now.strftime("%d-%m-%Y")
  @infos = {
    "Dispositivo" => "API",
    "Data do Teste" => t,
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report_#{t}"
    config.report_types = [:html]
    config.report_title = "ViaCEP"
    config.additional_info = @infos
    config.color = "green"
  end
  ReportBuilder.build_report
end
