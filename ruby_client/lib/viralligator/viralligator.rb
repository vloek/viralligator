#
# Autogenerated by Thrift Compiler (0.9.1)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'viralligator_types'

module Viralligator
  class Client
    include ::Thrift::Client

    def topicsCount()
      send_topicsCount()
      return recv_topicsCount()
    end

    def send_topicsCount()
      send_message('topicsCount', TopicsCount_args)
    end

    def recv_topicsCount()
      result = receive_message(TopicsCount_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'topicsCount failed: unknown result')
    end

    def topic(url)
      send_topic(url)
      recv_topic()
    end

    def send_topic(url)
      send_message('topic', Topic_args, :url => url)
    end

    def recv_topic()
      result = receive_message(Topic_result)
      return
    end

    def sharings()
      send_sharings()
      return recv_sharings()
    end

    def send_sharings()
      send_message('sharings', Sharings_args)
    end

    def recv_sharings()
      result = receive_message(Sharings_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'sharings failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_topicsCount(seqid, iprot, oprot)
      args = read_args(iprot, TopicsCount_args)
      result = TopicsCount_result.new()
      result.success = @handler.topicsCount()
      write_result(result, oprot, 'topicsCount', seqid)
    end

    def process_topic(seqid, iprot, oprot)
      args = read_args(iprot, Topic_args)
      result = Topic_result.new()
      @handler.topic(args.url)
      write_result(result, oprot, 'topic', seqid)
    end

    def process_sharings(seqid, iprot, oprot)
      args = read_args(iprot, Sharings_args)
      result = Sharings_result.new()
      result.success = @handler.sharings()
      write_result(result, oprot, 'sharings', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class TopicsCount_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class TopicsCount_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::I64, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Topic_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    URL = 1

    FIELDS = {
      URL => {:type => ::Thrift::Types::STRING, :name => 'url'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Topic_result
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Sharings_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Sharings_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Sharing}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

