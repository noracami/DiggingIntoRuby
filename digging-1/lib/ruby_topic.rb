require 'topic'

module ShareHub
  class RubyTopic < Topic
    def initialize(name:)
      @category = 'ruby'
      super(name:)
    end

    def add_comment(comment)
      @comments << "ruby: " + comment.to_s
    end
  end
end
