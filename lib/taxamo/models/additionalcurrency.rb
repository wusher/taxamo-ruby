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
class AdditionalCurrency
  attr_accessor :currency_code, :amount, :tax_amount, :fx_rate, :fx_date, :total_amount

  # :internal => :external
  def self.attribute_map
    {
      :currency_code => :currency_code,
      :amount => :amount,
      :tax_amount => :tax_amount,
      :fx_rate => :fx_rate,
      :fx_date => :fx_date,
      :total_amount => :total_amount

    }
  end

  def initialize(attributes = {})
    return if attributes.nil? or attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if attributes.key?("currency_code")
      @currency_code = attributes["currency_code"]
        
    end
    if attributes.key?("amount")
      @amount = attributes["amount"]
        
    end
    if attributes.key?("tax_amount")
      @tax_amount = attributes["tax_amount"]
        
    end
    if attributes.key?("fx_rate")
      @fx_rate = attributes["fx_rate"]
        
    end
    if attributes.key?("fx_date")
      @fx_date = attributes["fx_date"]
        
    end
    if attributes.key?("total_amount")
      @total_amount = attributes["total_amount"]
        
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
