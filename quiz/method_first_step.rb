# 次の動作をする F1 class を実装する
# - 1. "def"キーワードを使わずにF1クラスにhelloインスタンスメソッドを定義すること
#      戻り値は "hello" であること
# - 2. "def"キーワードを使わずにF1クラスにworldクラスメソッドを定義すること
#      戻り値は "world" であること
# - 3. 定義していないメソッドを実行したときにエラーを発生させず、"NoMethodError"という文字列を返すこと
# - 4. `F1.new.respond_to?(定義していないメソッド名)` を実行したときにtrueを返すこと
#
# 次の動作をする F2 classを実装する
# - 1. 実行するとhiインスタンスメソッドを定義するadd_hiメソッドを定義すること

class F1
	define_method :hello do
		"hello"
	end

	define_singleton_method :world do
		"world"
	end

	def method_missing(method, *args)
		"NoMethodError"
	end

	def respond_to_missing?(method, include_private = false)
		true
	end
end

class F2
	def add_hi
		def hi
		end
	end
end

f1 = F1.new
puts f1.hello
puts f1.world
puts f1.aaa
puts f1.respond_to?(:hello)
puts f1.respond_to?(:aaa)

