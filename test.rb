  comments_text = doc.search('.comment > font:first-child').map { |font| font.inner_text} 
  comments_user = doc.search('.comhead > a:first-child').map { |link| link.inner_text}
  comments_time = doc.search('.comhead > a:nth-child(2)').map { |link| link.inner_text}