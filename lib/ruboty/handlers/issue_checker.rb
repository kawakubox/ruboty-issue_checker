require 'ruboty/issue_checker/actions/patrol'

module Ruboty
  module Handlers
    class IssueChecker < Base
      on /issue patrol (?<repo>.*)\z/, name: 'patrol', description: 'Github issue patrol.'
      on /hoge\z/, name: 'hoge', description: 'Hoge.'

      def patrol(message)
        Ruboty::IssueChecker::Actions::Patrol.new(message).call
      end

      def hoge
        'Hoge Hoge.'
      end
    end
  end
end
