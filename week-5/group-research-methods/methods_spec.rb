require_relative "my_solution"


describe 'PERSON 3: my_array_sorting_method!' do
  let(:i_want_pets) { ["I", "want", 3, "pets", "but", "only", "have", 2 ] }

  it "converts sorts all elements alphabetically without altering changing data" do
    expect(my_array_sorting_method(i_want_pets)).to eq [2, 3, "I", "but", "have", "only", "pets", "want"]
  end

  it "operates non-destructively" do
     expect(my_array_sorting_method(i_want_pets).object_id).to_not eq(i_want_pets.object_id)
  end

end

describe 'PERSON 3: my_hash_sorting_method!' do
  let(:my_family_pets_ages) {{"Evi" => 6, "Ditto" => 2, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 5, "Annabelle" => 0}}

  it "returns an array that orders each animal first based on age (youngest to oldest)" do
    expect(my_hash_sorting_method(my_family_pets_ages)).to eq([["Annabelle", 0], ["Ditto", 2], ["Hoobie", 3], ["Bogart", 4], ["Poly", 5], ["Evi", 6], ["George", 12]])
  end

  it "operates non-destructively" do
     expect(my_hash_sorting_method(my_family_pets_ages).object_id).to_not eq(my_family_pets_ages.object_id)
  end

end