unit u_mail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdAttachment , IdAttachmentFile,
  IdSMTP, Vcl.OleCtrls, SHDocVw,shellapi;

type
  Tf_mail = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    memo_body: TMemo;
    edt_subject: TEdit;
    edt_bcc: TEdit;
    edt_cc: TEdit;
    edt_recip: TEdit;
    edt_send: TEdit;
    TabSheet_setting_mail: TTabSheet;
    Panel2: TPanel;
    Label6: TLabel;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Memo2: TMemo;
    Label7: TLabel;
    edt_smtp: TEdit;
    Label8: TLabel;
    edt_port: TEdit;
    Label9: TLabel;
    edt_username: TEdit;
    edt_password: TEdit;
    Label10: TLabel;
    OpenDialog1: TOpenDialog;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    b1: TBitBtn;
    b2: TBitBtn;
    b3: TBitBtn;
    b11: TButton;
    Panel3: TPanel;
    WebBrowser1: TWebBrowser;
    procedure btn_effaceClick(Sender: TObject);
    procedure btn_send_mailClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bb(Sender: TObject);
    procedure param1(Sender: TObject);
    procedure parame(Sender: TObject);
    procedure param2(Sender: TObject);
    procedure param3(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure b3Click(Sender: TObject);
    procedure b11Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Buffer : array[0..255] of Char;
  f_mail: Tf_mail;
  Attachment: TIdAttachment;
implementation

{$R *.dfm}

procedure Tf_mail.b3Click(Sender: TObject);
begin
     //  WebBrowser1.Navigate(trim(b3.Caption))
     WebBrowser1.Visible:=true;
      ShellExecute(ValidParentForm(Self).Handle, 'open',
          StrPCopy(Buffer,'https://accounts.google.com/displayunlockcaptcha'), nil, nil, SW_SHOW);
end;

procedure Tf_mail.bb(Sender: TObject);
begin
      edt_recip.Text := '';
  edt_cc.Text := '';
  edt_bcc.Text := '';
  edt_subject.Text := '';
  edt_username.Text := '' ;
  edt_password.Text := '' ;
  memo_body.Text := '';
end;

procedure Tf_mail.BitBtn1Click(Sender: TObject);
begin
      if OpenDialog1.Execute then edit2.text:=OpenDialog1.FileName;
end;

procedure Tf_mail.btn_effaceClick(Sender: TObject);
begin
  edt_send.Text := '';
  edt_recip.Text := '';
  edt_cc.Text := '';
  edt_bcc.Text := '';
  edt_subject.Text := '';
  edt_username.Text := '' ;
  edt_password.Text := '' ;
  memo_body.Text := '';
end;

procedure Tf_mail.btn_send_mailClick(Sender: TObject);
begin
       Attachment := TIdAttachmentFile.Create(IdMessage1.MessageParts, 'i:\Capture.PNG');
    If (edt_send.text = '') Then
    Begin
      Application.MessageBox('Lexpéditeur Doit Etre Rempli !','Information',MB_OK or MB_IconInformation);
      edt_send.SetFocus;Exit;
    End;

    If (edt_recip.text = '') Then
    Begin
      Application.MessageBox('Le Destinataire Doit Etre Rempli !','Information',MB_OK or MB_IconInformation);
      edt_recip.SetFocus;Exit;
    End;

    If (edt_subject.text = '') Then
    Begin
      Application.MessageBox('Le Sujet Doit Etre Rempli !','Information',MB_OK or MB_IconInformation);
      edt_subject.SetFocus;Exit;
    End;

    If (memo_body.text = '') Then
    Begin
      Application.MessageBox('Tapez Le Contenu Du Message  !','Information',MB_OK or MB_IconInformation);
      memo_body.SetFocus;Exit;
    End;

    If (edt_smtp.text = '') Then
    Begin
      Application.MessageBox('Le Nom De Smtp Doit Etre Rempli !','Information',MB_OK or MB_IconInformation);
      edt_smtp.SetFocus;Exit;
    End;

    If (edt_port.text = '') Then
    Begin
      Application.MessageBox('Le Port Number Smtp Doit Etre Renseigné !','Information',MB_OK or MB_IconInformation);
      edt_port.SetFocus;Exit;
    End;

    If (edt_username.text = '') Then
    Begin
      Application.MessageBox('Le Nom Utilisateur Smtp Doit Etre Renseigné !','Information',MB_OK or MB_IconInformation);
      edt_username.SetFocus;Exit;
    End;

    If (edt_password.text = '') Then
    Begin
      Application.MessageBox('Le Mot De Passe Smtp Doit Etre Renseigné !','Information',MB_OK or MB_IconInformation);
      edt_password.SetFocus;Exit;
    End;

    If (memo_body.text = '') Then
    Begin
      Application.MessageBox('Tapez Le Contenu Du Message !','Information',MB_OK or MB_IconInformation);
      memo_body.SetFocus;Exit;
    End;

   with IdMessage1 do
    begin
        Recipients.EMailAddresses := edt_recip.Text;
        From.Address := edt_send.Text;
        From.Name := edt_send.Text;
        CCList.EMailAddresses := edt_cc.Text;
        BccList.EMailAddresses := edt_bcc.Text;
        Priority := mpNormal;
        Subject := edt_subject.Text;
        Body.Add(memo_body.Text);
    end;

  with IdSMTP1 do
    begin
      Host := edt_smtp.Text;
      Username := edt_username.Text;
      Password := edt_password.Text;
      IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      Port := 465;
      UseTLS := utUseImplicitTLS;

    try
        Connect;
      except
    end;

  if not Connected then
    begin
       Showmessage('Error');
       Exit;
    end;

    try
    Send(IdMessage1);
    ShowMessage('Message Envoyé Avec Succès');
      finally
    Disconnect;
    end;

end;
end;

procedure Tf_mail.b11Click(Sender: TObject);
begin
      b11.Visible:=false;WebBrowser1.Stop;panel3.Visible:=false;
end;

procedure Tf_mail.param1(Sender: TObject);
begin
     b11.Visible:=true;panel3.Visible:=true;WebBrowser1.Navigate(trim(b1.Caption))

end;

procedure Tf_mail.param2(Sender: TObject);
begin
    b11.Visible:=true;panel3.Visible:=true; WebBrowser1.Navigate(trim(b2.Caption))
end;

procedure Tf_mail.param3(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
     b11.Visible:=true;panel3.Visible:=true;WebBrowser1.Navigate(trim(b3.Caption))
end;

procedure Tf_mail.parame(Sender: TObject);
begin
    edt_smtp.Text:='smtp.gmail.com';
       edt_port.Text:='465';
end;

end.
