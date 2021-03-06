# frozen_string_literal: true

module Bolt
  module Log
    extend Bolt::Library

    callback :log_func, %i[pointer string], :void

    attach_function :create, :BoltLog_create, %i[pointer], :auto_pointer
    attach_function :destroy, :BoltLog_destroy, %i[pointer], :void
    attach_function :set_error_func, :BoltLog_set_error_func, %i[pointer log_func], :void
    attach_function :set_warning_func, :BoltLog_set_warning_func, %i[pointer log_func], :void
    attach_function :set_info_func, :BoltLog_set_info_func, %i[pointer log_func], :void
    attach_function :set_debug_func, :BoltLog_set_debug_func, %i[pointer log_func], :void
  end
end
