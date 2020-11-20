describe 'populating the bears table' do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
    @sql_runner.execute_insert_file
  end

  it 'has 8 bears' do
    expect(@db.execute("SELECT COUNT(*) FROM bears;").flatten[0]).to eq(8)
  end
  
  it 'has an unnamed bear' do
    expect(@db.execute("SELECT COUNT(*) FROM bears WHERE name IS NULL;").flatten[0]).to eq(1)
  end

  INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Mr. Chocolate", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Rowdy", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Tabitha", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Sergeant Brown", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Melissa", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Grinch", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ("Wendy", "20", "M", "Brown", "Chill", "True");
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES (NULL, "20", "M", "Brown", "Chill", "True");

end
