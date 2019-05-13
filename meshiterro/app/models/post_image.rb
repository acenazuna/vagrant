class PostImage < ApplicationRecord

	# アソシエーション機能（モデル間の関係性を機能として持たせること）
	# has_manyの逆。
	# PostImageモデルからuser_idに紐づいてUserモデルを参照できることを指している。
	# PostImageモデルに紐づくのは、1つのUserモデルなので、単数系になる。
	belongs_to :user

	# refileを使用する上でのルール
	# _idは含めない
	attachment :image
end
