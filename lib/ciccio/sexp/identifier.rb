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

class Identifier
	def initialize (name)
		@internal = name.to_s
	end

	def to_s
		@internal
	end

	def inspect
		to_s
	end
end

end; end
