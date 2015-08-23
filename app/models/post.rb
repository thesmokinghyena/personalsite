class Post < ActiveRecord::Base
  validates :author, presence: true

  validates_length_of :title, within: 10..70,
    too_long: 'Try to keep your title short. Brevity is the soul of wit.',
    too_short: 'You need a longer title. Be interesting!'


  validates_length_of :content, within: 1..140,
    too_short: 'Hey, you gotta write SOMETHING here!',
    too_long: 'Nobody wants to read an essay, esé! 140 characters or less.'

end
