module StoriesHelper
  def author_info(story)
    name = story.name.present? ? story.name : 'Анонимно'
    age = story.age.present? ? ", #{story.age}" : ''
    city = story.city.present? ? ", #{story.city}" : ''
    name + age + city
  end
end
