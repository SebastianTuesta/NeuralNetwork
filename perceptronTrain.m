function W0_W = perceptronTrain (n, W0, W, X0, S, T, iter)
  %% Parameters
  % n = rate learning
  % W0 = bias
  % W = neuron weights
  % X0 = -1
  % S = input values trainning
  % T = output values trainning
  % iter = max number of iterations
 
  converged = false;
    
  for k = 1:iter
    if converged
      break;
    endif
    
    converged = true;
    
    
      
    %Number of Input Unit
    for i = 1: length(S)
      X = [X0, S(i,:)];
      
      U = [W0 W]*X';
     
      Y = arrayfun(@sign, U );
       
      for j = 1:length(Y)
        if  Y(j) != T(i,j)
          W(j,:) = W(j,:) + n*(T(i,j)- Y(j))*S(i,:);
          W0(j,:) = W0(j,:) + n*(T(i,j)- Y(j))*X0;
          converged = converged & false;
        endif   
      endfor   
          
    endfor
  endfor 
  
  
  W0_W = [W0 W];
  
endfunction

function y = sign(u)
    if (u>=0)
      y = 1;
    else
      y = 0;
    endif
endfunction
