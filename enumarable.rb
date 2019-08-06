module Enumerable
    def my_each
      # your code here
      i=0
      while i<self.length
        yield(self[i])
        i+=1
      end
    end

    def my_each_with_index
        # your code here
        i=0
        while i<self.length
          yield(i,self[i])
          i+=1
        end
      end

    def my_select
        result=[]
        self.my_each{ |element| result << element if yield(element)}
    end  
    def my_all
        flag=true
        self.my_each{ |element| flag=flag && yield(element)}
        puts flag
    end  
  end

  arr=[1,2,3,4]
  arr.my_each{|element| puts element}
  arr.my_each_with_index{|index,element| puts "index: #{index} for #{element}"}
  [2,2,2,4,8].my_all { |num|  num.even?  }