unit GeneralParametersNew;

interface

uses IBC;
type
  TParameterRecord= record
        P_ID:String;
        P_Description:String;
        P_String1:string;
        P_String2:string;
        P_String3:string;
        P_String4:string;
        P_String5:string;
        P_String6:string;
        P_Integer1:Integer;
        P_Integer2:Integer;
        P_Float1:Double;
        P_Float2:DOuble;
  end;

Function GN_GetTheSystemParameter(cn:TIBCConnection ;Const Key:String):TParameterREcord;

implementation

uses G_KyrSQL;

Function GN_GetTheSystemParameter(cn:TIBCConnection ;Const Key:String):TParameterREcord;
Var
        x1:Double;
        qr:TksQuery;
Begin
  try
    qr:=TksQuery.Create(cn,' select *  from System_Parameters where Key_Field= :TheKey');
    qr.ParambyName('TheKey').Value:= Key;
    qr.Open;
    If  qr.IsEmpty then begin
      Result.P_ID:='';
      exit;
    end;
    with qr do begin
        Result.P_ID :=qr.FieldByName('KEY_FIELD').assTRING;
        Result.P_Integer1:=FieldByName('Int_1').asInteger;
        Result.P_Integer2:=FieldByName('Int_2').asInteger;
        Result.P_String1:=FieldByName('Str_1').asString;
        Result.P_String2:=FieldByName('Str_2').asString;
        Result.P_String3:=FieldByName('Str_3').asString;
        Result.P_String4:=FieldByName('Str_4').asString;
        Result.P_String5:=FieldByName('Str_5').asString;
        Result.P_Float1:=FieldByName('NUM_1').asFloat;
        Result.P_Float2:=FieldByName('NUM_2').asFloat;
     end;
  finally
    qr.Free;
  end;

End;


end.
