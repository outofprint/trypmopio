Sequel.migration do
  change do
    create_table :links do
      primary_key :id
      String :url
      index :url, unique: true
    end
  end
end
