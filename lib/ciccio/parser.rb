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

module Ciccio

class Parser < Parslet::Parser
	root :expression
	rule(:expression) {
		space? >> str('(') >> space? >> body >> space? >> str(')') >> space?
	}

	rule(:body) {
		(expression | identifier | float | integer | string).repeat.as(:expression)
	}

	rule(:identifier) {(
		match('[^:()[0-9]\-+"\s]') >> match('[^()\s]').repeat |
		match('[\-+]') >> match('[^0-9]') >> match('[^()\s]').repeat |
		match('[^:()[0-9]"\s]')
	).as(:identifier) >> space? }

	rule(:float) { (
		integer >> (
			str('.') >> match('[0-9]').repeat(1) |
			str('e') >> match('[0-9]').repeat(1)
		).as(:e)
	).as(:float) >> space? }

	rule(:integer) {
		((str('+') | str('-')).maybe >> match("[0-9]").repeat(1)).as(:integer) >> space?
	}

	rule(:string) {
		str('"') >> (
			str('\\') >> any |
			str('"').absent? >> any
		).repeat.as(:string) >> str('"') >> space?
	}

	rule(:symbol) {
		(str(':') >> match('[^()\s]').repeat).as(:symbol) >> space?
	}

	rule(:space) {
		match('\s').repeat(1)
	}

	rule(:space?) {
		space.maybe
	}
end

end
