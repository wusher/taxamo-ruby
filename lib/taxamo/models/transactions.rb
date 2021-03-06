# Copyright 2014-2015 Taxamo, Ltd.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Taxamo
class Transactions
  attr_accessor :confirm_timestamp, :fully_informative, :deducted_tax_amount, :order_date_type, :buyer_credit_card_prefix, :custom_data, :buyer_name, :invoice_date, :create_timestamp, :currency_code, :sub_account_id, :supply_date, :buyer_tax_number_normalized, :invoice_image_url, :key, :buyer_tax_number_format_valid, :tax_number_service, :invoice_address, :buyer_tax_number_valid, :verification_token, :note, :tax_supported, :tax_data, :transaction_lines, :buyer_tax_number, :external_key, :status, :custom_fields, :force_country_code, :countries, :invoice_number, :order_date, :customer_id, :kind, :source, :amount, :comments, :buyer_ip, :buyer_email, :original_transaction_key, :billing_country_code, :custom_id, :tax_amount, :additional_currencies, :invoice_place, :total_amount, :tax_entity_name, :evidence, :refunded_tax_amount, :manual, :tax_timezone, :description, :test, :tax_deducted, :tax_country_code, :refunded_total_amount

  # :internal => :external
  def self.attribute_map
    {
      :confirm_timestamp => :confirm_timestamp,
      :fully_informative => :fully_informative,
      :deducted_tax_amount => :deducted_tax_amount,
      :order_date_type => :order_date_type,
      :buyer_credit_card_prefix => :buyer_credit_card_prefix,
      :custom_data => :custom_data,
      :buyer_name => :buyer_name,
      :invoice_date => :invoice_date,
      :create_timestamp => :create_timestamp,
      :currency_code => :currency_code,
      :sub_account_id => :sub_account_id,
      :supply_date => :supply_date,
      :buyer_tax_number_normalized => :buyer_tax_number_normalized,
      :invoice_image_url => :invoice_image_url,
      :key => :key,
      :buyer_tax_number_format_valid => :buyer_tax_number_format_valid,
      :tax_number_service => :tax_number_service,
      :invoice_address => :invoice_address,
      :buyer_tax_number_valid => :buyer_tax_number_valid,
      :verification_token => :verification_token,
      :note => :note,
      :tax_supported => :tax_supported,
      :tax_data => :tax_data,
      :transaction_lines => :transaction_lines,
      :buyer_tax_number => :buyer_tax_number,
      :external_key => :external_key,
      :status => :status,
      :custom_fields => :custom_fields,
      :force_country_code => :force_country_code,
      :countries => :countries,
      :invoice_number => :invoice_number,
      :order_date => :order_date,
      :customer_id => :customer_id,
      :kind => :kind,
      :source => :source,
      :amount => :amount,
      :comments => :comments,
      :buyer_ip => :buyer_ip,
      :buyer_email => :buyer_email,
      :original_transaction_key => :original_transaction_key,
      :billing_country_code => :billing_country_code,
      :custom_id => :custom_id,
      :tax_amount => :tax_amount,
      :additional_currencies => :additional_currencies,
      :invoice_place => :invoice_place,
      :total_amount => :total_amount,
      :tax_entity_name => :tax_entity_name,
      :evidence => :evidence,
      :refunded_tax_amount => :refunded_tax_amount,
      :manual => :manual,
      :tax_timezone => :tax_timezone,
      :description => :description,
      :test => :test,
      :tax_deducted => :tax_deducted,
      :tax_country_code => :tax_country_code,
      :refunded_total_amount => :refunded_total_amount

    }
  end

  def initialize(attributes = {})
    return if attributes.nil? or attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if attributes.key?("confirm_timestamp")
      @confirm_timestamp = attributes["confirm_timestamp"]
        
    end
    if attributes.key?("fully_informative")
      @fully_informative = attributes["fully_informative"]
        
    end
    if attributes.key?("deducted_tax_amount")
      @deducted_tax_amount = attributes["deducted_tax_amount"]
        
    end
    if attributes.key?("order_date_type")
      @order_date_type = attributes["order_date_type"]
        
    end
    if attributes.key?("buyer_credit_card_prefix")
      @buyer_credit_card_prefix = attributes["buyer_credit_card_prefix"]
        
    end
    if attributes.key?("custom_data")
      @custom_data = attributes["custom_data"]
        
    end
    if attributes.key?("buyer_name")
      @buyer_name = attributes["buyer_name"]
        
    end
    if attributes.key?("invoice_date")
      @invoice_date = attributes["invoice_date"]
        
    end
    if attributes.key?("create_timestamp")
      @create_timestamp = attributes["create_timestamp"]
        
    end
    if attributes.key?("currency_code")
      @currency_code = attributes["currency_code"]
        
    end
    if attributes.key?("sub_account_id")
      @sub_account_id = attributes["sub_account_id"]
        
    end
    if attributes.key?("supply_date")
      @supply_date = attributes["supply_date"]
        
    end
    if attributes.key?("buyer_tax_number_normalized")
      @buyer_tax_number_normalized = attributes["buyer_tax_number_normalized"]
        
    end
    if attributes.key?("invoice_image_url")
      @invoice_image_url = attributes["invoice_image_url"]
        
    end
    if attributes.key?("key")
      @key = attributes["key"]
        
    end
    if attributes.key?("buyer_tax_number_format_valid")
      @buyer_tax_number_format_valid = attributes["buyer_tax_number_format_valid"]
        
    end
    if attributes.key?("tax_number_service")
      @tax_number_service = attributes["tax_number_service"]
        
    end
    if attributes.key?("invoice_address")
      @invoice_address = InvoiceAddress.new(attributes["invoice_address"])
        
    end
    if attributes.key?("buyer_tax_number_valid")
      @buyer_tax_number_valid = attributes["buyer_tax_number_valid"]
        
    end
    if attributes.key?("verification_token")
      @verification_token = attributes["verification_token"]
        
    end
    if attributes.key?("note")
      @note = attributes["note"]
        
    end
    if attributes.key?("tax_supported")
      @tax_supported = attributes["tax_supported"]
        
    end
    if attributes.key?("tax_data")
      @tax_data = TaxDataSchema.new(attributes["tax_data"])
        
    end
    if attributes.key?("transaction_lines")
      if (value = attributes["transaction_lines"]).is_a?(Array)
          @transaction_lines = value.map{ |v| TransactionLines.new(v) }
        end
      end
    if attributes.key?("buyer_tax_number")
      @buyer_tax_number = attributes["buyer_tax_number"]
        
    end
    if attributes.key?("external_key")
      @external_key = attributes["external_key"]
        
    end
    if attributes.key?("status")
      @status = attributes["status"]
        
    end
    if attributes.key?("custom_fields")
      if (value = attributes["custom_fields"]).is_a?(Array)
          @custom_fields = value.map{ |v| CustomFields.new(v) }
        end
      end
    if attributes.key?("force_country_code")
      @force_country_code = attributes["force_country_code"]
        
    end
    if attributes.key?("countries")
      @countries = Countries.new(attributes["countries"])
        
    end
    if attributes.key?("invoice_number")
      @invoice_number = attributes["invoice_number"]
        
    end
    if attributes.key?("order_date")
      @order_date = attributes["order_date"]
        
    end
    if attributes.key?("customer_id")
      @customer_id = attributes["customer_id"]
        
    end
    if attributes.key?("kind")
      @kind = attributes["kind"]
        
    end
    if attributes.key?("source")
      @source = attributes["source"]
        
    end
    if attributes.key?("amount")
      @amount = attributes["amount"]
        
    end
    if attributes.key?("comments")
      @comments = attributes["comments"]
        
    end
    if attributes.key?("buyer_ip")
      @buyer_ip = attributes["buyer_ip"]
        
    end
    if attributes.key?("buyer_email")
      @buyer_email = attributes["buyer_email"]
        
    end
    if attributes.key?("original_transaction_key")
      @original_transaction_key = attributes["original_transaction_key"]
        
    end
    if attributes.key?("billing_country_code")
      @billing_country_code = attributes["billing_country_code"]
        
    end
    if attributes.key?("custom_id")
      @custom_id = attributes["custom_id"]
        
    end
    if attributes.key?("tax_amount")
      @tax_amount = attributes["tax_amount"]
        
    end
    if attributes.key?("additional_currencies")
      @additional_currencies = AdditionalCurrencies.new(attributes["additional_currencies"])
        
    end
    if attributes.key?("invoice_place")
      @invoice_place = attributes["invoice_place"]
        
    end
    if attributes.key?("total_amount")
      @total_amount = attributes["total_amount"]
        
    end
    if attributes.key?("tax_entity_name")
      @tax_entity_name = attributes["tax_entity_name"]
        
    end
    if attributes.key?("evidence")
      @evidence = Evidence.new(attributes["evidence"])
        
    end
    if attributes.key?("refunded_tax_amount")
      @refunded_tax_amount = attributes["refunded_tax_amount"]
        
    end
    if attributes.key?("manual")
      @manual = attributes["manual"]
        
    end
    if attributes.key?("tax_timezone")
      @tax_timezone = attributes["tax_timezone"]
        
    end
    if attributes.key?("description")
      @description = attributes["description"]
        
    end
    if attributes.key?("test")
      @test = attributes["test"]
        
    end
    if attributes.key?("tax_deducted")
      @tax_deducted = attributes["tax_deducted"]
        
    end
    if attributes.key?("tax_country_code")
      @tax_country_code = attributes["tax_country_code"]
        
    end
    if attributes.key?("refunded_total_amount")
      @refunded_total_amount = attributes["refunded_total_amount"]
        
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      v = self.send(key)
      unless v.nil?
        if v.is_a?(Array)
          array = Array.new
          v.each do |item|
            if item.respond_to?("to_body".to_sym)
              array.push item.to_body
            else
              array.push item
            end
          end
          body[value] = array
        else
          if v.respond_to?("to_body".to_sym)
            body[value] = v.to_body
          else
            body[value] = v
          end
        end
      end
    end
    body
  end
end
end
