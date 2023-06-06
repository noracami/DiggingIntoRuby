module ShareHub
  class Topic
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
      @comments.map.with_index do |comment, idx|
        {
          content: comment,
          no: idx+1
        }
      end
    end
  end
end
