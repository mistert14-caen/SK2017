Object.send(:remove_const, :FFI) if defined?(::FFI)

dir = File.dirname(__FILE__)

ops = (RUBY_PLATFORM =~ /mswin|mingw/i) ? 'win' : 'mac'
bit = (Sketchup.respond_to?('is_64bit?') && Sketchup.is_64bit?) ? '64' : '32'
ver = (RUBY_VERSION =~ /1.8/) ? '1.8' : '2.0'

require File.join(dir, 'ffi', ops+bit, ver, 'ffi_c')
require File.join(dir, 'ffi/ffi')
