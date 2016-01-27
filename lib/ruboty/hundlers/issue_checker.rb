require 'ruboty/issue_checker/actions/patrol'

module Ruboty
  module hundlers
    class IssueChecker < Base
      on /issue patrol (?<repo>.*)\z/, name: 'patrol', description: 'Github issue patrol.'

      def patrol(message)
        Ruboty::IssueChecker::Actions::Patrol.new(message).call
      end
    end
  end
end
