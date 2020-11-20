describe 'creating bears table' do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
  end

  it "creates a bears table with a name field" do
    expect{@db.execute("SELECT name FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a age field" do
    expect{@db.execute("SELECT age FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a sex field" do
    expect{@db.execute("SELECT sex FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a color field" do
    expect{@db.execute("SELECT color FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a temperament field" do
    expect{@db.execute("SELECT temperament FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with an alive field" do
    expect{@db.execute("SELECT alive FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with an id as a primary key" do
    expect(@db.execute("PRAGMA table_info(bears);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
  end

  CREATE TABLE bears (
  id INTEGER,
  name TEXT,
  age INTEGER,
  gender TEXT,
  color TEXT,
  temperament TEXT,
  alive BOOLEAN,

  PRIMARY KEY (id)
); 
end