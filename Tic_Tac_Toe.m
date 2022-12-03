
function Tic_Tac_Toe(~,~,mode_selected,P1,P2)


        Tic = simpleGameEngine('tictactoe.png',86,101,5);
        size = 3;
        board = ones(size,size);
        player = 3;
        turn = 1;
        gameOver = false;
%         message = 'Game is tied.Try again';
        message = 'TIC-TAC-TOE';
        r = 1;
        c = 1;


        while gameOver == false
            drawScene(Tic,board)
            title({message},'FontSize',15,'Fontname','Times new roman');
            [r,c] = getMouseInput(Tic);
            while board(r,c) ~= 1
                [r,c]= getMouseInput(Tic);
            end
    
            board(r,c) = player;
            player = 5 - player;

      %     Check if the win function is met: gameOver = ....     
            win = Tic_Check(board);

            if win == 1
                gameOver = true;
                message = sprintf('Congratulations! %s won',P1);
%                     title({message},'FontSize',15,'Fontname','Times new roman');
                Main = figure('Position',[200 300 700 350],'Color','#CE0F3D','MenuBar','none','NumberTitle','off','Pointer','hand');
                Text = uicontrol('Style','text','Units','normalized','Position',[.125,.8,.75,.125],'String',message, ...
                                     'BackgroundColor','#CE0F3D','FontSize',22,'FontWeight','bold','ForegroundColor','k');
                    
                Text2 = uicontrol('Style','text','Units','normalized','Position',[.100,.5,.75,.125],'String','Do you want to play again?', ...
                                     'BackgroundColor','#CE0F3D','FontSize',22,'FontWeight','bold','ForegroundColor','k');

                NO = uicontrol('Style','pushbutton','Units','normalized','Position',[.250,.25,.25,.15], ...
                        'UserData','NO','String','NO','FontWeight','bold','FontSize',20,'Callback',{@End});
                    
                    
                YES = uicontrol('Style','pushbutton','Units','normalized','Position',[.540,.25,.25,.15], ...
                    'UserData','YES','String','YES','FontWeight','bold','FontSize',20,'Callback',{@Recall_Tic});


            elseif win == 2
                gameOver = true;

                message = sprintf('Congratulations! %s won',P2);
%                     title({message},'FontSize',15,'Fontname','Times new roman');
                Main = figure('Position',[200 300 700 350],'Color','#CE0F3D','MenuBar','none','NumberTitle','off','Pointer','hand');
                Text = uicontrol('Style','text','Units','normalized','Position',[.125,.8,.75,.125],'String',message, ...
                                     'BackgroundColor','#CE0F3D','FontSize',22,'FontWeight','bold','ForegroundColor','k');
                    
                Text2 = uicontrol('Style','text','Units','normalized','Position',[.100,.5,.75,.125],'String','Do you want to play again?', ...
                                     'BackgroundColor','#CE0F3D','FontSize',22,'FontWeight','bold','ForegroundColor','k');

                NO = uicontrol('Style','pushbutton','Units','normalized','Position',[.250,.25,.25,.15], ...
                        'UserData','NO','String','NO','FontWeight','bold','FontSize',20,'Callback',{@End});
                    
                    
                YES = uicontrol('Style','pushbutton','Units','normalized','Position',[.540,.25,.25,.15], ...
                    'UserData','YES','String','YES','FontWeight','bold','FontSize',20,'Callback',{@Recall_Tic});
                
            end


        end

        drawScene(Tic,board)



end


