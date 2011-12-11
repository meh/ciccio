#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module Ciccio; class Sexp < Array

class Symbol
	def initialize (value)
		@internal = (value.start_with?(?:) ? value[1 .. -1] : value).to_sym
	end

	def to_sym
		@internal
	end

	def inspect
		to_sym.inspect
	end
end

end; end
