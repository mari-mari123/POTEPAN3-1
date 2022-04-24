require "csv"

class Memo
  def initialize
    puts "1(新規メモを作成)2(既存のメモを編集する)"
    @user_option = gets.to_i
    puts "拡張子を除いたファイルを入力してください"
    @file_name = gets.to_s.chomp
    p "メモしたい内容を入力してください"
    p "完了したらCtrl+Dを押してください"
    @memo_type = readlines(chomp: true)
  end
  
  def memo_option 
    if @user_option == 1
      f = CSV.open("#{@file_name}.csv", "w")
      f.puts (@memo_type)
    elsif @user_option == 2
      f = CSV.open("#{@file_name}.csv", "a")
      f.puts (@memo_type)
    end
  end
  
end

user_memo = Memo.new
user_memo.memo_option
