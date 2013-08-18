require 'date'

Sequel.extension :pg_array

Talk.dataset.destroy
Conference.dataset.destroy
Speaker.dataset.destroy

rubyconfar2013 = Conference.create(:title => 'RubyConf Argentina 2013',
  :description => 'RubyConf Argentina is a regional conference about Ruby and related technologies.',
  :image_url => '/images/conferences/rubyconfar-2013.png',
  :start_date => Date.new(2013,11,27), :end_date => Date.new(2013,11,28),
  :place => 'Ciudad Cultural Konex, AR', :place_url => 'http://goo.gl/maps/MIWv7',
  :twitter => 'RubyConfAr', :url => 'http://www.rubyconfargentina.org/',
  :tags => ['ruby', 'rails'])

startechconf2013 = Conference.create(:title => 'StarTechConf 2013',
  :description => 'The conference that brings together world renowned stars in software development and local tech experts to talk about HTML5, CSS3, JavaScript, Ruby, Java, Python, Mobile and more.',
  :image_url => '/images/conferences/startechconf-2013.png',
  :start_date => Date.new(2013,10,25), :end_date => Date.new(2013,10,26),
  :place => ' USM Campus San Joaquin, CL', :place_url => 'http://goo.gl/maps/G0O7G',
  :twitter => 'startechconf', :url => 'http://www.startechconf.com/',
  :tags => ['ruby', 'python', 'java', 'mobile', 'javascript', 'html5', 'css3'])

rubyconfar2012 = Conference.create(:title => 'RubyConf Argentina 2012',
  :description => '¡El mayor evento Ruby de habla hispana, donde nos reunimos a compartir y aprender sobre las últimas tecnologías!',
  :image_url => '/images/conferences/rubyconfar-2012.png',
  :start_date => Date.new(2012,10,19), :end_date => Date.new(2012,10,20),
  :place => 'Paseo La Plaza, AR', :place_url => 'http://goo.gl/maps/z0vIo',
  :twitter => 'RubyConfAr', :url => 'http://2012.rubyconfargentina.org/',
  :tags => ['ruby', 'rails'])

soveran = Speaker.create(:name => 'Michel Martens',
  :image_url => 'https://si0.twimg.com/profile_images/3001078658/42ffd0a3f827cafc6d8ab6c4b08043b3_bigger.jpeg',
  :twitter => 'soveran')

smallTools = Talk.create(:title => 'The Power of Small Tools',
  :video_url => 'https://vimeo.com/63628137',
  :date => Date.new(2012,10,19),
  :speaker_id => soveran.id,
  :conference_id => rubyconfar2012.id)

jano = Speaker.create(:name => 'Jano González',
  :image_url => 'https://si0.twimg.com/profile_images/3761141739/75eb7a0c6b5f1a9f7da287e1f92d351c_bigger.jpeg',
  :twitter => 'janogonzalez')

interfaces = Talk.create(:title => '¿Dónde están mis interfaces?',
  :video_url => 'https://vimeo.com/62132088',
  :date => Date.new(2012,10,19),
  :speaker_id => jano.id,
  :conference_id => rubyconfar2012.id)