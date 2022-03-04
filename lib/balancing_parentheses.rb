require_relative './stack'

def balancing_parentheses string
    stack = Stack.new

    string.chars.each do |c|
        # Check to see if last stack is open "(" && c is closed ")"
        # If true, remove the last stack
        if stack.peek == '(' && c == ')' then stack.pop
        # If false, add c to stack
        else stack.push(c)
        end
    end
    # stack includes parentheses with missing pairs, so find length to see how many is needed
    stack.size
end


