module Kafka
  ERRLEN = 128

  class Config
    def initialize
      @p_err_str = LibC.malloc(ERRLEN).as(UInt8*)
      @conf_handle = LibKafkaC.conf_new
      raise "Failed to allocate Kafka Config" unless @conf_handle
    end

    def finalize
      LibC.free(@p_err_str)
      # LibKafkaC.conf_destroy(@conf_handle) if @conf_handle
    end

    def to_unsafe
      @conf_handle
    end

    def set(name : String, value : String)
      res = LibKafkaC.conf_set(@conf_handle, name, value, @p_err_str, ERRLEN)
      raise "Kafka.Config: set('#{name}') failed: #{String.new @p_err_str}" unless LibKafkaC::OK == res
    end

    def set_msg_callback(cb : Proc(LibKafkaC::KafkaHandle, LibKafkaC::Message*, Void*, Void))
      LibKafkaC.conf_set_dr_msg_cb @conf_handle, cb
    end
  end
end
