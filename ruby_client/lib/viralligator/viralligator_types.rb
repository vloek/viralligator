#
# Autogenerated by Thrift Compiler (0.9.3)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module TopicState
  UNPUBLISHED = 0
  PUBLISHED = 1
  VALUE_MAP = {0 => "UNPUBLISHED", 1 => "PUBLISHED"}
  VALID_VALUES = Set.new([UNPUBLISHED, PUBLISHED]).freeze
end

class Topic
  include ::Thrift::Struct, ::Thrift::Struct_Union
  ID = 1
  URL = 2
  STATE = 3
  SHARINGS = 4

  FIELDS = {
    ID => {:type => ::Thrift::Types::I64, :name => 'id'},
    URL => {:type => ::Thrift::Types::STRING, :name => 'url'},
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :default =>     0, :optional => true, :enum_class => ::TopicState},
    SHARINGS => {:type => ::Thrift::Types::MAP, :name => 'sharings', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::I64}, :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field id is unset!') unless @id
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field url is unset!') unless @url
    unless @state.nil? || ::TopicState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class Share
  include ::Thrift::Struct, ::Thrift::Struct_Union
  SOCIAL = 1
  COUNT = 2

  FIELDS = {
    SOCIAL => {:type => ::Thrift::Types::STRING, :name => 'social'},
    COUNT => {:type => ::Thrift::Types::I64, :name => 'count'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Sharing
  include ::Thrift::Struct, ::Thrift::Struct_Union
  URL = 1
  SHARES = 2

  FIELDS = {
    URL => {:type => ::Thrift::Types::STRING, :name => 'url', :optional => true},
    SHARES => {:type => ::Thrift::Types::LIST, :name => 'shares', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Share}, :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

