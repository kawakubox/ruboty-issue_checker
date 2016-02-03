require 'octokit'

module Ruboty
  module IssueChecker
    module Actions
      class Patrol < Ruboty::Actions::Base
        def call
          client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
          message.reply ENV['GITHUB_TOKEN']
          if client.repository?(message[:repo])
            issues = client.list_issues(message[:repo])
            issues.each do |issue|
              next if issue.pull_request
              p issue.html_url unless issue.assignee
              p issue.html_url unless issue.milestone
            end
          else
            message.reply("Repository(#{message[:repo]}) is not found.")
          end
        end
      end
    end
  end
end
