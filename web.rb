require_relative 'componentes'

text_buttons = ['ver mi página', 'ir a:', 'comer', 'reclamos', 'jugar']

my_buttons = botones(text_buttons)

index = head() + my_buttons + foot()

File.write('./web_index.html', index)
