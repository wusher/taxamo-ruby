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
class Report
  attr_accessor :currency_code, :skip_moss, :country_code, :tax_region, :country_subdivision, :amount, :tax_amount, :tax_rate, :country_name

  # :internal => :external
  def self.attribute_map
    {
      :currency_code => :currency_code,
      :skip_moss => :skip_moss,
      :country_code => :country_code,
      :tax_region => :tax_region,
      :country_subdivision => :country_subdivision,
      :amount => :amount,
      :tax_amount => :tax_amount,
      :tax_rate => :tax_rate,
      :country_name => :country_name

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    unless attributes["currency_code"].nil?
      @currency_code = attributes["currency_code"]
        
    end
    unless attributes["skip_moss"].nil?
      @skip_moss = attributes["skip_moss"]
        
    end
    unless attributes["country_code"].nil?
      @country_code = attributes["country_code"]
        
    end
    unless attributes["tax_region"].nil?
      @tax_region = attributes["tax_region"]
        
    end
    unless attributes["country_subdivision"].nil?
      @country_subdivision = attributes["country_subdivision"]
        
    end
    unless attributes["amount"].nil?
      @amount = attributes["amount"]
        
    end
    unless attributes["tax_amount"].nil?
      @tax_amount = attributes["tax_amount"]
        
    end
    unless attributes["tax_rate"].nil?
      @tax_rate = attributes["tax_rate"]
        
    end
    unless attributes["country_name"].nil?
      @country_name = attributes["country_name"]
        
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
