#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'ciccio/sexp/identifier'
require 'ciccio/sexp/string'
require 'ciccio/sexp/integer'
require 'ciccio/sexp/float'
require 'ciccio/sexp/symbol'

module Ciccio

class Sexp < Array
	def type
		self[0]
	end

	def body
		self[1 .. -1]
	end

	def to_s
		'(' << map(&:inspect).join(' ') << ')'
	end

	alias inspect to_s
end

end
