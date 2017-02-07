FactoryGirl.define do
  factory :parser do
    initialize_with do
      new(file: File.read(File.join(Rails.root, '/spec/fixtures/files/test.txt')))
    end
  end
end