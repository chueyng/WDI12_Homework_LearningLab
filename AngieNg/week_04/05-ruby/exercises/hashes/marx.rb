bros = %w{Groucho Harpo Chico Zeppo}

groucho = {
  :plays => 'guitar',
  :enjoys => 'cigars'
}

harpo = {
  :plays => 'harp',
  :enjoys => 'hijinx'
}

chico = {
  :plays => 'piano',
  :enjoys => 'infidelity'
}

# Alternative way 
enjoys = {
  'groucho' => 'cigars',
  'harpo' => 'hijinx',
  'chico' => 'infidelity'
}

plays = {
  'groucho' => 'guitar',
  'harpo' => 'harp',
  'chico' => 'piano'
}

require 'pry'
binding.pry