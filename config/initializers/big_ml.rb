BigML.configure do |c|
  c.username = 'MatthewVasseur'
  c.api_key  = '7897dac38dbc1c1703e5ca60353e0216575d519c'
  c.dev_mode = true
  #c.debug   = true # Raises errors for bad requests
end

file_path = "iris.csv"
source = BigML::Source.create(file_path)
dataset = source.to_dataset
