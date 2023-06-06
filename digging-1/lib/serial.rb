module ShareHub
  module Serial
    def my_list_comments(resources)
      resources.map.with_index do |comment, idx|
        {
          content: comment,
          no: idx+1
        }
      end
    end
  end
end
