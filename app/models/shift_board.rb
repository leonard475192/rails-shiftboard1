class ShiftBoard < ApplicationRecord
    belongs_to: board_user
    belongs_to: admin_user

    # validate: 
end
