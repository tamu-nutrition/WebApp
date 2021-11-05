# Requests model holds the student requests that are pending
# frozen_string_literal: true

# Model contains information needed to identify a student
class Request < ApplicationRecord
  belongs_to :student, foreign_key: :UIN
end
