object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 641
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 1042
    Height = 600
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 88
    ExplicitTop = 144
    ExplicitWidth = 873
    ExplicitHeight = 353
    ClientRectBottom = 596
    ClientRectLeft = 4
    ClientRectRight = 1038
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Customer'
      ImageIndex = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1034
        Height = 572
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -247
        ExplicitWidth = 1112
        ExplicitHeight = 325
        object cxDBTV2: TcxGridDBTableView
          PopupMenu = PopupMenu_Public
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = Customer_DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.Footer = True
          OptionsView.GridLines = glVertical
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxDBTV2id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 128
          end
          object cxDBTV2first_name: TcxGridDBColumn
            DataBinding.FieldName = 'first_name'
            Width = 128
          end
          object cxDBTV2last_name: TcxGridDBColumn
            DataBinding.FieldName = 'last_name'
            Width = 128
          end
          object cxDBTV2company_name: TcxGridDBColumn
            DataBinding.FieldName = 'company_name'
            Width = 128
          end
          object cxDBTV2address: TcxGridDBColumn
            DataBinding.FieldName = 'address'
            Width = 128
          end
          object cxDBTV2phone1: TcxGridDBColumn
            DataBinding.FieldName = 'phone1'
            Width = 128
          end
          object cxDBTV2email: TcxGridDBColumn
            DataBinding.FieldName = 'email'
            Width = 128
          end
          object cxDBTV2web: TcxGridDBColumn
            DataBinding.FieldName = 'web'
            Width = 128
          end
          object cxDBTV2city_id: TcxGridDBColumn
            DataBinding.FieldName = 'city_id'
            Width = 128
          end
          object cxDBTV2phone2: TcxGridDBColumn
            DataBinding.FieldName = 'phone2'
            Width = 128
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxDBTV2
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'City'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1034
        Height = 572
        Align = alClient
        TabOrder = 0
        ExplicitTop = -3
        object cxDBTV3: TcxGridDBTableView
          PopupMenu = PopupMenu_Public
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = City_DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.Footer = True
          OptionsView.GridLines = glVertical
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxDBTV3id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 128
          end
          object cxDBTV3city_name: TcxGridDBColumn
            DataBinding.FieldName = 'city_name'
            Width = 128
          end
          object cxDBTV3state_name: TcxGridDBColumn
            DataBinding.FieldName = 'state_name'
            Width = 128
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxDBTV3
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 608
    ExplicitTop = 304
    ExplicitWidth = 185
    object Button1: TButton
      Left = 20
      Top = 10
      Width = 149
      Height = 25
      Caption = 'Get customer, City'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    Top = 200
    object Copy1: TMenuItem
      Action = Copy_Action
    end
    object CopywithHeaders1: TMenuItem
      Action = CopyWithHeader_Action
    end
  end
  object ActionList1: TActionList
    Left = 752
    Top = 336
    object Copy_Action: TAction
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = Copy_ActionExecute
    end
    object CopyWithHeader_Action: TAction
      Caption = 'Copy with Headers'
      ShortCut = 24643
      OnExecute = CopyWithHeader_ActionExecute
    end
    object Copy2_Action: TAction
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = Copy2_ActionExecute
    end
    object CopyWithHeader2_Action: TAction
      Caption = 'Copy with Headers'
      ShortCut = 24643
      OnExecute = CopyWithHeader2_ActionExecute
    end
    object CopyPublic_Action: TAction
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = CopyPublic_ActionExecute
    end
    object CopyWithHeaderPublic_Action: TAction
      Caption = 'Copy with Headers'
      ShortCut = 24643
      OnExecute = CopyWithHeaderPublic_ActionExecute
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\Awarasoft\youtube_popupmenu_Delphi\django\db.sqlite3'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 640
    Top = 112
  end
  object Customer_FDQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from app_customer')
    Left = 768
    Top = 112
    object Customer_FDQueryid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Customer_FDQueryfirst_name: TStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Required = True
      Size = 150
    end
    object Customer_FDQuerylast_name: TStringField
      FieldName = 'last_name'
      Origin = 'last_name'
      Required = True
      Size = 150
    end
    object Customer_FDQuerycompany_name: TStringField
      FieldName = 'company_name'
      Origin = 'company_name'
      Required = True
      Size = 200
    end
    object Customer_FDQueryaddress: TStringField
      FieldName = 'address'
      Origin = 'address'
      Required = True
      Size = 200
    end
    object Customer_FDQueryphone1: TStringField
      FieldName = 'phone1'
      Origin = 'phone1'
      Required = True
      Size = 50
    end
    object Customer_FDQueryemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 150
    end
    object Customer_FDQueryweb: TStringField
      FieldName = 'web'
      Origin = 'web'
      Required = True
      Size = 250
    end
    object Customer_FDQuerycity_id: TLargeintField
      FieldName = 'city_id'
      Origin = 'city_id'
      Required = True
    end
    object Customer_FDQueryphone2: TStringField
      FieldName = 'phone2'
      Origin = 'phone2'
      Required = True
      Size = 50
    end
  end
  object Customer_DataSource1: TDataSource
    DataSet = Customer_FDQuery
    Left = 552
    Top = 328
  end
  object City_FDQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from app_city')
    Left = 768
    Top = 192
    object City_FDQueryid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object City_FDQuerycity_name: TStringField
      FieldName = 'city_name'
      Origin = 'city_name'
      Required = True
      Size = 150
    end
    object City_FDQuerystate_name: TStringField
      FieldName = 'state_name'
      Origin = 'state_name'
      Required = True
      Size = 3
    end
  end
  object City_DataSource1: TDataSource
    DataSet = City_FDQuery
    Left = 872
    Top = 200
  end
  object PopupMenu2: TPopupMenu
    Left = 608
    Top = 528
    object Copy2: TMenuItem
      Action = Copy2_Action
    end
    object Copy3: TMenuItem
      Action = CopyWithHeader2_Action
    end
  end
  object PopupMenu_Public: TPopupMenu
    Left = 336
    Top = 240
    object Copy_Mnu: TMenuItem
      Action = CopyPublic_Action
    end
    object CopyWIthHeader_Mnu: TMenuItem
      Action = CopyWithHeaderPublic_Action
    end
  end
end
