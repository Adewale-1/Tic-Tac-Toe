
function [] =  Recall_Tic(~,~) 
    clc
    clear
    close(allchild(0))
    close all
    
    Ohio_State_Color = '#0072BD';
    Ohio_State_Color_red = '#CE0F3D';
    
    PlayerSelection = figure('Units','normalized','Color',Ohio_State_Color_red, ...
        'Position',[.25,.25,.5,.5],'MenuBar','none','NumberTitle','off', ...
        'Pointer','hand','Visible','on');
    
    
    % This create a text field to allows user understand what to do
    Text = uicontrol('Style','text','Units','normalized','Position', ...
        [.125,.8,.75,.125],'String','Tic-Tac-Toe', ...
        'BackgroundColor',Ohio_State_Color_red,'FontSize',25,'FontWeight','bold', ...
        'ForegroundColor','k');
        
    % IMAGE_multiplayer = imread('pvp.png');
    % This create a button to allows user Game mode selection
    
    % UserData gets the information of the button clicked by the user
    PLAY = uicontrol('Style','pushbutton', ...
        'Units','normalized','Position',[.380,.25,.25,.4], ...
        'UserData','PLAY','String','PLAY','FontSize',22,'FontWeight','bold','Callback',{@difficulty});
    
    
    % This create a button to allows user Game mode selection
    % Note:Callback function makes the button perform a specific function once
    % clicked
    % UserData gets the information of the button clicked by the user
    
    
    
    
    
    
    function [] =  difficulty(~,~)
        
    
    
            PLAY.Enable = 'off';
    
            Player1text = uicontrol("Style",'text','String','PLAYER 1 NAME:', ...
               'Units','normalized','Position',[.0625  .125  .2  .0625], ...
               'FontSize',14,'FontWeight','bold');
    %      edit allows for text input
            Player1 = uicontrol("Style",'edit','Units','normalized','Position', ...
               [.2625  .125  .2  .0625],'FontSize',14,'FontWeight','bold');
    
            Player2text = uicontrol("Style",'text','String','PLAYER 2 NAME:', ...
               'Units','normalized','Position',[.531255 .125  .2  .0625], ...
               'FontSize',14,'FontWeight','bold');
    %      edit allows for text input
            Player2 = uicontrol("Style",'edit','Units','normalized','Position', ...
               [.731255  .125  .2  .0625],'FontSize',14,'FontWeight','bold');
    
    %      This allows player1 and player2 names to be saved along with the game mode(multiplayer)     
            Player1.Callback = {@StartButton,'PLAY',Player1,Player2};
            Player2.Callback = {@StartButton,'PLAY',Player1,Player2};
    
    
    end
    



    function StartButton(~,~,Mode,Player1,Player2)
    

    

        P2 = Player2.String;

    
        P1 = Player1.String;
    
    
    
    
        if ~isempty(P1) && ~isempty(P2)
    
            Start_Game = uicontrol("Style","pushbutton",'Units','normalized','Position',[.35,.025,.3,.0625], ...
                'String','START','FontSize',20,'FontWeight','bold','BackgroundColor',[0 .5 0]);
            Start_Game.Callback = {@Tic_Tac_Toe,Mode,P1,P2};
    
        end
    
    end



end