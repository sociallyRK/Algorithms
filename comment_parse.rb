post_results = {post: "http://www.reddit.com",
                title: "sharing links",
                comments: [
                            {
                                name: "Jane doe",
                                comment: "just like this site"
                            },

                            {
                                name: "John doe",
                                comment: "Yeah, soo fun",
                                comments: [
                                            {
                                                name: "Bob doe",
                                                comment: "agreed! cannot stop clicking!"
                                            },

                                            {
                                                name: "Kelly doe",
                                                comment: "carpel tunnel cannot from clicking!"
                                            },

                                            {
                                                name: "Chris doe",
                                                comment: "Is it better though?",
                                                comments: [
                        {name: "Jane doe",
                        comment: "yes, it is."}
                      ]
                      }
                  ]
                  },
                  {name: "Peter doe",
                  comment: "lame!",
                  comments: [
                    {name: "Sam doe",
                      comment: "hater's gonna hate"}
                  ]
                  }

]}

#a giant hash, which has hashes with keys name, comment, and maybe comments, if it does, then it has an array of hashes

def print_comment(comments)
  # print your comments
    for comment in comments #for each hash in the the array of comments
        if comment.has_key?(:comments) #if the hash we're on has a key called comments, then recursively go through again
            print comment[:name]
            print ": "
            puts comment[:comment]
            print_comment(comment[:comments])
        else #comment does not have nested comments
            print comment[:name]
            print ": "
            puts comment[:comment]
        end
    end
end

def print_comment(comments)
    puts comments.flatten
  # print your comments
    # for comment in comments #for each hash in the the array of comments
    #     if comment.has_key?(:comments) #if the hash we're on has a key called comments, then recursively go through again
    #         print comment[:name]
    #         print ": "
    #         puts comment[:comment]
    #         print_comment(comment[:comments])
    #     else #comment does not have nested comments
    #         print comment[:name]
    #         print ": "
    #         puts comment[:comment]
    #     end
    # end
end
print_comment(post_results[:comments])


# def print_post(post_results)
#  # print your post
#  puts post_results[post:]
#  puts post_results[title:]
#  print_comment[post_results[comments:]]
# end

 # print_post(post_results)