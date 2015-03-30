class Api < ActiveRecord::Base

  require 'open-uri'

  def self.call
    base_url = "https://api.fda.gov/device/event.json?api_key=S9BDUNvbSr75OCkTG4ZB8sYzMBPSVjZrIDK0qRdo"
    result = JSON.load(open(base_url))

    # PARSE JSON INTO ATTRIBUTES
    report_number = result["results"][0]["report_number"]
    event_type = result["results"][0]["event_type"]
    reporter_occupation = result["results"][0]["reporter_occupation_code"]
    manufacturer_state = result["results"][0]["manufacturer_state"]
    date_of_event = result["results"][0]["date_of_event"].to_date
    mdr_text = result["results"][0]["mdr_text"][0]["text"]
    manufacturer_name = result["results"][0]["manufacturer_name"]
    report_source_code = result["results"][0]["report_source_code"]
    number_devices_in_event = result["results"][0]["number_devices_in_event"]
    device_operator = result["results"][0]["device"][0]["device_operator"]
    brand_name = result["results"][0]["device"][0]["brand_name"]
    generic_name = result["results"][0]["device"][0]["generic_name"]
    catalog_number = result["results"][0]["device"][0]["catalog_number"]
    device_report_product_code = result["results"][0]["device"][0]["device_report_product_code"]
    baseline_510_k__exempt_flag = result["results"][0]["device"][0]["baseline_510_k__exempt_flag"]

    # CREATE EVENT AND ADD TO DB
    Event.create(report_number: report_number,
      event_type: event_type,
      reporter_occupation: reporter_occupation,
      manufacturer_state: manufacturer_state,
      date_of_event: date_of_event,
      mdr_text: mdr_text,
      manufacturer_name: manufacturer_name,
      report_source_code: report_source_code,
      number_devices_in_event: number_devices_in_event,
      device_operator: device_operator,
      brand_name: brand_name,
      generic_name: generic_name,
      catalog_number: catalog_number,
      device_report_product_code: device_report_product_code,
      baseline_510_k__exempt_flag: baseline_510_k__exempt_flag
      )
  end

end
