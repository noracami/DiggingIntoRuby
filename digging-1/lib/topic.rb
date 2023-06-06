require 'serial'

module ShareHub
  class Topic
    include ShareHub::Serial

    attr_accessor *%i[name approve category comments]
    def initialize(name:)
      @name = name
      @approve = false
      @category = 'common'
      @comments = []
    end

    def approve_topic
      @approve = true
    end

    def add_comment(comment)
      @comments << comment
    end

    def list_comments
      my_list_comments(@comments)
    end
  end
end
