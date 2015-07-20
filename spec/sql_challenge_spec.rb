describe "SQL Challenge" do

  it 'creates a table called cats' do 
    your_answer = "CREATE TABLE cats;"
    expect(your_answer).to eq(answer_1)
  end

  it 'returns all of the data in the cats table' do
    your_answer = "SELECT * FROM cats;"
    expect(your_answer).to eq(answer_2)
  end 

  it 'returns the count of records in the cats table' do
    your_answer = "SELECT COUNT(*) FROM cats;"
    expect(your_answer).to eq(answer_3)
  end 

  it 'returns the name of the cat with the id of 2' do
    your_answer = "SELECT name FROM cats WHERE id=2;"
    expect(your_answer).to satisfy {|s| answer_4.include?(s) }
  end 

  it "finds Maru by name and updates her age to 7" do 
    your_answer = 'UPDATE cats SET age=7 WHERE name="Maru";'
    expect(your_answer).to satisfy {|s| answer_5.include?(s) }
  end

  it 'selects all of the data from the cats table and orders by age' do 
    your_answer = "SELECT * FROM cats ORDER BY age;"
    expect(your_answer).to eq(answer_6)
  end

  it 'deletes the cat with an id of 4 from the cats table' do 
    your_answer = "DELETE FROM cats WHERE id=4;"
    expect(your_answer).to satisfy {|s| answer_7.include?(s) }
  end

  it 'deletes the cats table' do 
    your_answer = "DROP TABLE cats;"
    expect(your_answer).to eq(answer_8)
  end
  
end