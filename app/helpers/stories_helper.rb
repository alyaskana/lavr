module StoriesHelper
  def author_info(story)
    name = story.name ? story.name : 'Анонимно'
    age = story.age ? ", #{story.age}" : ''
    city = story.city ? ", #{story.city}" : ''
    name + age + city
  end
end
