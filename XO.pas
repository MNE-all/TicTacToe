uses abcbuttons, graphABC;


type
  mas = array [0..2, 0..2] of byte;

var
  field: mas;

var
  hod, player: integer;

  {1}var
    a := new ButtonABC(50, 50, 30, '', clwhite);
  
  {2}var
    b := new ButtonABC(90, 50, 30, 30, '', clwhite);
  
  {3}var
    c := new ButtonABC(130, 50, 30, '', clwhite);
  
  {4}var
    d := new ButtonABC(50, 90, 30, '', clwhite);
  
  {5}var
    e := new ButtonABC(90, 90, 30, '', clwhite);
  
  {6}var
    f := new ButtonABC(130, 90, 30, '', clwhite);
  
  {7}var
    g := new ButtonABC(50, 130, 30, '', clwhite);
  
  {8}var
    h := new ButtonABC(90, 130, 30, '', clwhite);
  
  {9}var
    l := new ButtonABC(130, 130, 30, '', clwhite);
  
  function replay():integer;
  begin
    //var replay:= new ButtonABC(60,175,90, 'replay?', clwhite);  
  end;
  
  procedure destroy();
  begin
    a.Destroy;
    b.Destroy;
    c.Destroy;
    d.Destroy;
    e.Destroy;
    f.Destroy;
    g.Destroy;
    h.Destroy;
    l.Destroy;
  end;
  
  function PlCh(hod: integer): integer;
  begin
    PlCh := (hod mod 2) + 1;
    Window().Caption := ('XO: player=' + ((hod mod 2) + 1));
  end;
  
  procedure Draw_XO(player, x: integer);
  begin
    if player = 1 then
    begin
      case x of
        50: TextOut(54, 47, 'X');
        501: TextOut(54, 87, 'X');
        502: TextOut(54, 127, 'X');
        90: TextOut(94, 47, 'X');
        901: TextOut(94, 87, 'X');
        902: TextOut(94, 127, 'X');
        130: TextOut(134, 47, 'X');
        1301: TextOut(134, 87, 'X');
        1302: TextOut(134, 127, 'X');
      end;
    end
    else
    begin
      case x of
        50: TextOut(53, 47, 'O');
        501: TextOut(53, 87, 'O');
        502: TextOut(53, 127, 'O');
        90: TextOut(93, 47, 'O');
        901: TextOut(93, 87, 'O');
        902: TextOut(93, 127, 'O');
        130: TextOut(133, 47, 'O');
        1301: TextOut(133, 87, 'O');
        1302: TextOut(133, 127, 'O');
      end;
    end;
  end;
  
  procedure GE(field: mas);
  begin
    if (field[0, 0] = 1) and (field[1, 0] = 1) and (field[2, 0] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(65, 40, 65, 170); replay; end;
    if (field[0, 1] = 1) and (field[1, 1] = 1) and (field[2, 1] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(105, 40, 105, 170); replay; end;
    if (field[0, 2] = 1) and (field[1, 2] = 1) and (field[2, 2] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(145, 40, 145, 170); replay; end;
    if (field[0, 0] = 1) and (field[0, 1] = 1) and (field[0, 2] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(40, 65, 170, 65); replay; end;
    if (field[1, 0] = 1) and (field[1, 1] = 1) and (field[1, 2] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(40, 105, 170, 105); replay; end;
    if (field[2, 0] = 1) and (field[2, 1] = 1) and (field[2, 2] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(40, 145, 170, 145); replay; end;
    if (field[0, 0] = 1) and (field[1, 1] = 1) and (field[2, 2] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(40, 40, 170, 170); replay; end;
    if (field[0, 2] = 1) and (field[1, 1] = 1) and (field[2, 0] = 1) then begin Window().Caption := ('player 1 WIN'); destroy; Line(170, 40, 40, 170); replay; end;
    
    if (field[0, 0] = 2) and (field[1, 0] = 2) and (field[2, 0] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(65, 40, 65, 170); replay; end;
    if (field[0, 1] = 2) and (field[1, 1] = 2) and (field[2, 1] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(105, 40, 105, 170); replay; end;
    if (field[0, 2] = 2) and (field[1, 2] = 2) and (field[2, 2] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(145, 40, 145, 170); replay; end;
    if (field[0, 0] = 2) and (field[0, 1] = 2) and (field[0, 2] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(40, 65, 170, 65); replay; end;
    if (field[1, 0] = 2) and (field[1, 1] = 2) and (field[1, 2] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(40, 105, 170, 105); replay; end;
    if (field[2, 0] = 2) and (field[2, 1] = 2) and (field[2, 2] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(40, 145, 170, 145); replay; end;
    if (field[0, 0] = 2) and (field[1, 1] = 2) and (field[2, 2] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(40, 40, 170, 170); replay; end;
    if (field[0, 2] = 2) and (field[1, 1] = 2) and (field[2, 0] = 2) then begin Window().Caption := ('player 2 WIN'); destroy; Line(170, 40, 40, 170); replay; end;
  end;
  
  begin
    hod:=0;
    ClearWindow;
    player := ((hod mod 2) + 1);
    Window().Caption := ('XO: player=' + (player));
    Window.SetSize(215,215);
    Window.CenterOnScreen;
  
    Line(40, 45, 170, 45);
    Line(40, 85, 170, 85);
    Line(40, 125, 170, 125);
    Line(40, 165, 170, 165);  
    Line(45, 40, 45, 170);
    Line(85, 40, 85, 170);
    Line(125, 40, 125, 170);
    Line(165, 40, 165, 170);
    
    SetFontSize(25);
    
    a.OnClick := procedure ->
    begin
      a.Destroy;
      Draw_XO(player, 50); 
      if player = 1 then
      begin
        field[0, 0] := 1;
      end
      else field[0, 0] := 2;
      hod += 1;
      player := PlCh(hod); 
      GE(field);
    end;
    
    
    
    b.OnClick := procedure ->
    begin
      b.Destroy;
      Draw_XO(player, 90);
      if player = 1 then
      begin
        field[0, 1] := 1;
      end
      else field[0, 1] := 2;
      hod += 1;
      player := PlCh(hod);  
      GE(field);
    end;
    
    
    
    c.OnClick := procedure ->
    begin
      c.Destroy;
      Draw_XO(player, 130);
      if player = 1 then
      begin
        field[0, 2] := 1;
      end
      else field[0, 2] := 2;
      hod += 1;
      player := PlCh(hod);  
      GE(field);
    end;
    
    
    
    d.OnClick := procedure ->
    begin
      d.Destroy;
      Draw_XO(player, 501);
      if player = 1 then
      begin
        field[1, 0] := 1;
      end
      else field[1, 0] := 2;
      hod += 1;
      player := PlCh(hod); 
      GE(field);
    end;
    
    
    
    e.OnClick := procedure ->
    begin
      e.Destroy;
      Draw_XO(player, 901);
      if player = 1 then
      begin
        field[1, 1] := 1;
      end
      else field[1, 1] := 2;
      hod += 1;
      player := PlCh(hod);
      GE(field);
    end;
    
    
    
    f.OnClick := procedure ->
    begin
      f.Destroy;
      Draw_XO(player, 1301);
      if player = 1 then
      begin
        field[1, 2] := 1;
      end
      else field[1, 2] := 2;
      hod += 1;
      player := PlCh(hod);   
      GE(field);
    end;
    
    
    
    g.OnClick := procedure ->
    begin
      g.Destroy;
      Draw_XO(player, 502);
      if player = 1 then
      begin
        field[2, 0] := 1;
      end
      else field[2, 0] := 2;
      hod += 1;
      player := PlCh(hod);
      GE(field);
    end;
    
    
    
    h.OnClick := procedure ->
    begin
      h.Destroy;
      Draw_XO(player, 902);
      if player = 1 then
      begin
        field[2, 1] := 1;
      end
      else field[2, 1] := 2;
      hod += 1;
      player := PlCh(hod); 
      GE(field);
    end;
    
    
    
    l.OnClick := procedure ->
    begin
      l.Destroy;
      Draw_XO(player, 1302);
      if player = 1 then
      begin
        field[2, 2] := 1;
      end
      else field[2, 2] := 2;
      hod += 1;
      player := PlCh(hod); 
      GE(field);
    end;
 
    
  end.
