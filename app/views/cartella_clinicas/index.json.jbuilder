json.array!(@cartella_clinicas) do |cartella_clinica|
  json.extract! cartella_clinica, :id, :generalità, :anamnesi, :obiettivo, :diagnosi, :terapia, :esiti
  json.url cartella_clinica_url(cartella_clinica, format: :json)
end
