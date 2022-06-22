unit Unit2;

{
  Delphi:
  This demo show you how to copy cell selection with cxGrid,
  PS. I try to clone this feature like the SQL Server Management Studio
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.Menus, dxBarBuiltInMenu, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC, cxStyles,
  cxCustomData, cxFilter, cxLookAndFeelPainters;

type
  TForm2 = class(TForm)
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    FDConnection1: TFDConnection;
    Customer_FDQuery: TFDQuery;
    Customer_DataSource1: TDataSource;
    Customer_FDQueryid: TFDAutoIncField;
    Customer_FDQueryfirst_name: TStringField;
    Customer_FDQuerylast_name: TStringField;
    Customer_FDQuerycompany_name: TStringField;
    Customer_FDQueryaddress: TStringField;
    Customer_FDQueryphone1: TStringField;
    Customer_FDQueryemail: TStringField;
    Customer_FDQueryweb: TStringField;
    Customer_FDQuerycity_id: TLargeintField;
    Customer_FDQueryphone2: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxDBTV2: TcxGridDBTableView;
    cxDBTV2id: TcxGridDBColumn;
    cxDBTV2first_name: TcxGridDBColumn;
    cxDBTV2last_name: TcxGridDBColumn;
    cxDBTV2company_name: TcxGridDBColumn;
    cxDBTV2address: TcxGridDBColumn;
    cxDBTV2phone1: TcxGridDBColumn;
    cxDBTV2email: TcxGridDBColumn;
    cxDBTV2web: TcxGridDBColumn;
    cxDBTV2city_id: TcxGridDBColumn;
    cxDBTV2phone2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    Button1: TButton;
    Copy1: TMenuItem;
    CopywithHeaders1: TMenuItem;
    Copy_Action: TAction;
    CopyWithHeader_Action: TAction;
    City_FDQuery: TFDQuery;
    City_FDQueryid: TFDAutoIncField;
    City_FDQuerycity_name: TStringField;
    City_FDQuerystate_name: TStringField;
    City_DataSource1: TDataSource;
    cxGrid2: TcxGrid;
    cxDBTV3: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxDBTV3id: TcxGridDBColumn;
    cxDBTV3city_name: TcxGridDBColumn;
    cxDBTV3state_name: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    Copy2: TMenuItem;
    Copy3: TMenuItem;
    Copy2_Action: TAction;
    CopyWithHeader2_Action: TAction;
    CopyPublic_Action: TAction;
    CopyWithHeaderPublic_Action: TAction;
    PopupMenu_Public: TPopupMenu;
    Copy_Mnu: TMenuItem;
    CopyWIthHeader_Mnu: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Copy_ActionExecute(Sender: TObject);
    procedure CopyWithHeader_ActionExecute(Sender: TObject);
    procedure Copy2_ActionExecute(Sender: TObject);
    procedure CopyWithHeader2_ActionExecute(Sender: TObject);
    procedure CopyPublic_ActionExecute(Sender: TObject);
    procedure CopyWithHeaderPublic_ActionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Customer_FDQuery.Open;
  City_FDQuery.Open;
end;

procedure TForm2.Copy2_ActionExecute(Sender: TObject);
begin
  if cxDBTV3.OptionsSelection.CellSelect then
  begin
     cxDBTV3.OptionsBehavior.CopyCaptionsToClipboard := False;
     cxDBTV3.CopyToClipboard(False);
  end;
end;

procedure TForm2.CopyPublic_ActionExecute(Sender: TObject);
begin
  with ((Sender as TAction).ActionComponent.GetParentComponent as TPopupMenu) do begin
    if (PopupComponent as TcxGridSite).GridView is TcxGridDBTableView then
    begin
      if ((PopupComponent as TcxGridSite).GridView as TcxGridDBTableView).OptionsSelection.CellSelect then
      begin
         ((PopupComponent as TcxGridSite).GridView as TcxGridDBTableView).OptionsBehavior.CopyCaptionsToClipboard := False;
         ((PopupComponent as TcxGridSite).GridView as TcxGridDBTableView).CopyToClipboard(False);
      end;
    end;
  end;
end;

procedure TForm2.CopyWithHeader2_ActionExecute(Sender: TObject);
begin
  if cxDBTV3.OptionsSelection.CellSelect then
  begin
     cxDBTV3.OptionsBehavior.CopyCaptionsToClipboard := True;
     cxDBTV3.CopyToClipboard(False);
  end;
end;

procedure TForm2.CopyWithHeaderPublic_ActionExecute(Sender: TObject);
begin
  with ((Sender as TAction).ActionComponent.GetParentComponent as TPopupMenu) do begin
    if (PopupComponent as TcxGridSite).GridView is TcxGridDBTableView then
    begin
      if ((PopupComponent as TcxGridSite).GridView as TcxGridDBTableView).OptionsSelection.CellSelect then
      begin
         ((PopupComponent as TcxGridSite).GridView as TcxGridDBTableView).OptionsBehavior.CopyCaptionsToClipboard := True;
         ((PopupComponent as TcxGridSite).GridView as TcxGridDBTableView).CopyToClipboard(False);
      end;
    end;
  end;
end;

procedure TForm2.CopyWithHeader_ActionExecute(Sender: TObject);
begin
  if cxDBTV2.OptionsSelection.CellSelect then
  begin
     cxDBTV2.OptionsBehavior.CopyCaptionsToClipboard := True;
     cxDBTV2.CopyToClipboard(False);
  end;
end;

procedure TForm2.Copy_ActionExecute(Sender: TObject);
begin
  if cxDBTV2.OptionsSelection.CellSelect then
  begin
     cxDBTV2.OptionsBehavior.CopyCaptionsToClipboard := False;
     cxDBTV2.CopyToClipboard(False);
  end;
end;

end.
