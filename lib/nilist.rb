require_relative "errors"
require_relative "nilist/version"

class Nilist
  EH_REGEX = /\?$/

  REPL_PRESENTERS = [
    :inspect,
    :pretty_print
  ].freeze

  INVOKERS = [
    :send,
    :__send__,
    :public_send
  ].freeze

  PRESERVED_METHODS = (REPL_PRESENTERS + INVOKERS).freeze

  self.methods.each do |m|
    next if PRESERVED_METHODS.include?(m)
    if m =~ EH_REGEX
      define_method m do |*args|
        raise UnprovableError
      end
    else
      define_method m do |*args|
        nil
      end
    end
  end

  def method_missing(m, *args, &block)
    if m =~ EH_REGEX
      raise UnprovableError
    else
      nil
    end
  end
end
