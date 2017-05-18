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
class CreateRefundIn
  attr_accessor :line_key, :custom_id, :amount, :total_amount, :refund_reason

  # :internal => :external
  def self.attribute_map
    {
      :line_key => :line_key,
      :custom_id => :custom_id,
      :amount => :amount,
      :total_amount => :total_amount,
      :refund_reason => :refund_reason

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    unless attributes["line_key"].nil?
      @line_key = attributes["line_key"]
        
    end
    unless attributes["custom_id"].nil?
      @custom_id = attributes["custom_id"]
        
    end
    unless attributes["amount"].nil?
      @amount = attributes["amount"]
        
    end
    unless attributes["total_amount"].nil?
      @total_amount = attributes["total_amount"]
        
    end
    unless attributes["refund_reason"].nil?
      @refund_reason = attributes["refund_reason"]
        
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
