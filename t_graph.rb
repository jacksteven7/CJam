require './Graphalg' 
require 'byebug'
  
gr = Graphalg.new
gr.add_edge("a", "c", 7)
gr.add_edge("a", "e", 14)
gr.add_edge("a", "f", 9)
gr.add_edge("c", "d", 15)
gr.add_edge("c", "f", 10)
gr.add_edge("d", "f", 11)
gr.add_edge("d", "b", 6)
gr.add_edge("f", "e", 2)
gr.add_edge("e", "b", 9)
byebug
gr.distance_from("a","b")
gr.print_result
