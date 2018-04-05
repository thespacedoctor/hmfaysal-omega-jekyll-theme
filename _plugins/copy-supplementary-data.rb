module Jekyll
  Jekyll::Hooks.register :site, :post_write do |site|
    build = site.config["destination"]
    site.posts.docs.each {|post| 
      source = post.path.split("/")[0..-2].join("/")
      # SKIP POSTS THAT ARE SINGLE FILES NOT DIRECTORIES
      if source.split("/")[-1] == "_posts"
        next
      end
      destination = post.url.split("/")[0..-2].join("/")
      print("source "+source+"\n") 
      print("destination "+build+destination+"\n\n") 
      Dir.entries(source).each {|item| 
        if not [".","..",".DS_Store"].include?(item)
            src = source+"/"+item
            des = build+destination+"/"+item
            FileUtils.copy_entry(src, des)
        end
      }
    }
    # site.static_files.each {|item| puts "I got #{item.path}" }
  #   site.posts.each {|item| puts "POST TITLE #{item.title}\nPOST EXTRACT #{item.excerpt}\n\n" }

  #   puts "\n\nPAGES\n\n"

  #   site.pages.each {|item| 
  #   if item.path.include? ".md"
  #     puts "PAGE TITLE #{item.name}\n\nPAGE EXCERPT #{item.excerpt}"
  #   end
  # }
    # site.pages.each {|item| puts "POST TITLE #{item.name}\n\n" }
  end
end
