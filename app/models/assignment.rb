class Assignment < ApplicationRecord
  belongs_to :lesson

  def self.names
    [
      ['Daily A', 'Daily A'],
      ['Daily B', 'Daily B'],
      ['ABC & Calendar ', 'ABC & Calendar'],
      ['Kanji English', 'Kanji English'],
      ['Q&A Set A', 'Q&A Set A'],
      ['Pera-pera Daruma', 'Pera-pera Daruma'],
      ['Q&A Set B', 'Q&A Set B'],
      ['Opposites A', 'Opposites A'],
      ['Tryalogs', 'Tryalogs'],
      ['Opposites B', 'Opposites B']
    ]
  end
end
