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

class String
	def initialize (string)
		@internal = string.to_s
	end

	def to_s
		@internal
	end

	def inspect
		@internal.inspect
	end
end

end; end
