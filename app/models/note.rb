class Note < ActiveRecord::Base;
  belongs_to :appointment
  # when saving a Note, this will convert :contents to a JSON string before storing it in DB
  # serialize :contents, coder: JSON

  validates :appointment, presence: true 
  validates :state, presence: true, inclusion: { in: %w[Draft Signed] }
  validates :contents, presence: true
  # we are using this in update so that contents will not be updated if the Note object is already in a SIGNED_STATE
  validate :note_already_signed, on: :update

  #define constants
  DRAFT_STATE = 'Draft'
  SIGNED_STATE = 'Signed'

  # Schema:
  #
  # id: number (primary key)
  # appointment_id: number (foreign key)
  # state: text
  # contents: json

  private

  def note_already_signed
    if state == SIGNED_STATE
      errors.add(:state, "Note is already signed and cannot be updated")
    end
  end
end
