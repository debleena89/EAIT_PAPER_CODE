integer n = 0;

process P
     integer regP = 0;
p1:  load n into regP
p2:  increment regP
p3:  store regP into n
p4:  end


process Q
     integer regQ = 0;
q1:  load n into regQ
q2:  increment  regQ
q3:  store regQ into n
q4:  end

