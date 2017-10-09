# seed testament
Testament.find_or_create_by(name: 'Old Testament')
Testament.find_or_create_by(name: 'New Testament')

# seed books
books_data = JSON.parse(File.read(Rails.root.join('lib/assets/books.json')))
short_name = books_data['short_name']
english = books_data['english']
malayalam = books_data['malayalam']
short_name.each_with_index do |name, index|
  Book.find_or_create_by(short_name: short_name[index], english: english[index], malayalam: malayalam[index])
end

# seed malayalam bible
malayalam_bible_data = JSON.parse(File.read(Rails.root.join('lib/assets/malayalam.json')))
malayalam_bible_data['Book'].each do |book|
  book['Chapter'].each do |chapter|
    chapter['Verse'].each do |verse|
      Malayalam.find_or_create_by(verse_id: verse['Verseid'], verse: verse['Verse'])
    end
  end
end