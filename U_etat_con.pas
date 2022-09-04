unit U_etat_con;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unit_function_and_procedure,
   Vcl.StdCtrls, System.Win.ScktComp, IdContext, IdCustomTCPServer,
  IdTCPServer, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  Vcl.ExtCtrls;

type
  Tf_etat_con = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    client: TIdTCPClient;
    serveur: TIdTCPServer;
    Button2: TButton;
    Label1: TLabel;
    Edit4: TEdit;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Label4: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtRemoteHost: TEdit;
    edtRemotePort: TEdit;
    edtLocalPort: TEdit;
    btnActivateServer: TButton;
    memRecv: TMemo;
    btnSend: TButton;
    memsend: TMemo;
    Label2: TLabel;
    Label3: TLabel;
   // procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DEsactiver(Sender: TObject);
//    procedure btnActivateServerClick(Sender: TObject);
//    procedure btnSendClick(Sender: TObject);
   // procedure accept(Sender: TObject; ClientSocket: TCustomIpClient);
    procedure onerror(Sender: TObject; SocketError: Integer);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

// you must create your own thread to synch
  // writing to a gui component
  TClientDataThread = class(TThread)
  private
  public
    ListBuffer :TStringList;
    TargetList :TStrings;
    procedure synchAddDataToControl;
    constructor Create(CreateSuspended: Boolean);
    procedure Execute; override;
    procedure Terminate;
  end;

var
  f_etat_con: Tf_etat_con;

implementation

{$R *.dfm}

//------------- TClientDataThread impl -----------------------------------------
constructor TClientDataThread.Create(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  FreeOnTerminate := true;
  ListBuffer := TStringList.Create;
end;

procedure TClientDataThread.Terminate;
begin
  ListBuffer.Free;
  inherited;
end;

procedure TClientDataThread.Execute;
begin
  Synchronize(synchAddDataToControl);
end;

procedure TClientDataThread.synchAddDataToControl;
begin
 TargetList.AddStrings(ListBuffer);
end;
//------------- end TClientDataThread impl -------------------------------------










procedure Tf_etat_con.Button2Click(Sender: TObject);
begin

        // serveur.Bindings.Clear;
         edit4.Text:=getiplocal;
         edit3.Text:=GetIP((trim(edit2.Text)));
        // serveur.Bindings.Add.SetBinding(trim(edit2.text),8080); // indique l’adresse IP et le port serveur.Active:=true;
        // serveur.Active:=true;
         client.port:=8080;client.Host:= trim(edit3.text); client.Connect;
         label4.visible:=true;

end;

procedure Tf_etat_con.Button3Click(Sender: TObject);
begin
client.Socket.WriteLn(trim(edit4.text)+'@ip'+trim(edit1.text)); Memo1.Lines.Add('Informations envoyées au serveur');
end;

procedure Tf_etat_con.DEsactiver(Sender: TObject);
begin
   if client.connected then client.Disconnect;
   label4.visible:=false;
end;

procedure Tf_etat_con.onerror(Sender: TObject; SocketError: Integer);
var error : Integer;
begin

  //ESocketError est déclenchée si :
  //Un socket ne peut être créé.
  //Un socket ne peut être initialisé.
  //Un socket ne peut être ouvert.
  //Une application tente de modifier les propriétés d'un socket déjà ouvert.
  //Un échec a lieu lors de l'écriture ou la lecture dans un socket.
  //Un socket ne peut être correctement fermé.


   error := Socketerror; {prevent exception from being thrown}
   socketError := 0;
   case error of
      10061: showmessage(inttostr(error)+'Tcpclcient Connect Error : asynchronous socket error 10061');
      10049: showmessage(inttostr(error)+'Tcpclcient Connect Error : error 10049');
      else showmessage(inttostr(error)+'Tcpclcient Connect autre error');
   end;
 end;
end.
