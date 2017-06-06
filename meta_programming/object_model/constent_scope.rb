module MyModule
  MyConstant = '外側の定数'

  class MyClass
    MyConstant = '内側の定数'
  end
  MyClass::MyConstant           # => "内側の定数"
end

MyModule::MyConstant            # => "外側の定数"
MyModule::MyClass::MyConstant   # => "内側の定数"
 
Y = 'ルートレベルの定数'

module M
  Y = 'YMの中にある定数'
  Y                             # => "YMの中にある定数"
  ::Y                           # => "ルートレベルの定数"
end

M.constants                     # => [:Y]

Module.constants.include? :Object # => true
Module.constants.include? :Module # => true
Module.constants                  # => [:Object, :Module, :Class, :BasicObject, :Kernel, :NilClass, :NIL, :Data, :TrueClass, :TRUE, :FalseClass, :FALSE, :Encoding, :Comparable, :Enumerable, :String, :Symbol, :Exception, :SystemExit, :SignalException, :Interrupt, :StandardError, :TypeError, :ArgumentError, :IndexError, :KeyError, :RangeError, :ScriptError, :SyntaxError, :LoadError, :NotImplementedError, :NameError, :NoMethodError, :RuntimeError, :SecurityError, :NoMemoryError, :EncodingError, :SystemCallError, :Errno, :UncaughtThrowError, :ZeroDivisionError, :FloatDomainError, :Numeric, :Integer, :Fixnum, :Float, :Bignum, :Array, :Hash, :ENV, :Struct, :RegexpError, :Regexp, :MatchData, :Marshal, :Range, :IOError, :EOFError, :IO, :STDIN, :STDOUT, :STDERR, :ARGF, :FileTest, :File, :Dir, :Time, :Random, :Signal, :Proc, :LocalJumpError, :SystemStackError, :Method, :UnboundMethod, :Binding, :Math, :GC, :ObjectSpace, :Enumerator, :StopIteration, :RubyVM, :Thread, :TOPLEVEL_BINDING, :ThreadGroup, :ThreadError, :ClosedQueueError, :Mutex, :Queue, :SizedQueue, :ConditionVariable, :Process, :Fiber, :FiberError, :Rational, :Complex, :RUBY_VERSION, :RUBY_RELEASE_DATE, :RUBY_PLATFORM, :RUBY_PATCHLEVEL, :RUBY_REVISION, :RUBY_DESCRIPTION, :RUBY_COPYRIGHT, :RUBY_ENGINE, :RUBY_ENGINE_VERSION, :TracePoint, :ARGV, :Gem, :DidYouMean, :RbConfig, :CROSS_COMPILING, :StringIO, :MonitorMixin, :Monitor, :Delegator, :SimpleDelegator, :MyModule, :Y, :M, :RUBYGEMS_ACTIVATION_MONITOR]

module M
  class C
    module M2
      Module.nesting            # => [M::C::M2, M::C, M]
    end
  end
end

Object.class                    # => Class
Module.class                    # => Class
Class.class                     # => Class
Module.superclass               # => Object

obj3 = MyModule::MyClass.new
obj3.instance_variable_set("@x", 10)
obj3.instance_variables         # => [:@x]
obj3.instance_variable_get(:@x) # => 10
