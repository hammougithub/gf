unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBUpdateSQL, Data.DB, Data.SqlExpr,
  IBX.IBEvents, Datasnap.Provider, SimpleDS, Datasnap.DBClient;

type
  TForm12 = class(TForm)
    ClientDataSet_chapitre: TClientDataSet;
    SimpleDataSet_depenses_annulees: TSimpleDataSet;
    SimpleDataSet_facture: TSimpleDataSet;
    SimpleDataSet1: TSimpleDataSet;
    SQLDataSet_desig: TSQLDataSet;
    ClientDataSet_desig: TClientDataSet;
    DataSetProvider_desig: TDataSetProvider;
    SimpleDataSet_parameters: TSimpleDataSet;
    SimpleDataSet_unites: TSimpleDataSet;
    Ds_unites: TDataSource;
    Ds_consommation: TDataSource;
    SimpleDataSet_consommation: TSimpleDataSet;
    DataSource2: TDataSource;
    Ds_designation: TDataSource;
    SimpleDataSet_desig: TSimpleDataSet;
    SimpleDataSet_service: TSimpleDataSet;
    Ds_service: TDataSource;
    DataSource_users: TDataSource;
    SimpleDataSet_users: TSimpleDataSet;
    ds_lieu: TDataSource;
    SimpleDataSet_lieu: TSimpleDataSet;
    sm: TSimpleDataSet;
    DataSetProvider_adm: TDataSetProvider;
    ClientDataSet_adm: TClientDataSet;
    SQLDataSet_adm: TSQLDataSet;
    ds_facture: TDataSource;
    ds_convention: TDataSource;
    simpledataset_convention: TSimpleDataSet;
    IBEvents_eng: TIBEvents;
    DataSource_programme: TDataSource;
    SimpleDataSet_programme: TSimpleDataSet;
    ClientDataSet_fournisseur2: TClientDataSet;
    DataSource_fournisseur2: TDataSource;
    DataSource_fournisseur1: TDataSource;
    ClientDataSet_fournisseur1: TClientDataSet;
    SimpleDataSet_grade: TSimpleDataSet;
    SimpleDataSet_agent11: TSimpleDataSet;
    ds_parameters: TDataSource;
    compter: TSQLQuery;
    ds_bc: TDataSource;
    SimpleDataSet_bc: TSimpleDataSet;
    SimpleDataSet_bc_lignes: TSimpleDataSet;
    SQLDataSet_fournisseur: TSQLDataSet;
    DataSetProvider_fournisseur: TDataSetProvider;
    DataSource_fournisseur: TDataSource;
    ClientDataSet_fournisseur: TClientDataSet;
    ClientDataSet_depenses_annulees: TClientDataSet;
    DataSetProvider_depenses_annulees: TDataSetProvider;
    SQLDataSet_depenses_annulees: TSQLDataSet;
    ds_depenses_annulees: TDataSource;
    SimpleDataSet_lignes_c: TSimpleDataSet;
    SimpleDataSet_mandat_c: TSimpleDataSet;
    salah_pers: TSQLConnection;
    ds_bc_lignes: TDataSource;
    SimpleDataSet_apc: TSimpleDataSet;
    SimpleDataSet_bareme: TSimpleDataSet;
    SimpleDataSet_fonction: TSimpleDataSet;
    SimpleDataSet_adm_pers: TSimpleDataSet;
    SimpleDataSet_agent: TSimpleDataSet;
    SimpleDataSet_PARAMETRES_MISSION: TSimpleDataSet;
    SimpleDataSet_depenses_mission: TSimpleDataSet;
    SimpleDataSet_mission: TSimpleDataSet;
    SimpleDataSet_adm_apc_grade_fonction_mission: TSimpleDataSet;
    DataSetProvider_reimputation: TDataSetProvider;
    ClientDataSet_reimputation: TClientDataSet;
    SQLDataSet_reimputation: TSQLDataSet;
    ds_lignes_mandat: TDataSource;
    ClientDataSet_lignes_mandat: TClientDataSet;
    DataSetProvider_lignes_mandat: TDataSetProvider;
    SQLDataSet_lignes_mandat: TSQLDataSet;
    DataSetProvider_mandat: TDataSetProvider;
    ClientDataSet_mandat: TClientDataSet;
    SQLDataSet_mandat: TSQLDataSet;
    SimpleDataSet_mandat1: TSimpleDataSet;
    SimpleDataSet_lignes_mandat: TSimpleDataSet;
    SimpleDataSet_nat_dep: TSimpleDataSet;
    SimpleDataSet_mois: TSimpleDataSet;
    SQLDataSet_credit: TSQLDataSet;
    DataSetProvider_credit: TDataSetProvider;
    ClientDataSet_credit: TClientDataSet;
    SimpleDataSet_eng: TSimpleDataSet;
    SimpleDataSet_obs_eng: TSimpleDataSet;
    SimpleDataSet_det_eng: TSimpleDataSet;
    SQLMonitor1: TSQLMonitor;
    SQLDataSet_det_eng1: TSQLDataSet;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField1: TDateField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    SQLDataSet_chapitre: TSQLDataSet;
    SQLDataSet_chapitreCHAPITRE: TStringField;
    SQLDataSet_chapitreARTICLE: TStringField;
    SQLDataSet_chapitreTYP: TStringField;
    SQLDataSet_chapitreLIBELLE_ARABE: TStringField;
    SQLDataSet_chapitreLIBELLE: TStringField;
    SQLDataSet_chapitreLIBELLE_CHAPITRE: TStringField;
    SQLDataSet_chapitreUTILISATEUR: TStringField;
    SQLDataSet_chapitreDATE_MAJ: TStringField;
    DataSetProvider_chapitre: TDataSetProvider;
    connect_db_gf: TSQLConnection;
    ds_parametres_mission: TDataSource;
    ds_adm_apc_grade_fonction_mission: TDataSource;
    ds_adm: TDataSource;
    ds_apc: TDataSource;
    ds_depenses_mission: TDataSource;
    ds_bareme: TDataSource;
    ds_agent: TDataSource;
    ds_grade: TDataSource;
    ds_fonction: TDataSource;
    ds_mission: TDataSource;
    ds_reimputation: TDataSource;
    ds_nat_dep_ib: TDataSource;
    DS_mandat: TDataSource;
    ds_mois_ib: TDataSource;
    ds_obs_ib: TDataSource;
    ds_credit_ib: TDataSource;
    ds_det_eng_ib: TDataSource;
    ds_eng_ib: TDataSource;
    IBU_adm: TIBUpdateSQL;
    Ds_adm_ib: TDataSource;
    ds_chapitre_ib: TDataSource;
    IBEvents_mandat: TIBEvents;
    ds_lignes_ib_1: TDataSource;
    ds_mandat_ib: TDataSource;
    gf_ib1: TIBDatabase;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

end.
