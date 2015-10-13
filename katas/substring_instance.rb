def solution(full_text, search_text)
  mychars = full_text.chars
  count = 0
  while mychars.length > 0
   text = mychars.join
   if text.start_with?(search_text)
     count += 1 
   end
   mychars.shift
  end
  count
end

def solution2(full_text, search_text)
  full_text.scan(search_text).size
end

c = solution('aa_bb_cc_dd_bb_e','bb')
puts "Solution: #{c}"

c = solution2('aaabbbcccc','bbb')
puts "Solution: #{c}"
