unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  clipbrd,Classes, SysUtils, Forms, Controls, Graphics, Dialogs,synaser;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

    ser:TBlockSerial;

  end;
const
  timeout = 10;
var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormActivate(Sender: TObject);

  var s: ansistring;
      b:byte;
begin

  try

      ser:=TBlockserial.Create;
      ser.RaiseExcept:=true;
      s:=clipboard.AsText;
      //self.caption:=s;

      ser.Connect(s);
      //ser.Connect('COM10');
      ser.Config(115200,8,'N',0,false,false);


      if ser.lastError<>0 then self.close;
      while ser.WaitingData = 0 do begin end;
      s := '';
      b := 0;
      repeat
        b := ser.RecvByte(timeout);
      until (b=64);
      s :='';

      repeat
        b := ser.RecvByte(timeout);
        if (b<>35) then s :=s + chr(b);
      until b=35;

      form1.Caption := s;
      clipboard.AsText:=s;


  except

        ser.free;
        form1.close;


  end;
   //sleep();
  ser.free;
  form1.close;

 end;




procedure TForm1.FormCreate(Sender: TObject);
begin
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //self.hide;
end;

end.

