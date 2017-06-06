# do~endを用いる場合は戻り値確認用のpを使ってはいけない
# p (1..10).inject(0) do |sum, i|
#   sum + 1
# end

                    # => nil

# StandardErrorを継承したエラーは捕捉される
class MyError1 < StandardError
end

begin
  raise MyError1
rescue => e
  puts 'StandardError!!'
  puts "#{e}"
end
puts "end"
# Exceptionを継承したエラーは捕捉されない
# class MyError2 < Exception
# end

# begin
#   raise MyError2
# rescue => e
#   p "Exception!!"
# end
# puts "end"
# exitはSystemExit例外を発生させる
# rescueしないと処理が終了する
begin
  exit
rescue SystemExit
  p 'SystemExit'
end
p 'end'
# >> StandardError!!
# >> MyError1
# >> end
# >> "SystemExit"
# >> "end"
