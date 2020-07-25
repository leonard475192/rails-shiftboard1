class BoardUser < ApplicationRecord
    belong_to :account
    has_many :shift_board
    has_one :admin_user

    validate :display_name, presense: {message:'は、必須項目です。'}
    validate :store_id, only_integer: {store_id:'整数を入力してください。'}
end
end
