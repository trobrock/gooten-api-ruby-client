=begin
Gooten API


An overview of the various API methods that Gooten offers, including examples of each.


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git




=end

require 'date'

module GootenApiClient
  class PostOrderItem
    attr_accessor :quantity

    attr_accessor :sku

    attr_accessor :ship_carrier_method_id

    # If one does not want to pass a ShipCarrierMethodId of a specific shipping method, one can instead pass 'Standard', 'Overnight', or 'Expedited' here.
    attr_accessor :ship_type

    attr_accessor :images

    # An optional place to pass in an ID for the OrderItem.
    attr_accessor :source_id

    # An optional Map<string,string> of misc properties.
    attr_accessor :meta


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'quantity' => :'Quantity',
        
        :'sku' => :'SKU',
        
        :'ship_carrier_method_id' => :'ShipCarrierMethodId',
        
        :'ship_type' => :'ShipType',
        
        :'images' => :'Images',
        
        :'source_id' => :'SourceId',
        
        :'meta' => :'Meta'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'quantity' => :'Integer',
        :'sku' => :'String',
        :'ship_carrier_method_id' => :'Integer',
        :'ship_type' => :'String',
        :'images' => :'Array<Image>',
        :'source_id' => :'String',
        :'meta' => :'Meta'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Quantity']
        self.quantity = attributes[:'Quantity']
      end
      
      if attributes[:'SKU']
        self.sku = attributes[:'SKU']
      end
      
      if attributes[:'ShipCarrierMethodId']
        self.ship_carrier_method_id = attributes[:'ShipCarrierMethodId']
      end
      
      if attributes[:'ShipType']
        self.ship_type = attributes[:'ShipType']
      end
      
      if attributes[:'Images']
        if (value = attributes[:'Images']).is_a?(Array)
          self.images = value
        end
      end
      
      if attributes[:'SourceId']
        self.source_id = attributes[:'SourceId']
      end
      
      if attributes[:'Meta']
        self.meta = attributes[:'Meta']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          quantity == o.quantity &&
          sku == o.sku &&
          ship_carrier_method_id == o.ship_carrier_method_id &&
          ship_type == o.ship_type &&
          images == o.images &&
          source_id == o.source_id &&
          meta == o.meta
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [quantity, sku, ship_carrier_method_id, ship_type, images, source_id, meta].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = GootenApiClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end


end