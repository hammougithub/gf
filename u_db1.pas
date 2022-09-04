unit u_db1;
//Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\test\qm\Results-summary.xlsx;Mode=Share Deny None;Extended Properties="Excel 12.0 Xml;HDR=yes";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=37;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False
//Provider=Microsoft.Jet.OLEDB.4.0;Data Source=access_files/drt.MDB;Persist Security Info=False;Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†;
interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tf_dm1 = class(TDataModule)
    employes: TADOQuery;
    ds_employes: TDataSource;
    GRADE: TADOQuery;
    ds_grade: TDataSource;
    ds_fonction: TDataSource;
    fonction: TADOQuery;
    adoc2: TADOConnection;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_dm1: Tf_dm1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
