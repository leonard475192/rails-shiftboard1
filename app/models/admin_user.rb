class AdminUser < ApplicationRecord
    belong_to :admin_account
    has_many :shift_board
    has_many :board_user

    validate :store_name, presense: {message:'は、必須項目です。'}
    validate :wage, only_integer: {wage:'整数を入力してください。'}
end
