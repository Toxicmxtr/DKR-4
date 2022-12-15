uses GraphABC;
var
l,p,x,y,a,b,h: real;
 x0,y0,x1,x2,n,y1,mx,my:integer;
begin
  x0:=250;
  y0:=250;
  line(50,250,450,250);
  line(250,50,250,450);
  l:=-20;               //отрезок
  p:=20;
  mx:=20;                //масштаб
  my:=20;
  x:=l;
textout(x0 + 5, y0 + 5, '0');
textout(windowwidth -200, y0 +5, 'x');
textout(windowwidth -402, y0 -198, 'y');
  while x <= p do begin            //график
    y:=x**3+1*x**2+4*x+3;
    x1:=x0+round(x*mx);
    y1:=y0-round(y*my);
    setpixel(x1,y1,clred);
    x+=0.0001;
    end;
read(a,b,n);               //линии расположения графика
    h:=(b-a)/n;
    x:=a;
    while x <= b do begin
      y:=x**3+1*x**2+4*x+3;
    x1:=x0+round(x*mx);
    y1:=y0-round(y*my);
    x2:=x0+round((h+x)*mx);
    setpencolor(clblue);
    line(x1,y1,x1,y0);
    x+=h;
    end;
    x:=a;
     y:=x**3+1*x**2+4*x+3;
    x1:=x0+round(x*mx);
    y1:=y0-round(y*my);
    moveto(x1,y1);
    while x <= b do begin
      y:=x**3+1*x**2+4*x+3;
    x1:=x0+round(x*mx);
    y1:=y0-round(y*my);
    x2:=x0+round((h+x)*mx);
    setpencolor(clblue);
    lineto(x1,y1);
    x+=h;
    end;
end.