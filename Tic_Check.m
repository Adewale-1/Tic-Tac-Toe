function win = Tic_Check(board)

   win = 0;

   for i = 1:1:3
       for k = 1
           if board(i,k) == 3 && board(i,k+1) == 3 && board(i,k+2) == 3
%                player1 = 1;
               win = 1;
               break
         
           elseif board(i,k) == 2 && board(i,k+1) == 2 && board(i,k+2) == 2 
%                player2 = 1;
               win = 2;
               break
           end
       end
   end


   for k = 1:1:3
       for i = 1
           if board(i,k) == 3 && board(i+1,k) == 3 && board(i+2,k) == 3 
%                player1 = 1;
               win = 1;
               break
           elseif board(i,k) == 2 && board(i+1,k) == 2 && board(i+2,k) == 2 
%                player2 = 1;
               win = 2;
               break
           end
       end
   end

  for k = 1
      if board(3,k) == 3 && board(2,k+1) == 3 && board(1,k+2) == 3 
%                player1 = 1;
               win = 1;
               break
      elseif board(3,k) == 2 && board(2,k+1) == 2 && board(1,k+2) == 2 
%                player2 = 1;
               win = 2;
               break
      elseif board(1,k) == 3 && board(2,k+1) == 3 && board(3,k+2) == 3 

               win = 1;
               break
      elseif board(1,k) == 2 && board(2,k+1) == 2 && board(3,k+2) == 2 
%                player2 = 1;
               win = 2;
               break

      end
  end
% 



end