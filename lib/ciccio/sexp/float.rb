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

class Float
	def initialize (value)
		@internal = Float(value)
	end

	def to_f
		@internal
	end

	def inspect
		to_f.inspect
	end
end

end; end
