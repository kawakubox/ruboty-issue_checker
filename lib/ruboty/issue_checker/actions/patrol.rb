require 'octokit'

module Ruboty
  module IssueChecker
    module Actions
      class Patrol < Ruboty::Actions::Base
        def call
          client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
          message.reply ENV['GITHUB_TOKEN']
          if client.repository?(message[:repo])
            repo = client.list_issues(message[:repo])
            message.reply(repo.to_s)
          else
            message.reply("Repository(#{message[:repo]}) is not found.")
          end
        end
      end
    end
  end
end
