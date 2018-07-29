N , D = gets.strip.split(' ').map(&:to_i)
n = gets.strip.split(' ')
p n[D % N,N] + n[0 , D % N]