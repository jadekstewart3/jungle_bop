# Problem Description: You are given an array cost where cost[i] represents the cost of the i-th step on a staircase. 
# You can either climb one or two steps at a time. 
# The goal is to find the minimum cost to reach the top of the staircase.

def min_cost_climbing_stairs(cost)
  n = cost.length
  # sets size of dp
  dp = Array.new(n, 0)
  # array used to store the minimum cost to reach the top

  dp[0] = cost[0]
  dp[1] = cost[1]
  # base cases - explicitly set the first two values of these steps because you have to pay that cost
  
  #calc min cost for remaining steps starting from step two
  (2...n).each do |i|
    dp[i] = cost[i] + [dp[i - 1], dp[i - 2]].min
  end
  #dp[i] represents the min cost to reach step i
  # add the cost of the current step to the min of the previous step and the step before that
  [dp[n - 1], dp[n - 2]].min
  #The final step is to return the minimum cost of reaching either the top step (dp[n - 1]) or the step just before it (dp[n - 2]).
end