function retv = gradApprox(theta, EPSILON)
  retv = (J(theta + EPSILON) - J(theta - EPSILON)) / (2 * EPSILON)
endfunction