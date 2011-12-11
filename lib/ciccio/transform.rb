#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'parslet'
require 'parslet/convenience'

require 'ciccio/sexp'

module Ciccio

class Transform < Parslet::Transform
	rule(identifier: simple(:i)) { Sexp::Identifier.new(i) }

	rule(string: simple(:s)) { Sexp::String.new(s) }

	rule(symbol: simple(:s)) { Sexp::Symbol.new(s) }

	rule(integer: simple(:i)) { Sexp::Integer.new(i) }

	rule(float: { integer: simple(:a), e: simple(:b) }) { Sexp::Float.new(a + b) }

	rule(expression: subtree(:e)) { Sexp[*e] }
end

end
