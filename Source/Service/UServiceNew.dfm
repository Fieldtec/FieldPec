object ServiceNew: TServiceNew
  OldCreateOrder = False
  Height = 677
  Width = 931
  object MEDICO_VETERINARIO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM  MEDICO_VETERINARIO'
      'WHERE STATUS=1')
    Left = 64
    Top = 24
    object MEDICO_VETERINARIOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MEDICO_VETERINARIONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object MEDICO_VETERINARIOEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 300
    end
    object MEDICO_VETERINARIOTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object MEDICO_VETERINARIOCRM: TStringField
      FieldName = 'CRM'
      Origin = 'CRM'
      Size = 50
    end
    object MEDICO_VETERINARIODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object MEDICO_VETERINARIOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object MEDICO_VETERINARIOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object MEDICO_VETERINARIOASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = 'ASSINATURA'
      BlobType = ftMemo
    end
  end
  object CAPATAZ: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM CAPATAZ'
      'WHERE STATUS=1')
    Left = 64
    Top = 80
    object CAPATAZID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAPATAZNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object CAPATAZEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 300
    end
    object CAPATAZTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object CAPATAZDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object CAPATAZID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object CAPATAZSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object CAPATAZASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = 'ASSINATURA'
      BlobType = ftMemo
    end
  end
  object OPERACAO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM OPERACAO'
      'WHERE STATUS=1')
    Left = 64
    Top = 136
    object OPERACAOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OPERACAONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object OPERACAODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object OPERACAOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object OPERACAOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object FConImg: TFDConnection
    Params.Strings = (
      'Database=E:\Projetos\Solotec_Field_Outros\db\DBIMGS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'Server=127.0.0.1'
      'DriverID=FB')
    LoginPrompt = False
    AfterConnect = FConImgAfterConnect
    Left = 184
    Top = 48
  end
  object LAUDO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      '    L.*, '
      '    Pgta.nome Produtor, '
      '    Pgtad.nome ProdutorDestino, '
      '    A.IDENTIFICACAO_1, '
      '    A.IDENTIFICACAO_2, '
      '    a.DATA_SAIDA data_morte, '
      '    R.NOME RACA , '
      '    C.NOME CATEGORIA, '
      '    CU.CODIGO ULTIMO_LOCAL, '
      '    ax.NOME MOTIVO, '
      '    A.VALOR_VENDA, '
      '    cca.NUMERO CONTRATO, '
      '    C2.NOME CAPATAZ, '
      '    MV.NOME VETERINARIO, '
      '    MV.CRM, '
      '    O.NOME OPERACAO, '
      '    A.DATA_PROC DATA_ENTRADA, '
      '    pp.CIDADE , '
      '    pp.UF, '
      '    C.SEXO, '
      '    pp.NOME PRPRIEDADE, '
      '    ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648) IDADE_MORTE, '
      '    rr.NOME Responsavel_Rastreabilidade, '
      '    gop.NOME GERENTE_OPERACIONAL, '
      '    cEPE.NOME CAPATAZ_EPE,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_CAPATAZ =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_CAPATAZ =1 THEN '#39'SIM'#39
      ' END ChekAssCapataz,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_VETERINARIO =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_VETERINARIO =1 THEN '#39'SIM'#39
      ' END ChekAssVeterinario,'
      ' CASE'
      ' '#9'WHEN CHECK_GERENTE_OP =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_GERENTE_OP =1 THEN '#39'SIM'#39
      ' END ChekAssGerenteOP,'
      ' CASE'
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =1 THEN '#39'SIM'#39
      ' END ChekAssRespRastreabilidade,'
      ' CASE'
      ' '#9'WHEN CHECK_CAPATAZ_EPE =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_CAPATAZ_EPE =1 THEN '#39'SIM'#39
      ' END ChekAssCapatazEPE,'
      'cEPE.ASSINATURA CapatezAss,'
      'c2.ASSINATURA   CapatezEPEAss,'
      'mv.ASSINATURA   VetarinarioAss,'
      'rr.ASSINATURA   ReponsavelAss,'
      'gop.ASSINATURA  GerenteAss '
      '   FROM LAUDO L '
      '   JOIN ANIMAL A  ON A.ID=L.ID_MORTE AND A.STATUS=3 '
      '   LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato '
      '   LEFT JOIN PRODUTORES PCTR ON PCTR.ID=cca.ID_PRODUTOR_ORIGEM '
      '   LEFT JOIN GTA g ON g.id=a.GTA_ID '
      '   LEFT JOIN PRODUTORES Pgta ON Pgta.ID= g.ID_PRODUTOR_ORIGEM '
      
        '   LEFT JOIN PRODUTORES Pgtad ON Pgtad.ID= g.ID_PRODUTOR_DESTINO' +
        ' '
      '   JOIN RACA R ON R.ID=A.ID_RACA '
      '   JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA '
      '   JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL '
      '   JOIN AUX_MOTIVO_MORTE ax ON ax.ID=a.ID_MOTIVO_MORTE '
      '   LEFT JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR_ORIGEM '
      '   LEFT JOIN PROPRIEDADES pp ON pp.ID= p.ID_PROPRIEDADE '
      '   JOIN CAPATAZ c2 ON c2.id=l.ID_CAPATAZ '
      '   LEFT JOIN CAPATAZ cEPE ON cEPE.ID=l.ID_CAPATAZ_EPE '
      '   JOIN MEDICO_VETERINARIO mv  ON mv.id=l.ID_VETERINARIO '
      '   JOIN OPERACAO o ON o.id=l.ID_OPERACAO_VIGENTE '
      
        '   LEFT JOIN RESPONSAVEL_RASTREABILIDADE rr ON rr.ID =l.ID_RESPO' +
        'NSAVEL_RAST '
      '   LEFT JOIN GERENTE_OPERACIONAL gop ON gop.ID =l.ID_GERENTE_OP '
      '   WHERE L.STATUS =1 ')
    Left = 464
    Top = 8
    object LAUDOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object LAUDOID_MORTE: TStringField
      FieldName = 'ID_MORTE'
      Origin = 'ID_MORTE'
      Size = 100
    end
    object LAUDOID_VETERINARIO: TIntegerField
      FieldName = 'ID_VETERINARIO'
      Origin = 'ID_VETERINARIO'
    end
    object LAUDOID_CAPATAZ: TIntegerField
      FieldName = 'ID_CAPATAZ'
      Origin = 'ID_CAPATAZ'
    end
    object LAUDOID_OPERACAO_VIGENTE: TIntegerField
      FieldName = 'ID_OPERACAO_VIGENTE'
      Origin = 'ID_OPERACAO_VIGENTE'
    end
    object LAUDOHIST_ANTE_MORTEM: TStringField
      FieldName = 'HIST_ANTE_MORTEM'
      Origin = 'HIST_ANTE_MORTEM'
      Size = 500
    end
    object LAUDODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object LAUDOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object LAUDOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object LAUDOPRODUTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOIDENTIFICACAO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object LAUDOIDENTIFICACAO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object LAUDODATA_MORTE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MORTE'
      Origin = 'DATA_SAIDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LAUDORACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOULTIMO_LOCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMO_LOCAL'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOMOTIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOVALOR_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LAUDOCONTRATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTRATO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LAUDOCAPATAZ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAPATAZ'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOVETERINARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VETERINARIO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOIDADE_MORTE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LAUDODATA_ENTRADA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_PROC'
      ProviderFlags = []
      ReadOnly = True
    end
    object LAUDOCRM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CRM'
      Origin = 'CRM'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object LAUDOCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object LAUDOPRPRIEDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRPRIEDADE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LAUDOSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object LAUDOTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object LAUDOPRODUTORDESTINO: TStringField
      FieldName = 'PRODUTORDESTINO'
      Origin = 'PRODUTORDESTINO'
      Size = 100
    end
    object LAUDORESPONSAVEL_RASTREABILIDADE: TStringField
      FieldName = 'RESPONSAVEL_RASTREABILIDADE'
      Origin = 'RESPONSAVEL_RASTREABILIDADE'
      Size = 100
    end
    object LAUDOGERENTE_OPERACIONAL: TStringField
      FieldName = 'GERENTE_OPERACIONAL'
      Origin = 'GERENTE_OPERACIONAL'
      Size = 100
    end
    object LAUDOID_GERENTE_OP: TIntegerField
      FieldName = 'ID_GERENTE_OP'
      Origin = 'ID_GERENTE_OP'
    end
    object LAUDOID_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'ID_RESPONSAVEL_RAST'
      Origin = 'ID_RESPONSAVEL_RAST'
    end
    object LAUDOID_CAPATAZ_EPE: TIntegerField
      FieldName = 'ID_CAPATAZ_EPE'
      Origin = 'ID_CAPATAZ_EPE'
    end
    object LAUDOCAPATAZ_EPE: TStringField
      FieldName = 'CAPATAZ_EPE'
      Origin = 'CAPATAZ_EPE'
      ReadOnly = True
      Size = 100
    end
    object LAUDOCHECK_ASS_CAPATAZ: TIntegerField
      FieldName = 'CHECK_ASS_CAPATAZ'
      Origin = 'CHECK_ASS_CAPATAZ'
    end
    object LAUDOCHECK_ASS_VETERINARIO: TIntegerField
      FieldName = 'CHECK_ASS_VETERINARIO'
      Origin = 'CHECK_ASS_VETERINARIO'
    end
    object LAUDOCHECK_GERENTE_OP: TIntegerField
      FieldName = 'CHECK_GERENTE_OP'
      Origin = 'CHECK_GERENTE_OP'
    end
    object LAUDOCHECK_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'CHECK_RESPONSAVEL_RAST'
      Origin = 'CHECK_RESPONSAVEL_RAST'
    end
    object LAUDOCHECK_CAPATAZ_EPE: TIntegerField
      FieldName = 'CHECK_CAPATAZ_EPE'
      Origin = 'CHECK_CAPATAZ_EPE'
    end
    object LAUDOCHEKASSCAPATAZ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEKASSCAPATAZ'
      Origin = 'CHEKASSCAPATAZ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object LAUDOCHEKASSVETERINARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEKASSVETERINARIO'
      Origin = 'CHEKASSVETERINARIO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object LAUDOCHEKASSGERENTEOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEKASSGERENTEOP'
      Origin = 'CHEKASSGERENTEOP'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object LAUDOCHEKASSRESPRASTREABILIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEKASSRESPRASTREABILIDADE'
      Origin = 'CHEKASSRESPRASTREABILIDADE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object LAUDOCHEKASSCAPATAZEPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEKASSCAPATAZEPE'
      Origin = 'CHEKASSCAPATAZEPE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object LAUDOCAPATEZASS: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'CAPATEZASS'
      Origin = 'ASSINATURA'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object LAUDOCAPATEZEPEASS: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'CAPATEZEPEASS'
      Origin = 'ASSINATURA'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object LAUDOVETARINARIOASS: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'VETARINARIOASS'
      Origin = 'ASSINATURA'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object LAUDOREPONSAVELASS: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'REPONSAVELASS'
      Origin = 'ASSINATURA'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object LAUDOGERENTEASS: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTEASS'
      Origin = 'ASSINATURA'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object imgLaudo: TFDQuery
    CachedUpdates = True
    OnReconcileError = imgLaudoReconcileError
    Connection = FConImg
    SQL.Strings = (
      'select * from IMG_LAUDO '
      'where status=1 and ID_LAUDO=:id')
    Left = 280
    Top = 40
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object imgLaudoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object imgLaudoID_LAUDO: TIntegerField
      FieldName = 'ID_LAUDO'
      Origin = 'ID_LAUDO'
    end
    object imgLaudoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object imgLaudoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object imgLaudoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object imgLaudoIMG: TMemoField
      FieldName = 'IMG'
      Origin = 'IMG'
      BlobType = ftMemo
    end
    object imgLaudoIMG2: TMemoField
      FieldName = 'IMG2'
      Origin = 'IMG2'
      BlobType = ftMemo
    end
    object imgLaudoIMG3: TMemoField
      FieldName = 'IMG3'
      Origin = 'IMG3'
      BlobType = ftMemo
    end
    object imgLaudoIMG4: TMemoField
      FieldName = 'IMG4'
      Origin = 'IMG4'
      BlobType = ftMemo
    end
    object imgLaudoIMG5: TMemoField
      FieldName = 'IMG5'
      Origin = 'IMG5'
      BlobType = ftMemo
    end
    object imgLaudoIMG6: TMemoField
      FieldName = 'IMG6'
      Origin = 'IMG6'
      BlobType = ftMemo
    end
  end
  object ppRepLaudoFotos: TppReport
    AutoStop = False
    DataPipeline = ppBDEPLaudo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 464
    Top = 232
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPLaudo'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 322528
      mmPrintPosition = 0
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 99750
        mmTop = 149737
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 5823
        mmTop = 149737
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Style = bsClear
        mmHeight = 83620
        mmLeft = 99750
        mmTop = 64559
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Style = bsClear
        mmHeight = 83620
        mmLeft = 5823
        mmTop = 64559
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 38100
        mmLeft = 4498
        mmTop = 24339
        mmWidth = 184944
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NOME_CLIENTE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 11117
        mmTop = 26194
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 28317
        mmTop = 32015
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ENDERECO'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 28315
        mmTop = 42332
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 19320
        mmTop = 37307
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CIDADE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 55303
        mmTop = 37307
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 117480
        mmTop = 37307
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FONE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 26729
        mmTop = 47623
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 11117
        mmTop = 32015
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 11117
        mmTop = 42330
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'CEP :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 11117
        mmTop = 37307
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Telefone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 11117
        mmTop = 47623
        mmWidth = 14553
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Processo N'#176':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 80963
        mmTop = 7408
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 108479
        mmTop = 7408
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'De  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 80963
        mmTop = 13758
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'DATA_MORTE'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 90488
        mmTop = 13758
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Chip :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 11110
        mmTop = 56884
        mmWidth = 9262
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 20635
        mmTop = 56884
        mmWidth = 32810
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'NCF/SISBOV :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 55825
        mmTop = 56884
        mmWidth = 20904
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 76727
        mmTop = 56884
        mmWidth = 32810
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoIMG1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoIMG1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 81500
        mmLeft = 6881
        mmTop = 65882
        mmWidth = 87320
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoIMG2: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoIMG2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 81500
        mmLeft = 100808
        mmTop = 65882
        mmWidth = 87313
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoIMG3: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoIMG3'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83355
        mmLeft = 6881
        mmTop = 151080
        mmWidth = 87320
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoIMG4: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoIMG4'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83090
        mmLeft = 100808
        mmTop = 151080
        mmWidth = 87313
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoLogoCliente2: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoLogoCliente2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13495
        mmLeft = 3175
        mmTop = 2117
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 99749
        mmTop = 237053
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 5822
        mmTop = 237053
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoIMG5: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoIMG5'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83355
        mmLeft = 6880
        mmTop = 238392
        mmWidth = 87320
        BandType = 0
        LayerName = Foreground
      end
      object ppLaudoIMG6: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'LaudoIMG6'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83344
        mmLeft = 100807
        mmTop = 238392
        mmWidth = 87313
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppBDEPLaudo: TppBDEPipeline
    DataSource = dsLaudo
    UserName = 'BDEPLaudo'
    Left = 464
    Top = 184
    object ppBDEPLaudoppField1: TppField
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField2: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField3: TppField
      FieldAlias = 'ID_MORTE'
      FieldName = 'ID_MORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField4: TppField
      FieldAlias = 'ID_VETERINARIO'
      FieldName = 'ID_VETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField5: TppField
      FieldAlias = 'ID_CAPATAZ'
      FieldName = 'ID_CAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField6: TppField
      FieldAlias = 'ID_OPERACAO_VIGENTE'
      FieldName = 'ID_OPERACAO_VIGENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField7: TppField
      FieldAlias = 'HIST_ANTE_MORTEM'
      FieldName = 'HIST_ANTE_MORTEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField8: TppField
      FieldAlias = 'DATAREG'
      FieldName = 'DATAREG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField9: TppField
      FieldAlias = 'ID_USUARIO'
      FieldName = 'ID_USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField10: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField11: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField12: TppField
      FieldAlias = 'ID_GERENTE_OP'
      FieldName = 'ID_GERENTE_OP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField13: TppField
      FieldAlias = 'ID_RESPONSAVEL_RAST'
      FieldName = 'ID_RESPONSAVEL_RAST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField14: TppField
      FieldAlias = 'PRODUTOR'
      FieldName = 'PRODUTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField15: TppField
      FieldAlias = 'PRODUTORDESTINO'
      FieldName = 'PRODUTORDESTINO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField16: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField17: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField18: TppField
      FieldAlias = 'PRPRIEDADE'
      FieldName = 'PRPRIEDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField19: TppField
      FieldAlias = 'IDENTIFICACAO_1'
      FieldName = 'IDENTIFICACAO_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField20: TppField
      FieldAlias = 'IDENTIFICACAO_2'
      FieldName = 'IDENTIFICACAO_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField21: TppField
      FieldAlias = 'DATA_MORTE'
      FieldName = 'DATA_MORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField22: TppField
      FieldAlias = 'RACA'
      FieldName = 'RACA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField23: TppField
      FieldAlias = 'CATEGORIA'
      FieldName = 'CATEGORIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField24: TppField
      FieldAlias = 'ULTIMO_LOCAL'
      FieldName = 'ULTIMO_LOCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField25: TppField
      FieldAlias = 'MOTIVO'
      FieldName = 'MOTIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField26: TppField
      FieldAlias = 'VALOR_VENDA'
      FieldName = 'VALOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField27: TppField
      FieldAlias = 'CONTRATO'
      FieldName = 'CONTRATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField28: TppField
      FieldAlias = 'CAPATAZ'
      FieldName = 'CAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField29: TppField
      FieldAlias = 'VETERINARIO'
      FieldName = 'VETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField30: TppField
      FieldAlias = 'CRM'
      FieldName = 'CRM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField31: TppField
      FieldAlias = 'OPERACAO'
      FieldName = 'OPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField32: TppField
      FieldAlias = 'DATA_ENTRADA'
      FieldName = 'DATA_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField33: TppField
      FieldAlias = 'IDADE_MORTE'
      FieldName = 'IDADE_MORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField34: TppField
      FieldAlias = 'RESPONSAVEL_RASTREABILIDADE'
      FieldName = 'RESPONSAVEL_RASTREABILIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField35: TppField
      FieldAlias = 'GERENTE_OPERACIONAL'
      FieldName = 'GERENTE_OPERACIONAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField36: TppField
      FieldAlias = 'ID_CAPATAZ_EPE'
      FieldName = 'ID_CAPATAZ_EPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField37: TppField
      FieldAlias = 'CAPATAZ_EPE'
      FieldName = 'CAPATAZ_EPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField38: TppField
      FieldAlias = 'IDENTIFICACAO'
      FieldName = 'IDENTIFICACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField39: TppField
      FieldAlias = 'RACACATEGORIA'
      FieldName = 'RACACATEGORIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField40: TppField
      FieldAlias = 'FAIXAERA'
      FieldName = 'FAIXAERA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField41: TppField
      FieldAlias = 'PRIMEIROCURRAL'
      FieldName = 'PRIMEIROCURRAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField42: TppField
      FieldAlias = 'CIDADE_ORIGEM'
      FieldName = 'CIDADE_ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField43: TppField
      FieldAlias = 'UF_ORIGEM'
      FieldName = 'UF_ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField44: TppField
      FieldAlias = 'PRPRIEDADE_ORIGEM'
      FieldName = 'PRPRIEDADE_ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField45: TppField
      FieldAlias = 'CHECK_ASS_CAPATAZ'
      FieldName = 'CHECK_ASS_CAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField46: TppField
      FieldAlias = 'CHECK_ASS_VETERINARIO'
      FieldName = 'CHECK_ASS_VETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField47: TppField
      FieldAlias = 'CHECK_GERENTE_OP'
      FieldName = 'CHECK_GERENTE_OP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField48: TppField
      FieldAlias = 'CHECK_RESPONSAVEL_RAST'
      FieldName = 'CHECK_RESPONSAVEL_RAST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField49: TppField
      FieldAlias = 'CHECK_CAPATAZ_EPE'
      FieldName = 'CHECK_CAPATAZ_EPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField50: TppField
      FieldAlias = 'CHEKASSCAPATAZ'
      FieldName = 'CHEKASSCAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField51: TppField
      FieldAlias = 'CHEKASSVETERINARIO'
      FieldName = 'CHEKASSVETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField52: TppField
      FieldAlias = 'CHEKASSGERENTEOP'
      FieldName = 'CHEKASSGERENTEOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField53: TppField
      FieldAlias = 'CHEKASSRESPRASTREABILIDADE'
      FieldName = 'CHEKASSRESPRASTREABILIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField54: TppField
      FieldAlias = 'CHEKASSCAPATAZEPE'
      FieldName = 'CHEKASSCAPATAZEPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField55: TppField
      FieldAlias = 'CAPATEZASS'
      FieldName = 'CAPATEZASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField56: TppField
      FieldAlias = 'CAPATEZEPEASS'
      FieldName = 'CAPATEZEPEASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField57: TppField
      FieldAlias = 'VETARINARIOASS'
      FieldName = 'VETARINARIOASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField58: TppField
      FieldAlias = 'REPONSAVELASS'
      FieldName = 'REPONSAVELASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoppField59: TppField
      FieldAlias = 'GERENTEASS'
      FieldName = 'GERENTEASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
  end
  object dsLaudo: TDataSource
    DataSet = LAUDO_REPORT
    Left = 464
    Top = 128
  end
  object dsConfig: TDataSource
    DataSet = serviceDB.qryConfigPadrao
    Left = 272
    Top = 160
  end
  object BDEPConfig: TppBDEPipeline
    DataSource = dsConfig
    UserName = 'BDEPConfig'
    Left = 344
    Top = 168
    object BDEPConfigppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object BDEPConfigppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTO_FIXO_PADRAO'
      FieldName = 'CUSTO_FIXO_PADRAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object BDEPConfigppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPO_MEDIA_VALOR_KG'
      FieldName = 'TIPO_MEDIA_VALOR_KG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object BDEPConfigppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_PROPRIEDADE'
      FieldName = 'ID_PROPRIEDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object BDEPConfigppField5: TppField
      FieldAlias = 'LOGO'
      FieldName = 'LOGO'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 4
      Searchable = False
      Sortable = False
    end
    object BDEPConfigppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'GMD'
      FieldName = 'GMD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object BDEPConfigppField7: TppField
      FieldAlias = 'DATA_DIARIAS'
      FieldName = 'DATA_DIARIAS'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object BDEPConfigppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'GMD_PADRAO'
      FieldName = 'GMD_PADRAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object BDEPConfigppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONSUMO_PV_PADRAO'
      FieldName = 'CONSUMO_PV_PADRAO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object BDEPConfigppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'FREQ_LIMPA_BEBEDOURO'
      FieldName = 'FREQ_LIMPA_BEBEDOURO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object BDEPConfigppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTOQUE_CHIP'
      FieldName = 'ESTOQUE_CHIP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object BDEPConfigppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_BASE_CAMPO'
      FieldName = 'ID_BASE_CAMPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object BDEPConfigppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPO_OPERACAO_BC'
      FieldName = 'TIPO_OPERACAO_BC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object BDEPConfigppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASE_CAMPO_STATUS'
      FieldName = 'BASE_CAMPO_STATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object BDEPConfigppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORNE_RETRO'
      FieldName = 'FORNE_RETRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object BDEPConfigppField16: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 500
      DisplayWidth = 500
      Position = 15
    end
    object BDEPConfigppField17: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 16
    end
    object BDEPConfigppField18: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object BDEPConfigppField19: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object BDEPConfigppField20: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object BDEPConfigppField21: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object BDEPConfigppField22: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 21
    end
    object BDEPConfigppField23: TppField
      FieldAlias = 'LOGO_2'
      FieldName = 'LOGO_2'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
  object dsRelSanidade: TDataSource
    DataSet = TableAnimalSanidade
    Left = 608
    Top = 56
  end
  object ppReportSanidadeAnalitico: TppReport
    AutoStop = False
    DataPipeline = ppReportRelSani
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 608
    Top = 184
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppReportRelSani'
    object ppHeaderBand8: TppHeaderBand
      BeforePrint = ppHeaderBand8BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 56092
      mmPrintPosition = 0
      object ppShape93: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape93'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 74556
        mmTop = 50535
        mmWidth = 32778
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape94: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape604'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 39952
        mmTop = 38894
        mmWidth = 36513
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape95: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape95'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 529
        mmTop = 38894
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label104'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Chip'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 794
        mmTop = 39423
        mmWidth = 38365
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label105'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SISBOV/NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 40217
        mmTop = 39423
        mmWidth = 35190
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 37042
        mmWidth = 196571
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label106'
        Border.mmPadding = 0
        Caption = 'Historico Sanit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7673
        mmLeft = 1058
        mmTop = 27780
        mmWidth = 56621
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label107'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Local '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 74556
        mmTop = 51329
        mmWidth = 32778
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape87: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape87'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 107895
        mmTop = 50272
        mmWidth = 35428
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label108'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Farmaco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 107895
        mmTop = 51331
        mmWidth = 35428
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape88: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape88'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 143879
        mmTop = 50271
        mmWidth = 17959
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label109'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Dose'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 143879
        mmTop = 51329
        mmWidth = 17959
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape89: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape89'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 524
        mmTop = 50534
        mmWidth = 23295
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label110'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 1054
        mmTop = 51327
        mmWidth = 22765
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape90: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape90'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 24075
        mmTop = 50533
        mmWidth = 50060
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label1101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Motivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 24604
        mmTop = 51327
        mmWidth = 49530
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape91: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape91'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 162662
        mmTop = 50268
        mmWidth = 33594
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label112'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Car'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 162662
        mmTop = 51327
        mmWidth = 33594
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText59'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 789
        mmTop = 45247
        mmWidth = 38358
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText60'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 39683
        mmTop = 45247
        mmWidth = 36522
        BandType = 0
        LayerName = Foreground6
      end
      object ppImgHistSaniLogo: TppImage
        DesignLayer = ppDesignLayer8
        UserName = 'ImgHistSaniLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13495
        mmLeft = 2117
        mmTop = 2381
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground6
      end
    end
    object ppDetailBand8: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText61'
        Border.mmPadding = 0
        DataField = 'LOCALATUALNOME'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 74560
        mmTop = 264
        mmWidth = 32799
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText62'
        Border.mmPadding = 0
        DataField = 'FARMACONOME'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 107897
        mmTop = 264
        mmWidth = 35449
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText63'
        Border.mmPadding = 0
        DataField = 'DOSE_ML'
        DataPipeline = ppReportRelSani
        DisplayFormat = '####,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 143879
        mmTop = 264
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText64'
        Border.mmPadding = 0
        DataField = 'DATA_APLICACAO'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 1058
        mmTop = 264
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText65'
        Border.mmPadding = 0
        DataField = 'MOTIVO'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 24077
        mmTop = 264
        mmWidth = 50006
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText66'
        Border.mmPadding = 0
        DataField = 'CARENCIA_DATA'
        DataPipeline = ppReportRelSani
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppReportRelSani'
        mmHeight = 4763
        mmLeft = 162660
        mmTop = 264
        mmWidth = 33600
        BandType = 4
        LayerName = Foreground6
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line19'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 529
        mmTop = 5556
        mmWidth = 196968
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppFooterBand8: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line18'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 528
        mmLeft = 0
        mmTop = 265
        mmWidth = 197365
        BandType = 8
        LayerName = Foreground6
      end
      object ppLabel114: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label114'
        Border.mmPadding = 0
        Caption = 'comercial@fieldtec.agr.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 1323
        mmWidth = 32809
        BandType = 8
        LayerName = Foreground6
      end
      object ppSystemVariable15: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable15'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 1323
        mmWidth = 17463
        BandType = 8
        LayerName = Foreground6
      end
      object ppSystemVariable16: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable16'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 179123
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground6
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ID_ANIMAL'
      DataPipeline = ppReportRelSani
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppReportRelSani'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object ppReportRelSani: TppDBPipeline
    DataSource = dsRelSanidade
    UserName = 'ReportRelSani'
    Left = 608
    Top = 112
    object ppReportRelSanippField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppReportRelSanippField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_ANIMAL'
      FieldName = 'ID_ANIMAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppReportRelSanippField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_FARMACO'
      FieldName = 'ID_FARMACO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppReportRelSanippField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_PROTOCOLO'
      FieldName = 'ID_PROTOCOLO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppReportRelSanippField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOSE_ML'
      FieldName = 'DOSE_ML'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppReportRelSanippField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_PROPRIEDAE'
      FieldName = 'ID_PROPRIEDAE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppReportRelSanippField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_LOCAL_ATUAL'
      FieldName = 'ID_LOCAL_ATUAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppReportRelSanippField8: TppField
      FieldAlias = 'DATA_APLICACAO'
      FieldName = 'DATA_APLICACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object ppReportRelSanippField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPO_APLICACAO'
      FieldName = 'TIPO_APLICACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppReportRelSanippField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_RESPONSAVEL_APLICACAO'
      FieldName = 'ID_RESPONSAVEL_APLICACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppReportRelSanippField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_USUARIO'
      FieldName = 'ID_USUARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppReportRelSanippField12: TppField
      FieldAlias = 'DATAREG'
      FieldName = 'DATAREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 11
    end
    object ppReportRelSanippField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppReportRelSanippField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPO_TRATAMENTO'
      FieldName = 'TIPO_TRATAMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppReportRelSanippField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_RESPONSAVEL_APLI_DIREITO'
      FieldName = 'ID_RESPONSAVEL_APLI_DIREITO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppReportRelSanippField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARENCIA_DIAS'
      FieldName = 'CARENCIA_DIAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppReportRelSanippField17: TppField
      FieldAlias = 'CARENCIA_DATA'
      FieldName = 'CARENCIA_DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 16
    end
    object ppReportRelSanippField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_USUARIO_ALTERACAO'
      FieldName = 'ID_USUARIO_ALTERACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppReportRelSanippField19: TppField
      FieldAlias = 'DATA_ULTIMA_ALTERACAO'
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 18
    end
    object ppReportRelSanippField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORIGEM_DADOS'
      FieldName = 'ORIGEM_DADOS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppReportRelSanippField21: TppField
      FieldAlias = 'FARMACONOME'
      FieldName = 'FARMACONOME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object ppReportRelSanippField22: TppField
      FieldAlias = 'PROTOCOLONOME'
      FieldName = 'PROTOCOLONOME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 21
    end
    object ppReportRelSanippField23: TppField
      FieldAlias = 'LOCALATUALNOME'
      FieldName = 'LOCALATUALNOME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 22
    end
    object ppReportRelSanippField24: TppField
      FieldAlias = 'RESPONSAVELAPLICACAO'
      FieldName = 'RESPONSAVELAPLICACAO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 23
    end
    object ppReportRelSanippField25: TppField
      FieldAlias = 'IDENTIFICACAO_1'
      FieldName = 'IDENTIFICACAO_1'
      FieldLength = 25
      DisplayWidth = 25
      Position = 24
    end
    object ppReportRelSanippField26: TppField
      FieldAlias = 'IDENTIFICACAO_2'
      FieldName = 'IDENTIFICACAO_2'
      FieldLength = 25
      DisplayWidth = 25
      Position = 25
    end
    object ppReportRelSanippField27: TppField
      FieldAlias = 'TIPO_TRATAMENTO_STR'
      FieldName = 'TIPO_TRATAMENTO_STR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppReportRelSanippField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_MOTIVO_APLICACAO'
      FieldName = 'ID_MOTIVO_APLICACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppReportRelSanippField29: TppField
      FieldAlias = 'MOTIVO'
      FieldName = 'MOTIVO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
  end
  object TableAnimalSanidade: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select'
      ' an.*,'
      ' fa.nome FarmacoNome,'
      ' pr.nome ProtocoloNome,'
      ' cu.codigo LocalAtualNome,'
      ' us.name ResponsavelAplicacao,'
      ' a.identificacao_1,'
      ' a.identificacao_2,'
      'case an.tipo_tratamento'
      '  when 1 then '#39'PREVENTIVO'#39
      '  when 2 then '#39'TRATAMENTO'#39
      ' end tipo_tratamento_str,'
      'axm.motivo'
      'from animal_sanidade an'
      'join farmaco fa on fa.id=an.id_farmaco'
      
        'join animal a on a.id=an.id_animal and a.id_propriedade=an.id_pr' +
        'opriedae'
      'left join protocolo_sanitario pr on pr.id=an.id_farmaco'
      'join currais cu on cu.id=an.id_local_atual'
      'join users us on us.id=an.id_responsavel_aplicacao'
      
        'left join AUX_MOTIVO_APLICACAO axm on axm.id=an.ID_MOTIVO_APLICA' +
        'CAO'
      'where an.status=1 and an.ID_ANIMAL=:id'
      ''
      '')
    Left = 608
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object TableAnimalSanidadeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TableAnimalSanidadeID_ANIMAL: TIntegerField
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object TableAnimalSanidadeID_FARMACO: TIntegerField
      FieldName = 'ID_FARMACO'
      Origin = 'ID_FARMACO'
      Required = True
    end
    object TableAnimalSanidadeID_PROTOCOLO: TIntegerField
      FieldName = 'ID_PROTOCOLO'
      Origin = 'ID_PROTOCOLO'
    end
    object TableAnimalSanidadeDOSE_ML: TFMTBCDField
      FieldName = 'DOSE_ML'
      Origin = 'DOSE_ML'
      Required = True
      Precision = 18
      Size = 2
    end
    object TableAnimalSanidadeID_PROPRIEDAE: TIntegerField
      FieldName = 'ID_PROPRIEDAE'
      Origin = 'ID_PROPRIEDAE'
      Required = True
    end
    object TableAnimalSanidadeID_LOCAL_ATUAL: TIntegerField
      FieldName = 'ID_LOCAL_ATUAL'
      Origin = 'ID_LOCAL_ATUAL'
      Required = True
    end
    object TableAnimalSanidadeDATA_APLICACAO: TDateField
      FieldName = 'DATA_APLICACAO'
      Origin = 'DATA_APLICACAO'
      Required = True
    end
    object TableAnimalSanidadeTIPO_APLICACAO: TIntegerField
      FieldName = 'TIPO_APLICACAO'
      Origin = 'TIPO_APLICACAO'
      Required = True
    end
    object TableAnimalSanidadeID_RESPONSAVEL_APLICACAO: TIntegerField
      FieldName = 'ID_RESPONSAVEL_APLICACAO'
      Origin = 'ID_RESPONSAVEL_APLICACAO'
    end
    object TableAnimalSanidadeID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object TableAnimalSanidadeDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object TableAnimalSanidadeSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object TableAnimalSanidadeTIPO_TRATAMENTO: TIntegerField
      FieldName = 'TIPO_TRATAMENTO'
      Origin = 'TIPO_TRATAMENTO'
      Required = True
    end
    object TableAnimalSanidadeID_RESPONSAVEL_APLI_DIREITO: TIntegerField
      FieldName = 'ID_RESPONSAVEL_APLI_DIREITO'
      Origin = 'ID_RESPONSAVEL_APLI_DIREITO'
    end
    object TableAnimalSanidadeCARENCIA_DIAS: TIntegerField
      FieldName = 'CARENCIA_DIAS'
      Origin = 'CARENCIA_DIAS'
      Required = True
    end
    object TableAnimalSanidadeCARENCIA_DATA: TDateField
      FieldName = 'CARENCIA_DATA'
      Origin = 'CARENCIA_DATA'
    end
    object TableAnimalSanidadeID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TableAnimalSanidadeDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object TableAnimalSanidadeORIGEM_DADOS: TIntegerField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
      Required = True
    end
    object TableAnimalSanidadeFARMACONOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FARMACONOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TableAnimalSanidadePROTOCOLONOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLONOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TableAnimalSanidadeLOCALATUALNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALATUALNOME'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TableAnimalSanidadeRESPONSAVELAPLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESPONSAVELAPLICACAO'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TableAnimalSanidadeIDENTIFICACAO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object TableAnimalSanidadeIDENTIFICACAO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object TableAnimalSanidadeTIPO_TRATAMENTO_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_TRATAMENTO_STR'
      Origin = 'TIPO_TRATAMENTO_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object TableAnimalSanidadeID_MOTIVO_APLICACAO: TIntegerField
      FieldName = 'ID_MOTIVO_APLICACAO'
      Origin = 'ID_MOTIVO_APLICACAO'
    end
    object TableAnimalSanidadeMOTIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object ppRepLaudo2: TppReport
    AutoStop = False
    DataPipeline = ppBDEPLaudo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 456
    Top = 288
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPLaudo'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 280459
      mmPrintPosition = 0
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 6615
        mmLeft = 266
        mmTop = 148423
        mmWidth = 196850
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NOME_CLIENTE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 25664
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 20110
        mmTop = 31485
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ENDERECO'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 20108
        mmTop = 41802
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 11113
        mmTop = 36777
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CIDADE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 47096
        mmTop = 36777
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 109273
        mmTop = 36777
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FONE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 18522
        mmTop = 47093
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 31485
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 2910
        mmTop = 41800
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'CEP :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 36777
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Telefone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 2910
        mmTop = 47093
        mmWidth = 14553
        BandType = 0
        LayerName = Foreground1
      end
      object ppImgLaudo1: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'LaudoLogoCliente'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13495
        mmLeft = 2913
        mmTop = 2910
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Processo N'#176' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 79640
        mmTop = 6350
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 108479
        mmTop = 6350
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Data Doc . : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 10846
        mmTop = 149486
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'DATA_MORTE'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 29634
        mmTop = 149481
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 33073
        mmTop = 135728
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'NCF/SISBOV : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 11113
        mmTop = 141814
        mmWidth = 20637
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 33073
        mmTop = 141814
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Baixa de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 67469
        mmTop = 13494
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Local :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 20373
        mmTop = 57147
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'Navio Opera'#231#227'o : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 62439
        mmWidth = 30162
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data Evento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 67995
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'PRIMEIROCURRAL'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 129117
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'OPERACAO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 62439
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'DATA_MORTE'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 67995
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 265
        mmTop = 76199
        mmWidth = 196850
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        Border.mmPadding = 0
        Caption = 'Dados de Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 78049
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        Border.mmPadding = 0
        Caption = 'Pecuarista : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 83870
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'Fazenda : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 14023
        mmTop = 89161
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Municipio : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 94718
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'PRODUTOR'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 83870
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'PRPRIEDADE_ORIGEM'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 89161
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.mmPadding = 0
        DataField = 'CIDADE_ORIGEM'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 94718
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 99745
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Lote : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 105566
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        Border.mmPadding = 0
        DataField = 'UF_ORIGEM'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 99745
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'CONTRATO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 105566
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 110853
        mmWidth = 196850
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'Dados do Animal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 112445
        mmWidth = 28575
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = 'Ra'#231'a : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 118266
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Entrada Unidade : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 529
        mmTop = 123557
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pasto / Piquete : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 129116
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        Border.mmPadding = 0
        DataField = 'RACA'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 118268
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 123559
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'ULTIMO_LOCAL'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 57150
        mmWidth = 162984
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'Sexo : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 67469
        mmTop = 118266
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'SEXO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 80698
        mmTop = 118266
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label34'
        Border.mmPadding = 0
        Caption = 'Era : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 118269
        mmTop = 118266
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object pplblEraLaudo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 118266
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label301'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Chip : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1587
        mmTop = 135728
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 529
        mmTop = 52913
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Capataz EPE : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 62971
        mmTop = 149490
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'CAPATAZ_EPE'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 84667
        mmTop = 149486
        mmWidth = 109538
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 174890
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59002
        mmTop = 205317
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'CAPATAZ'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4494
        mmLeft = 59002
        mmTop = 205582
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'VETERINARIO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4763
        mmLeft = 59002
        mmTop = 175684
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Veterinario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 91281
        mmTop = 185738
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Capataz Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 88371
        mmTop = 210344
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'CRM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 180711
        mmWidth = 81227
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 234950
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label701'
        Border.mmPadding = 0
        Caption = 'Gerente Operacional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 83079
        mmTop = 240510
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 265378
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        Border.mmPadding = 0
        Caption = 'Rastreabilidade Animal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 83079
        mmTop = 271729
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText85'
        Border.mmPadding = 0
        DataField = 'GERENTE_OPERACIONAL'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 3964
        mmLeft = 59267
        mmTop = 235744
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText86'
        Border.mmPadding = 0
        DataField = 'RESPONSAVEL_RASTREABILIDADE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4229
        mmLeft = 59267
        mmTop = 266701
        mmWidth = 81492
        BandType = 0
        LayerName = Foreground1
      end
      object ppImgAssVeterinario: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'ImgAssVeterinario'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 160602
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground1
      end
      object ppImgAssCapGeral: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'ImLaudoVenda_Cap_Geral1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 191559
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground1
      end
      object ppImgAssGerenteop: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'ImLaudoVenda_GerenteOP1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59267
        mmTop = 221457
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground1
      end
      object ppImgAssRespRast: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'ImLaudoVenda_RespRast1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59267
        mmTop = 251090
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object LAUDO_VENDA: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' C.SEXO,'
      ' L.*,'
      ' COALESCE(Pgta.nome,PCTR.nome,P.nome) Produtor,'
      ' Pgta.nome ProdutorDestino,'
      ' pp.CIDADE ,'
      ' pp.UF, '
      ' pp.NOME PRPRIEDADE, '
      ' A.IDENTIFICACAO_1,'
      ' A.IDENTIFICACAO_2,'
      ' a.DATA_SAIDA data_morte,'
      ' R.NOME RACA ,'
      ' C.NOME CATEGORIA,'
      ' CU.CODIGO ULTIMO_LOCAL,'
      ' A.VALOR_VENDA,'
      ' cca.NUMERO CONTRATO, '
      ' C2.NOME CAPATAZ,'
      ' MV.NOME VETERINARIO,'
      ' MV.CRM,'
      ' O.NOME OPERACAO,'
      ' A.DATA_PROC DATA_ENTRADA,'
      'ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648) IDADE_MORTE,'
      'rr.NOME Responsavel_Rastreabilidade,'
      'gop.NOME GERENTE_OPERACIONAL,'
      'cEPE.NOME CAPATAZ_EPE,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_CAPATAZ =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_CAPATAZ =1 THEN '#39'SIM'#39
      ' END ChekAssCapataz,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_VETERINARIO =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_VETERINARIO =1 THEN '#39'SIM'#39
      ' END ChekAssVeterinario,'
      ' CASE'
      ' '#9'WHEN CHECK_GERENTE_OP =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_GERENTE_OP =1 THEN '#39'SIM'#39
      ' END ChekAssGerenteOP,'
      ' CASE'
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =1 THEN '#39'SIM'#39
      ' END ChekAssRespRastreabilidade,'
      ' CASE'
      ' '#9'WHEN CHECK_CAPATAZ_EPE =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_CAPATAZ_EPE =1 THEN '#39'SIM'#39
      ' END ChekAssCapatazEPE,'
      'cEPE.ASSINATURA CapatezAss,'
      'c2.ASSINATURA   CapatezEPEAss,'
      'mv.ASSINATURA   VetarinarioAss,'
      'rr.ASSINATURA   ReponsavelAss,'
      'gop.ASSINATURA  GerenteAss  '
      'FROM LAUDO L'
      'JOIN ANIMAL A  ON A.ID=L.ID_MORTE AND A.STATUS=2 '
      'LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato'
      'LEFT JOIN PRODUTORES PCTR ON PCTR.ID=cca.ID_PRODUTOR_ORIGEM'
      'LEFT JOIN GTA g ON g.id=a.GTA_ID '
      'LEFT JOIN PRODUTORES Pgta ON Pgta.ID= g.ID_PRODUTOR_ORIGEM '
      'LEFT JOIN PRODUTORES Pgtad ON Pgtad.ID= g.ID_PRODUTOR_DESTINO '
      'JOIN RACA R ON R.ID=A.ID_RACA'
      'JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA'
      'JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL'
      'LEFT JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR_ORIGEM '
      'LEFT JOIN PROPRIEDADES pp ON pp.ID= p.ID_PROPRIEDADE  '
      'JOIN CAPATAZ c2 ON c2.id=l.ID_CAPATAZ '
      'JOIN CAPATAZ cEPE ON cEPE.ID=l.ID_CAPATAZ_EPE'
      'JOIN MEDICO_VETERINARIO mv  ON mv.id=l.ID_VETERINARIO '
      'JOIN OPERACAO o ON o.id=l.ID_OPERACAO_VIGENTE '
      
        'LEFT JOIN RESPONSAVEL_RASTREABILIDADE rr ON rr.ID =l.ID_RESPONSA' +
        'VEL_RAST'
      'LEFT JOIN GERENTE_OPERACIONAL gop ON gop.ID =l.ID_GERENTE_OP'
      'WHERE L.STATUS =1'
      '')
    Left = 232
    Top = 216
    object LAUDO_VENDASEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object LAUDO_VENDAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object LAUDO_VENDAID_MORTE: TStringField
      FieldName = 'ID_MORTE'
      Origin = 'ID_MORTE'
      Size = 100
    end
    object LAUDO_VENDAID_VETERINARIO: TIntegerField
      FieldName = 'ID_VETERINARIO'
      Origin = 'ID_VETERINARIO'
    end
    object LAUDO_VENDAID_CAPATAZ: TIntegerField
      FieldName = 'ID_CAPATAZ'
      Origin = 'ID_CAPATAZ'
    end
    object LAUDO_VENDAID_OPERACAO_VIGENTE: TIntegerField
      FieldName = 'ID_OPERACAO_VIGENTE'
      Origin = 'ID_OPERACAO_VIGENTE'
    end
    object LAUDO_VENDAHIST_ANTE_MORTEM: TStringField
      FieldName = 'HIST_ANTE_MORTEM'
      Origin = 'HIST_ANTE_MORTEM'
      Size = 500
    end
    object LAUDO_VENDADATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object LAUDO_VENDAID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object LAUDO_VENDASTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object LAUDO_VENDAPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Origin = 'PRODUTOR'
      Size = 100
    end
    object LAUDO_VENDACIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object LAUDO_VENDAUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 15
    end
    object LAUDO_VENDAPRPRIEDADE: TStringField
      FieldName = 'PRPRIEDADE'
      Origin = 'PRPRIEDADE'
      Size = 100
    end
    object LAUDO_VENDAIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object LAUDO_VENDAIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object LAUDO_VENDADATA_MORTE: TDateField
      FieldName = 'DATA_MORTE'
      Origin = 'DATA_MORTE'
    end
    object LAUDO_VENDARACA: TStringField
      FieldName = 'RACA'
      Origin = 'RACA'
      Size = 100
    end
    object LAUDO_VENDACATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 100
    end
    object LAUDO_VENDAULTIMO_LOCAL: TStringField
      FieldName = 'ULTIMO_LOCAL'
      Origin = 'ULTIMO_LOCAL'
      Size = 100
    end
    object LAUDO_VENDAVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object LAUDO_VENDACONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATO'
    end
    object LAUDO_VENDACAPATAZ: TStringField
      FieldName = 'CAPATAZ'
      Origin = 'CAPATAZ'
      Size = 100
    end
    object LAUDO_VENDAVETERINARIO: TStringField
      FieldName = 'VETERINARIO'
      Origin = 'VETERINARIO'
      Size = 100
    end
    object LAUDO_VENDACRM: TStringField
      FieldName = 'CRM'
      Origin = 'CRM'
      Size = 50
    end
    object LAUDO_VENDAOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 100
    end
    object LAUDO_VENDADATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
    end
    object LAUDO_VENDAIDADE_MORTE: TLargeintField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object LAUDO_VENDAPRODUTORDESTINO: TStringField
      FieldName = 'PRODUTORDESTINO'
      Origin = 'PRODUTORDESTINO'
      Size = 100
    end
    object LAUDO_VENDARESPONSAVEL_RASTREABILIDADE: TStringField
      FieldName = 'RESPONSAVEL_RASTREABILIDADE'
      Origin = 'RESPONSAVEL_RASTREABILIDADE'
      Size = 100
    end
    object LAUDO_VENDAGERENTE_OPERACIONAL: TStringField
      FieldName = 'GERENTE_OPERACIONAL'
      Origin = 'GERENTE_OPERACIONAL'
      Size = 100
    end
    object LAUDO_VENDAID_GERENTE_OP: TIntegerField
      FieldName = 'ID_GERENTE_OP'
      Origin = 'ID_GERENTE_OP'
    end
    object LAUDO_VENDAID_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'ID_RESPONSAVEL_RAST'
      Origin = 'ID_RESPONSAVEL_RAST'
    end
    object LAUDO_VENDAID_CAPATAZ_EPE: TIntegerField
      FieldName = 'ID_CAPATAZ_EPE'
      Origin = 'ID_CAPATAZ_EPE'
    end
    object LAUDO_VENDACAPATAZ_EPE: TStringField
      FieldName = 'CAPATAZ_EPE'
      Origin = 'CAPATAZ_EPE'
      ReadOnly = True
      Size = 100
    end
    object LAUDO_VENDACHECK_ASS_CAPATAZ: TIntegerField
      FieldName = 'CHECK_ASS_CAPATAZ'
      Origin = 'CHECK_ASS_CAPATAZ'
    end
    object LAUDO_VENDACHECK_ASS_VETERINARIO: TIntegerField
      FieldName = 'CHECK_ASS_VETERINARIO'
      Origin = 'CHECK_ASS_VETERINARIO'
    end
    object LAUDO_VENDACHECK_GERENTE_OP: TIntegerField
      FieldName = 'CHECK_GERENTE_OP'
      Origin = 'CHECK_GERENTE_OP'
    end
    object LAUDO_VENDACHECK_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'CHECK_RESPONSAVEL_RAST'
      Origin = 'CHECK_RESPONSAVEL_RAST'
    end
    object LAUDO_VENDACHECK_CAPATAZ_EPE: TIntegerField
      FieldName = 'CHECK_CAPATAZ_EPE'
      Origin = 'CHECK_CAPATAZ_EPE'
    end
    object LAUDO_VENDACHEKASSCAPATAZ: TStringField
      FieldName = 'CHEKASSCAPATAZ'
      Origin = 'CHEKASSCAPATAZ'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDACHEKASSVETERINARIO: TStringField
      FieldName = 'CHEKASSVETERINARIO'
      Origin = 'CHEKASSVETERINARIO'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDACHEKASSGERENTEOP: TStringField
      FieldName = 'CHEKASSGERENTEOP'
      Origin = 'CHEKASSGERENTEOP'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDACHEKASSRESPRASTREABILIDADE: TStringField
      FieldName = 'CHEKASSRESPRASTREABILIDADE'
      Origin = 'CHEKASSRESPRASTREABILIDADE'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDACHEKASSCAPATAZEPE: TStringField
      FieldName = 'CHEKASSCAPATAZEPE'
      Origin = 'CHEKASSCAPATAZEPE'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDACAPATEZASS: TMemoField
      FieldName = 'CAPATEZASS'
      Origin = 'CAPATEZASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDACAPATEZEPEASS: TMemoField
      FieldName = 'CAPATEZEPEASS'
      Origin = 'CAPATEZEPEASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDAVETARINARIOASS: TMemoField
      FieldName = 'VETARINARIOASS'
      Origin = 'VETARINARIOASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDAREPONSAVELASS: TMemoField
      FieldName = 'REPONSAVELASS'
      Origin = 'REPONSAVELASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDAGERENTEASS: TMemoField
      FieldName = 'GERENTEASS'
      Origin = 'GERENTEASS'
      BlobType = ftMemo
    end
  end
  object ppRepLaudoVenda: TppReport
    AutoStop = False
    DataPipeline = ppBDEPLaudoVenda
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 296
    Top = 424
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPLaudoVenda'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 323057
      mmPrintPosition = 0
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape5'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 99750
        mmTop = 147621
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape4'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 5823
        mmTop = 147621
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape3'
        Brush.Style = bsClear
        mmHeight = 83620
        mmLeft = 99750
        mmTop = 62969
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        Brush.Style = bsClear
        mmHeight = 83620
        mmLeft = 5823
        mmTop = 62969
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 38100
        mmLeft = 4498
        mmTop = 22223
        mmWidth = 184944
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NOME_CLIENTE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 11117
        mmTop = 24078
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 28317
        mmTop = 29899
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ENDERECO'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 28315
        mmTop = 40216
        mmWidth = 107950
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 19320
        mmTop = 35191
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CIDADE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 55303
        mmTop = 35191
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 117480
        mmTop = 35191
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FONE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 26729
        mmTop = 45507
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 11117
        mmTop = 29899
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 11117
        mmTop = 40214
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'CEP :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 11117
        mmTop = 35191
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Telefone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 11117
        mmTop = 45507
        mmWidth = 14553
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Processo N'#176':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 75671
        mmTop = 3704
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 103188
        mmTop = 3704
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'De  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 75671
        mmTop = 10054
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'DATA_MORTE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 85196
        mmTop = 10054
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Chip :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 11110
        mmTop = 54768
        mmWidth = 9262
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 20635
        mmTop = 54768
        mmWidth = 32810
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'NCF/SISBOV :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 55825
        mmTop = 54768
        mmWidth = 20904
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 76727
        mmTop = 54768
        mmWidth = 32810
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaIMG1: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoIMG1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 81500
        mmLeft = 6881
        mmTop = 64292
        mmWidth = 87320
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaIMG2: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoIMG2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 81500
        mmLeft = 100808
        mmTop = 64292
        mmWidth = 87313
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaIMG3: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoIMG3'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83355
        mmLeft = 6881
        mmTop = 148964
        mmWidth = 87320
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaIMG4: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoIMG4'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83090
        mmLeft = 100808
        mmTop = 148964
        mmWidth = 87313
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaLogoCliente: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoLogoCliente2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13495
        mmLeft = 4498
        mmTop = 1058
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape6'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 99749
        mmTop = 237582
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape7'
        Brush.Style = bsClear
        mmHeight = 85475
        mmLeft = 5822
        mmTop = 237582
        mmWidth = 89694
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaIMG5: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoIMG5'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83355
        mmLeft = 6880
        mmTop = 238922
        mmWidth = 87320
        BandType = 0
        LayerName = Foreground2
      end
      object ppLaudoVendaIMG6: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'LaudoIMG6'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 83344
        mmLeft = 100807
        mmTop = 238922
        mmWidth = 87313
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppBDEPLaudoVenda: TppBDEPipeline
    DataSource = dsLaudoVenda
    UserName = 'BDEPLaudo1'
    Left = 296
    Top = 368
    object ppBDEPLaudoVendappField1: TppField
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField2: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField3: TppField
      FieldAlias = 'ID_MORTE'
      FieldName = 'ID_MORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField4: TppField
      FieldAlias = 'ID_VETERINARIO'
      FieldName = 'ID_VETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField5: TppField
      FieldAlias = 'ID_CAPATAZ'
      FieldName = 'ID_CAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField6: TppField
      FieldAlias = 'ID_OPERACAO_VIGENTE'
      FieldName = 'ID_OPERACAO_VIGENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField7: TppField
      FieldAlias = 'HIST_ANTE_MORTEM'
      FieldName = 'HIST_ANTE_MORTEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField8: TppField
      FieldAlias = 'DATAREG'
      FieldName = 'DATAREG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField9: TppField
      FieldAlias = 'ID_USUARIO'
      FieldName = 'ID_USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField10: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField11: TppField
      FieldAlias = 'ID_GERENTE_OP'
      FieldName = 'ID_GERENTE_OP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField12: TppField
      FieldAlias = 'ID_RESPONSAVEL_RAST'
      FieldName = 'ID_RESPONSAVEL_RAST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField13: TppField
      FieldAlias = 'PRODUTOR'
      FieldName = 'PRODUTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField14: TppField
      FieldAlias = 'PRODUTORDESTINO'
      FieldName = 'PRODUTORDESTINO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField15: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField16: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField17: TppField
      FieldAlias = 'PRPRIEDADE'
      FieldName = 'PRPRIEDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField18: TppField
      FieldAlias = 'IDENTIFICACAO_1'
      FieldName = 'IDENTIFICACAO_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField19: TppField
      FieldAlias = 'IDENTIFICACAO_2'
      FieldName = 'IDENTIFICACAO_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField20: TppField
      FieldAlias = 'DATA_MORTE'
      FieldName = 'DATA_MORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField21: TppField
      FieldAlias = 'RACA'
      FieldName = 'RACA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField22: TppField
      FieldAlias = 'CATEGORIA'
      FieldName = 'CATEGORIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField23: TppField
      FieldAlias = 'ULTIMO_LOCAL'
      FieldName = 'ULTIMO_LOCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField24: TppField
      FieldAlias = 'VALOR_VENDA'
      FieldName = 'VALOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField25: TppField
      FieldAlias = 'CONTRATO'
      FieldName = 'CONTRATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField26: TppField
      FieldAlias = 'CAPATAZ'
      FieldName = 'CAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField27: TppField
      FieldAlias = 'VETERINARIO'
      FieldName = 'VETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField28: TppField
      FieldAlias = 'CRM'
      FieldName = 'CRM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField29: TppField
      FieldAlias = 'OPERACAO'
      FieldName = 'OPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField30: TppField
      FieldAlias = 'DATA_ENTRADA'
      FieldName = 'DATA_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField31: TppField
      FieldAlias = 'IDADE_MORTE'
      FieldName = 'IDADE_MORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField32: TppField
      FieldAlias = 'RESPONSAVEL_RASTREABILIDADE'
      FieldName = 'RESPONSAVEL_RASTREABILIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField33: TppField
      FieldAlias = 'GERENTE_OPERACIONAL'
      FieldName = 'GERENTE_OPERACIONAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField34: TppField
      FieldAlias = 'ID_CAPATAZ_EPE'
      FieldName = 'ID_CAPATAZ_EPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField35: TppField
      FieldAlias = 'CAPATAZ_EPE'
      FieldName = 'CAPATAZ_EPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField36: TppField
      FieldAlias = 'IDENTIFICACAO'
      FieldName = 'IDENTIFICACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField37: TppField
      FieldAlias = 'RACACATEGORIA'
      FieldName = 'RACACATEGORIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField38: TppField
      FieldAlias = 'FAIXAERA'
      FieldName = 'FAIXAERA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField39: TppField
      FieldAlias = 'PRIMEIROCURRAL'
      FieldName = 'PRIMEIROCURRAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField40: TppField
      FieldAlias = 'CIDADE_ORIGEM'
      FieldName = 'CIDADE_ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField41: TppField
      FieldAlias = 'UF_ORIGEM'
      FieldName = 'UF_ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField42: TppField
      FieldAlias = 'PRPRIEDADE_ORIGEM'
      FieldName = 'PRPRIEDADE_ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField43: TppField
      FieldAlias = 'CHECK_ASS_CAPATAZ'
      FieldName = 'CHECK_ASS_CAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField44: TppField
      FieldAlias = 'CHECK_ASS_VETERINARIO'
      FieldName = 'CHECK_ASS_VETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField45: TppField
      FieldAlias = 'CHECK_GERENTE_OP'
      FieldName = 'CHECK_GERENTE_OP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField46: TppField
      FieldAlias = 'CHECK_RESPONSAVEL_RAST'
      FieldName = 'CHECK_RESPONSAVEL_RAST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField47: TppField
      FieldAlias = 'CHECK_CAPATAZ_EPE'
      FieldName = 'CHECK_CAPATAZ_EPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField48: TppField
      FieldAlias = 'CHEKASSCAPATAZ'
      FieldName = 'CHEKASSCAPATAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField49: TppField
      FieldAlias = 'CHEKASSVETERINARIO'
      FieldName = 'CHEKASSVETERINARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField50: TppField
      FieldAlias = 'CHEKASSGERENTEOP'
      FieldName = 'CHEKASSGERENTEOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField51: TppField
      FieldAlias = 'CHEKASSRESPRASTREABILIDADE'
      FieldName = 'CHEKASSRESPRASTREABILIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField52: TppField
      FieldAlias = 'CHEKASSCAPATAZEPE'
      FieldName = 'CHEKASSCAPATAZEPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField53: TppField
      FieldAlias = 'CAPATEZASS'
      FieldName = 'CAPATEZASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField54: TppField
      FieldAlias = 'CAPATEZEPEASS'
      FieldName = 'CAPATEZEPEASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField55: TppField
      FieldAlias = 'VETARINARIOASS'
      FieldName = 'VETARINARIOASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField56: TppField
      FieldAlias = 'REPONSAVELASS'
      FieldName = 'REPONSAVELASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppBDEPLaudoVendappField57: TppField
      FieldAlias = 'GERENTEASS'
      FieldName = 'GERENTEASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
  end
  object dsLaudoVenda: TDataSource
    DataSet = LAUDO_VENDA_REPORT
    Left = 296
    Top = 312
  end
  object ppRepLaudoVenda2: TppReport
    AutoStop = False
    DataPipeline = ppBDEPLaudoVenda
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 296
    Top = 472
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPLaudoVenda'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand4BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 278871
      mmPrintPosition = 0
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 6615
        mmLeft = 266
        mmTop = 149752
        mmWidth = 196850
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NOME_CLIENTE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 28053
        mmWidth = 107950
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 20110
        mmTop = 33874
        mmWidth = 107950
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ENDERECO'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 20108
        mmTop = 44191
        mmWidth = 107950
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 11113
        mmTop = 39166
        mmWidth = 34660
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CIDADE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 47096
        mmTop = 39166
        mmWidth = 60854
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 109273
        mmTop = 39166
        mmWidth = 10319
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FONE'
        DataPipeline = BDEPConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPConfig'
        mmHeight = 4498
        mmLeft = 18522
        mmTop = 49482
        mmWidth = 34660
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 33874
        mmWidth = 16933
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 2910
        mmTop = 44189
        mmWidth = 15875
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'CEP :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 39166
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Telefone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 2910
        mmTop = 49482
        mmWidth = 14553
        BandType = 0
        LayerName = BandLayer5
      end
      object ppImgLaudoVenda1: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'LaudoLogoCliente'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D616765452A0000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108007D00FF030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FDFCA8E7A92A39CE28029C974B6F1AC99F2E3A85F59B5B9BB7855E379234
          DFE5FF005AF88BF6BFFDB1F5DD524F8B5E0FD3D64D263F0B456BE45EDB4BFBD9
          3F7B179BFF00A32B9DF08EBFE38F0178FE6F8A97BF6DD5747B1F01DADCB3B5FF
          00EEAF27F2B6FF00E8DF37FEFAAFA3A7C3B5FD92AB2FB5B1F9D62BC40A1F5A96
          1A8C39BD9FC67E84F98B70FB77C7B6AC245E48E2BE1CF0FF00EDDDE27D63E307
          82EF24B59AD7C29A978565D5B52816D7CDD8D179BE67EF7FED957D27FB367ED1
          5A6FED15F0B74CF1259C72598D437C7F679BFD68743F357163329C46197EF0FA
          0CA78AB078FF00729C8F54A2AB5BDF79B52F9F5E49F4A49451466800A28AC7D7
          3C4B63E17D1EEAFB509A3B5B1B38BCD96593E58A38E806ECAECD1F2D644DB42C
          5E5FDD5AF903C55FF0571F0C5B6B9736DE1CF0AF8ABC516D67FEB6F6D20D908F
          FBEABD7BF670FDB3BC23FB4CF87EFAEB489AE2D67D2F8BEB5BD8FCA9AD7FDE15
          E7C332A129F2464793473CC1D59FB2A733D813694DBF7A9D8D836AD7C91E3BFF
          0082B2F83F44F135CE9BE19D07C41E2FFB1FC92DC69906E87FE00DFC55DFFECD
          5FB7A7837F6969E7D3EC64B9D3B5BB35DF2E9F7A36CA07AA7F7FFE03453CCA85
          49F229934F3EC04EA7B08543DE377B53C8F30D793E8DFB55F86EF7E3FEA7F0E6
          4692D35ED3ED62BC4F386D4BA597FE79D7A35E6B56DA7E9F25CCF2431C10A6F9
          1E4FE04AEAA75A94BE13D0862A94BE165F388CFF0076862B1D78A782FF006CBF
          0CFC43F855E30F17E9905EDC693E129EE6279157FE3F04112CACF17FB3F3578E
          5BFF00C164BC225BCE9BC27E324B2FF9F836F0795FFA36B9EA66786A5F1CCF36
          B710606972F3CBE23ECE3B63FF00669FFED0AF38F821F1F7C35FB45F8263D7BC
          3B7FF68B7F33CB955D364B0C9FDC75FE16AC9FF86B2F0D8FDA5BFE157FCEBAD7
          D83EDDE6FF00CB2DFF007BC8FF00AEBE57EF7FDDAE8FAD5270F6973BBFB430DC
          909F3FC67AD9DA8BFECD22ED65FF0066B8CF8DBF17AD7E0E7C2DD6BC51796973
          756DA2DAB5D496F0AFEF64DBDA9FF07FE32683F1A7C1165E22D06F21BAD33504
          DCB203D3FD8A3DB439FD99A7D6A8FB4F657F78EC847ED474AF16F879FB6168DF
          12BE3CF8B7E1FDB69FA85BEA5E0FDBE7DC4AA9E54DBBFB94BF027F6BAD0FF682
          F1978B347D3F4DD4ACAE3C1B75F63B892754F2A66DECBF27FDFAACFEB74A4634
          F32C3CBED9ED279EF40FAD78A7C56FDB1344F845F18FC23E0CBCD3750B8BEF18
          4BE55BDC4013C987F79B3F794ED7BF6BFD1FC3FF00B4B68DF0BE4D37559355D6
          ACFED915DA2A7D9E15FDEFFF001A6AAFAD403FB4F0B7E5E63DA2493647D288E5
          DC9D2B9CF88DF10AC7E1B7846FB5CD4A5FB3D869B6EF713C927DD555AE7BF673
          FDA0349FDA33E17D8F8A3495921B7BC5D925BCDFEB6D65F97744D55EDA1CFEC8
          DBEB54BDAFB0BFBE7A45151D495B1D05770AC3737DD5AC3F1BF8EB4DF04680DA
          86A7731D9DBC67619247F96B62E66510AB32FCB5F08FFC144BF68AD0BE317C1A
          F16685A5DC3C971E11D7ED60BB568BBFFF00BDAF4B2DC0CB155D533E6F88F388
          65D8394BED9C5EBDF0967F8FFF00B54FC72F0D69B3C36F7BA85B2BC5249FBD57
          F29ED65AFB06F3F66EFED1FD92D7E1DDD5E6EBAFEC38B4F6BB8D3F8E251F37FD
          F55E75FB20FECDFAA7823E386B3F1127BE86E34CF116896AB6F16CFDEFFAA8BF
          F8DD7D44668DE55555F9996BD6CFB35A9ED69E1F0F2F769F29F2FC1BC3B49D0A
          D8AC5D3FDE55E6FF00C04F9FAEBE0ADAFC15FD87B50D1646FB55D68DE16B9B69
          67913AEF8B7CB5F167C0CF1C6A5E19D6FE0B2DADF5D430C72EA175F668E5FDCC
          DFBD96BF48BF682F0E5C78A3E0878B34CB14F3AF352D32E2DE28FF00E7A3B445
          45782FEC59FB23DAC9F02BC1F71E2FD123B5D7B47FB77D97CCFF005B0C52D77E
          4F9D51A384A93C5FBFCF23C5E28E17C557CC28D2CBBF77C90FFDB8F3DF82FF00
          F0518F155B787BC149AE69B67AA5D7893C4173A74B73FEABC98BF75FFC77FF00
          2157D47FB387ED41A37ED296FAF49A45BDE5BAE837EF612FDA22F2BCCDBFC6B5
          F3BF8EFF00E09DB71E12BFF87F1F86AE924D3F45D765BFBF6BB97CD97E6689FF
          00F408ABC83F668FDA5EFBF66DF036A779A7E9BF6C9B5CF1AC7672C52CBE57EE
          BCAAEBC4E5182CC6854A996FF10E6CBF88B36C971B4E867553F767E9F52E3FD9
          AF06D23F6EFF00023CDE22FB66AE9A743E18D522D3AE64B91E52BC92AFFF0015
          E67FDFAAF5FD1BC496BAB3FEE2EA0B86DBE6E237FE06FB95F0B5B0788A5FC581
          FAEE0F38C2627F8550D7327C8D5F25FF00C15E3C57A8787FF666FB3D9C93431E
          B1A8416B75247DA26AFABDAE06578FBD5C17C7FF00815A4FC7FF00863A9785F5
          45916DF505DBE645FEB51FFE7AD7938FA33AD4254E999E7187A988C154A14BE2
          307F64FF00869A17803E067866D343B7B38EC6F34D86EE79628BFE3E647897F7
          9F8D79DFFC143B4AB3F865FB24F8D2F7C3BA6DB69D79AD4B125ECF6510495925
          976B4AFF00F7D37E75E5BE13F84FFB4C7ECE760BE1AF0BDC687E2AF0DD9FCB61
          2DDCB144D1C5FDDAF5EF829FB3778F3C5DF0EFC51A6FC64F1143AFAF8B13FE41
          B6ABB61D37FD98A4AF3BDE951F61ECCF9CA32FACE0FEA30A1C8F9394D4FF0082
          7A7C32D17C17FB3078666D361B79E6D62D56FEF261FF002DA597E666AF01FDB8
          FC3767F0B7F6D6F85BE20F0F471C3AE6B1A8A477F1C1F27DA57CD8A25FFC7659
          6AC785BE01FED15FB2699F40F02DC68DE26F0C6FDF6BF6B936B5BFFB3B9DABAE
          FD9EFF00629F16F893E3343F12FE2E6AF6FA97882D7FE3C2C2D1FF00D1EDBFFD
          D5727B19D4A14E853A7CA79CF0F531385A780A74792A40F19FDB03E1F6BDF103
          FE0A197B67E15BF92C7C4167A4C3AB584C9FF3D628BFD5D1E21FDA5BE217ED9F
          E1C87E1DE9F67368571656EEFE2EBCFE18FCADBF2AFF00BCDFF2CEBE8AFF0086
          67F13C9FF051AFF8583F67B5FF00844BFB2FECFE67DABF7BE6F95E57FAAAF6CD
          63E15E8BA4691E24B8D2749B0B5D5BC4513B4F2AC5B24BB97CADABE63543CA6B
          4FDA7B3F702970EE2A7EDAA7B4E4F7A47C61FB17112FFC1397E25FA99752FF00
          D238AB0FF653FDBABC09F04FF662B3F0AF882DAFAF3558C5CAB5BC763E6C5379
          B2B7FCB4E9FC55EC3FB32FECA1E32F871FB1578E3C23AC43A7C3E22D6BEDBF60
          8E3B8F361FDEC5E545FEEFDDAEE3F625FD963FE1547C08D2B4EF18685A1AF892
          DE595E595624B86FF5BFBBFDE5451CBF11FBBE5FE431C0E4B8F93A2A3EEFB878
          97FC13E2EEEBF67AF801F103E207882CEE349D2279DAF2D2D9FF0075E6AC4ACB
          B53FE05B62FF0080D78CFF00C2B9F19CBF0AE3FDA21A699B5CFF008483FB55A3
          DBF2FD97CDFBFF00FB4ABEB9FDBCBE0478D7F68E83C33E10F0DA5ADAF856E6EB
          CDD66EA5BAF2DBCAFEEF97FC55EE51FC1BD17FE151FF00C21BF658DB43FECDFE
          CBF236FF00CB0F2FCADBFF007CD69FD9BEEFB1FE4FFD28EB970DD6AD0FAB7D9A
          7FFA59E4BFB407C50D3FE367FC13E3C4BE28D30FFA3EABA134F0AFF71BFCFF00
          2AF907F669F1478BFF00636F02F87FE255AAC9AD7C39F160F2B5CB28D7FE3C25
          F37CAF3EBDA3E18FEC8FF143C07FB3D7C4CF86F73069F75A5DE79BFF0008E5CF
          DBFE69F77FCF5FF9E55EE1FB26FECFB75E03FD95748F05F8D2C74F9AE3C9920B
          DB3DFE6C452594F1FAD4BC1E22AD7A75FED7210F2DC6E638BA7564BD9CA9C3E2
          FEF1F3DFEC3BE2FB0F1D7EDFFF001535CD3EE96F2CF58B013DB483FB9BE2AF3B
          F805F15BC7DF0B3E3AFC566F02F837FE12E92EB5B95AF63DFB7C9FDECFE557D1
          1FB2AFEC4B7BFB35FED3DE26D574F93ED5E0FD634C11D9798FFBDB597CDFF54F
          5A1FB107ECDBE24F83BF173E296ADE20B6B35B3F126A3F69B068EE3CDF313CD9
          DFE6FF00BFB530C0626A7B3F69FCE73E1727C754546157DC9A9C8F9BBC63F13F
          C71F13BF6CEF84F73E39F08FFC21F796BA8A25AC1BF779C9E6D7AAFC4A3FF1B7
          EF03FF0077FB18FF00E8B9ABBCFDA93F66BF137C49FDAD7E18789B47B5B39345
          F0ECBE6DFB4971E54A9FBCDFF2D278F3F670F137893FE0A1BE17F8816D6F6C3C
          2BA5E9AD0CAFF6AFDF79BE54ABFEAFFEDAD692C0E269BFFB7E25FF00656268BA
          9FF2F3F7B139CFF82917C47D43C7FE23F0A7C1AF0EC9B756F185FA3DFB2F1E4D
          A2FF009FFC855CB7EC71ABCFFB1BFED61AF7C22D4EE249340F11F9575A1C9337
          597CAF9BF197FF006857A1FECC7FB33F8C2DFF006A4F177C4EF8856F630EA1A9
          3791A45B4375F6AFB1C5F32EDFFBE36D5EFDBE7F654D73E355A7877C49E076B7
          87C63E15BF8AE2D9E497CADE9FC5FBCADA783C44AACB17FD729DB572DC655ABF
          DA50FE2467FF00921F4FDA7FAAA9DFAD73BF0F27D5AFBC17A6CDADDBC169AC4D
          6B17DB6DE293CD8A397FE5A2AD744FD6BE98FBCA7F094EE22F322DADFC486BE1
          FF00D9B3E145B5DFED25F1734DF18E9263D2BC47AB7FA0437A9FB9BC78A5965F
          DDFF003FC2BEE6946467FD9AF8E3F6D6F841E22F117ED6FF0008F56D2B4D92EB
          4FD36F2496EAE51BFE3DFCAFDEFF00E81BAB4FED69E0285474FED1F27C5597F3
          FB1C4FB3E7F667D756023B3B4F2E08FCB8E3FB91D5F8FE74566FBD5F05FECD7F
          F0506BAF077C34D6B5AF1C4E2E23B9F17FF665AFD92D7FE7AFEF5EBEF0B1B817
          36B1B81C3F35E6E0330A78C87B4A67B394E7186C6D2FF672697FD4D450C1E40F
          2FCBFDDD59A0F22BB8F5CC9D65B36B3FFB9C57E49E89E1AD4B5CF8611B69FA6D
          E5D4B0F8FF00F7BF668BCDFF009655FAE6F12C8EC8DD96BCF3E137ECDBE15F82
          B6FAA41A369F0C31EADA936AB3FF00D75FE0AFA4C833BFECD8D4944F80E2CE11
          9E79569B94ED08731F0F7C7AFD903C65E10F0678EAF3FB3FFB5175EF155ACF6B
          0D97EF67F23F7BFF00C76B1F51F8C1E21F82BE3CF8D5AA69773247AA5BDB5ADB
          2472FEFBC9FDEC517FAAAFD37BF8A2B981966F2DA161F3EF5AF8BFF6EEFD98B4
          9F0EF833E216B3E17B5D42FF00C4DE2DFB35FDD59432F9BFBA8A58BCC97CAAF6
          B2CE28A58A97D5B1CBFAD0F8EE22E0AAD97D2FADE5953FAD4EE7F676FDB4355F
          8A7F1CE1F06EA1A5C10C7FF08FDB6A8F731B7FCB668E27957FF22D7A8FED51FB
          40DB7ECD3F07351F155C4125D3598F2EDEDD7FE5B4AEDFBB5AF2AFD963F642BE
          F057C53D3FC75797734725C786ED2CE7D3648BFD4CDE52A4BFFA296BD4FF006A
          6F83FA37C75F8497BE1CD72F3FB3ADAF1E358AE81DBE5CBBBF775F25C4DEC154
          FF0084F3EDB87FFB53FB2653C57F10F9874EFDA9BF692D574187C5D1F82743D4
          3419E2FB545636C9FE91E46DCFDDF377EEAF44FDAA7F6C9F16FC14F865F0F759
          B1D06DF4FD4BC613C6B7B657E77CB6BFBADDE57CB5E35E2FF077C72FD833C2F2
          6ABA778AF4BF16784747116EB7B95F99211F2FFAAFF967D7FE594B4FFF008280
          FC506F8C9F00BE10F8D1AD26B2B3B9D496F1E3FE287F74CDFF00B4EBE07EB552
          1425FF003F0F169E3EBD1A15A13A93F687DDFE22D564D37C1D7B7DB3F7D676CF
          2C5FF7EEBE64F809FB6678A3E267EC7DE36F1D5F69FA3C3ACF8764BAFB1C31AC
          BE4BF950452FEF3BD7D03F113C59A6DA7C1ED5B5096EA1FB02E9CF2EFDDFBBF2
          FCAAF8ABF63F8193FE0999F13A461B55E5D45A36FF00B611576D6C64E35F93FB
          87B99A6615E35E9C6854FB123EAEFD87FE366A7FB457ECFF00A678975A8ECE1D
          46EA595254B66FDD7EEE565FFD96BD8982A3357CC9FF0004A89962FD913C3FF3
          7FCB4B8FFD1ED5F4CA3FDA5EBD4C0D49D4A1199F4391D6FAC60E15264D8C0A3C
          8A907028CD761EB91F90BFDDA2A4A339A008F1463FE99D499CD14011C3079546
          D5137DDA928A008F19346CFF0067F4A928A008E8A933450047525145004661C5
          67EAF631DC5B37EEE3F3B1FBBDF5A951CF49ABAB13523CD1E53F21FC7BF0CB5D
          F84DF0063B6D7F4FFECFB8BAF1FC8E8B24BE779DE55AF955FAB5A16B10DE431A
          C722B4D02C692AFD6BC9FF006C0FD92EC7F696F0FF0087ED64BE9B4FFEC7D516
          FDDADFFE5B27FCB45AF26FD873E206B1AD7EDA3F18B4FBFD52F6EB4FB5BCF2E0
          8A47FDCC3E53B45F2FFDF35F3181A3F50C67B3FF009F87E7D96E12793E3F97EC
          54E58FFE947D9F5254709C5484E057D41FA195DF031FECD79C7ED0BF1FFC3FFB
          3AF83ADF5BD7EEA1B5B492F22B54DC9DE43FFC42C95DF5E6A56F62B1F9B2471F
          9C76455F187FC15BBC4B69E27F8070ADA491CCD61E2582CE5FFAEBE5B579F996
          2BEAF879543C5CF330960F0929D3F8CF60FDB8BE2F5D7827F65BF166B1E1FB88
          D6F96C10C52F95E6FEEE5F97FF0066AF997E046BFAF7C42FDBA7E18EB3A8FDB2
          49758F06C73DD49E54BE54DFBA97FED95723E3DF10F8A7E26789FE34F8420B9D
          4354B783C3D62F67A67FCF18E2FB2B7EEBFEFE4B5F6F7EC6FE0393C2DF00BC0C
          BAA58FD975CB1D122B5984BFEB61F97FD5D78386AD571B5EFF0009F2183C556C
          DF1CAFFC387FF247AFC49B52BCD3F698FD9B34BFDA73E1DC9E1DD66F350B5B5F
          3A2BA496CA5F29A1962AF506F96A32147CDF76BEA2A5384A3C933F43A9469D4A
          7ECAA1F13DCFFC12BF56D74DB697E25F8B1E26D77C3B0BEE5B07DCAADFF02F32
          BE82F8A5FB2AF84FE24FC104F00CB63F63D0EC608A2B45B76DAF67E56DF29A3F
          F76BE53FDBF3F6BFF10683FB4468FA7F8525BC6B7F872F16A7AA793FEAA6925F
          F9612FFDB2FF00D1B5F6B7817E215A7C4DF87163AEE99279D6DA9D97DAAD65F6
          DB5E1E0E38394EA50A67C6E552CAEA55C461A8C4F93D7FE094BADDE69D0E8B75
          F163C4D79E168DF77F66345F2FFDF5E657D0A7F668D174BFD9BB50F86DA34926
          97A64D612D824A3F7B2279BFC7FA9AF967FE09F7FB774967E26FF840BC61A849
          32BDD4B1691A95CC9FF4D3FE3D6493FBD5D2FF00C14A3F6EE7F873A65C780FC1
          B79B7C417917FA6DEC47FE41B17FF1DACF0F5F2F85095639B0B9864B430B5317
          4FFC03746FF8255EADE19D37EC5A7FC64F1469F670F4B6B68E48A24FFC8B5F52
          FC0EF015CFC23F867A3F87EF359BCF115D69B02C4F7D73FEBAE7FDAAF907F6FC
          F16EADA07EC89F0A2E2C75CD52C25BA6B55BA92DAE1E1964FF0045ABFE08FD8A
          AEA3F14E913FFC2FAD7EEA48E6493ECFF6CF967FFA65FEB6A70B88A546BFB3A1
          0FFC989C163B0F84C67B1C251FE5FB5FCC7DB6DAB436AA9E636C3FDDA7C5AAC7
          72088DB737A57C11FB59E93ADFC50FF8281691E07B3F15F883C3F617FA5AB6EB
          0BA93F75FBA97FE5956478E6DBC77FB05FC79F05C29E3CD63C61A0F89AF3C896
          CAFF00FEBA2A49FF00A356BABFB63F7BF07BA7A33E289C6AD4FDDFB909F21FA1
          B1EA31BB2C6DF2B376A897508E3B76665D89BABE37F887E35D623FF82ABF8574
          B8F54BF8F4D93482F2D92DD3F939F2A5FF00967597F1C7E2CF8FBF6B6FDA5B52
          F85BE09D5E4F0C787FC3BB5758D4E2FF005B27FCF455ADAA6714E3CC944DA7C4
          D08A97B9EFF3F244FB863D42373FBB9235FF008155B79302BE23B7FF00827CFC
          48F861AA586A1E07F8B1AC497D1CB17DA9758DF3DBCD17FCB4AFA87E2EFC50B7
          F823F0A351F10EAF3EE8744B032CBFF4D1C0AE8A38A9F2DEB53E43D2C3667565
          4AA4B154FD9F21DBA5D678DD4F59766EDDF76BE06FF826BFED4DAD78A7E31EB7
          E1DF17CD7826F184B36BBA5FDAFF00F224517FD32F2FFF004557A07FC1543E28
          EBDF0A3C29E05D63C3BA84F63A959EB8BB157EEDC6E89BF752573C336A52C27D
          6CE5A3C4D869E065987D989F5A1932BF37DEA74772B2EEDB5F39FC12FDB074CF
          DA43E00EB9756B2AE9FE22D374D962D4AC18AF9B672F95F7BFDCAE6BFE092FE2
          CD4BC5FF00B395E5C6A9A85E6A5767589B74D712F9ADFF002CABA29E614A5387
          27DA3A28E754AB56A74E9FDB3EAFDEA8CABB92A4793E6DB5F9E9FB71FEDA1AF6
          81FB4D6996FE1B92F24D33E1D4B15D6A9E57FAA9A597FE594BFF006CBF77FF00
          5D4D7DD3F0E7C6963F113C1FA6EBB632F9D63A95B25CC527FB3461B1B4EB559D
          32B2DCF30D8BC454C353FF00976755454705495E81ED0547525474015A7E4FE1
          5F147EC17FF27DDF1B3FEBF25FFD286AFB626EA7E95F13FEC0FF00F27D9F1B3F
          EBF65FFD296AF1731FF7AA27CAE77FEFB85FF17FEDA7DB1FEB5597DB358DAAF8
          D6C74FF13D8E91349B6F7528A578A2DFFDCAC2FDA07E262FC1BF841E23F137D9
          E4BAFEC3B27BAF291F6799B57757C332FC676F8C9FB5F7C07F1749BEC5AF3466
          96E3CD97FE792DD79BFF00A2EB7C7E694A84B919B6739F52C04E14A5F13E53DA
          BFE0A2FF0015B5CF007C50F8416BA46A93E9F6BA8EB7B2F228BFE5B8F3608BFF
          004195EBE79F831FB385C7ED3F67F193C3F6BA849677567E328AEBCDF2BCDFF9
          6B2D749FB5A7ED01A2FED0DE20F837E20D0EE7ED5691F8965B61FBBF2BFD55D4
          5FFB4ABE8DFD88FF00668D4BE0378B7E235FDFDEC773178A357F3ED57CBF2F64
          7BA597FF006AD7CF724B1B8CFF00A767C84683CCF39949FBD4FF00FB53BFF027
          ECCFE1CF02F8C751F105B585A36ABAAD94363797022FDECE22AF4AB3B7F2E2FF
          0057E5D4823F7A757D751A34A9FF000CFD2F0F83A5457EE86F96BB76D79E7ED2
          3F192C7E037C22D6BC4D75E4B0B08331C6DF2F9B2FFCB38FFEFA35E865B637FB
          2D5C7FC57F825E1BF8D7A147A6789749B3D6B4F864FB42DBDCAEE8B7D3C47338
          7B8678A8CE74671A7F11F28FEC29FB3047F12BE07F8ABC49E3655BDD5BE2934B
          248D244B95B6DBB7FF001E9773FE31557FF826E7C41BCF87BE20F187C1BF134C
          62D4FC3935CC964CDFF2DA2FE3F2FF00F1C7FF008157DA9A1786AD3C35A4DBD9
          59C31DB5B5AA6C8A34FF0096695CA5E7ECF1E11BAF89D1F8D1F42D3C78AA18BE
          CCBA9F95FBED9FDDAF323967B3E5F667CDC7872A52546A507EFC7E3FEF1F017E
          C79FB2E59FED4BF043E2069ADFE8BAC69BAF34BA7DF7FCF197CAF97FED954BFB
          49FEC8727ECDDFB14EA17FAD4F1EA9E30D6F50B56D52F5A5F3191B77FAA8A4AF
          D03F857F027C2FF04ECF518BC35A3D9E8D1EAD71F6ABA5B65DBE74BFDEAB1F14
          3E0F787BE32785BFB23C4DA659EADA76F597C89D7E5DF5CBFD834BD87F7CE587
          05619E13D9FDB3E1FF00F82894EBFF000C7FF0823DDB7E6B5C7FE01D5CF847F0
          CBF660F047C43F0FEB1A6F8D269B5BD36E525B312DFBCBFBEFFBF75F5FF8E3F6
          72F067C4AF0CE9BA46B9A0E9FA869BA47FC795BCABF2DBFCBB38FF0080D72D61
          FB00FC23D2F50B6B887C05A1C7359CBE7C527923E57FEF50B2CABF59F6F0E433
          9F0CE2A38CFACC63097C1F17F74F01F89E9F69FF0082BE78455BFE810DFF00A2
          A5AE475FF0DC5F037FE0A2FA6DC7C49BAD43C49A56AB2F9DE17D4751B8F362D3
          E5967FDDAFFDB2AFACFC6FE1FF00873A07C76F0DEB5AD59E9B1F8E358F36C348
          BA953F7F2795FC35D2FC52F807E15F8E105BDBF8AF45D3F5BB7B37F3628AE577
          6CA98E5BF13A7FCE6D3C8653E6FE7E7E7FFF0068F957E24CCFA87FC15DFC22F8
          F93FB20AAFFDFA96B96D17C671FEC31FB7D78AAEFC5505CC3E1BF1CB4D7167A9
          6CF96169656936D7DABFF0CF3E0FFF00859763E326D034FF00F84974DB5FB1DA
          DFEDFDEC317F76AE7C48F83DE1DF8BFA3C9A6F88B49B1D5ACFBC373179AA6B4F
          ECA9F2F3FDBE7E62EA70E57B4AA539FBFCFCE790F8C7FE0A2BF0AFC170DBCCDE
          2187559AF2548A0B7D347DA25FFBE6BC93F6FCF185FF00ED05F19BC1FF0005B4
          19BE5D4A78B50D6668BFE5941FDDFF00BF5BA4FF00BF55EFFE02FD86FE18FC34
          D5E1D4B49F086970DF43FEADD91A668FFEFB6AEB742FD9FF00C23E1EF8997DE2
          DB3D134F87C49AA2FF00A56A017F7B35744F0F8AC443D9D73A6B6031F8CA1ECF
          112FFF0064F963FE0A13F03E6F84FE15F067C44F06C0B6F75F0F25B6B7558BFE
          7D46D545FE9FF6D6B9FF00F828CFC53D3FE33FECD3F0BBC5766BFE8FAC6A51DD
          2AFF00CF35F29BCCAFB93C61E0CD3FC69E1BBDD3355B68EF6C6FE2F2EE2DE5F9
          A3913FBB5C2FFC31D7C399FC07A7F86DBC29A53E83A6DEFF0068DB5998FF0075
          0CDFF3D76FF7AB1AD93CB964A9F530C670EC9FB5A143F8753FF4A3E72FDAF7F6
          4ED73C03A9CBF13BE1AAC967AD35BEED6AC2DE2F97548B67CEFE5FF7AB9EFD84
          7E3859FECFBFB08F8ABC473794CBA7EA7766087FE7A5CF95179517FDF5B6BEFA
          834D5DAD1FFAC8EB81D63F648F87DE22F0E5C69179E17D2EE34BBAD4BFB5A5B4
          68FF0074D75FF3D7FDEA53C9B92BFB4A12227C2B3A58AFACE1267CE5FB11FECA
          1178DFF668F13EB3E2F569B5AF8B2669EE9E48BF7A9161962FEB2FFC0A99FF00
          04C8F8997BE0DD7BC47F087C48DE5EB1E0FBA965B057FF0096B07F1F95FECFCD
          BBFEDAD7D93A5E850E8D611D95B450C36D6E9E5451C7FF002CD2B985FD9E3C22
          9F147FE1348F43D3D7C52B1791FDA3E57EFB6D6F4F2DE474DC3EC9D14F876542
          AD1AB877F0FC7FDE3BA82A4A8E087CA15257B07D70547525474015DBEF2FD2BE
          27FD82BFE4FB7E377FD7E4DFFA50D5F6CBF45AF893F60638FDBC3E387FD7F4DF
          FA50D5E1669FEF143FC47CB673FEFB85FF0017FEDA7BB7EDDFAB46BFB2AF8FED
          F77EF9744964DBFF000135F09FC13D323D77E2E7ECF3A7C8DE5FDB346BA4C0EF
          FBCBAAF6EF8A5AA7883E38FEDD3F103E19DC6B13C3E1DD53C33F6682DA38BFE3
          DBF7513F9FFF007F5ABDABF669FD93347F861E0BF029BE8E3D435CF0AD84B125
          DCB6FB66F3653E6B7FE8C97FEFAAF3B15839E3711CD0FEBDE3E6330CBEAE7598
          FB48FF000E1FFB6C8E4FF670FD81B49F871F0FF41D375F5B3F105E68FE209756
          8E6BDB7FF52DFEABF75FF7CC75F55430AC31FD299E5C79FBB53614A7B57D2617
          070C3C39207E8197E5F87C2439280FA28A2BA8F40318151D38BE56B8FF00897F
          17BC3FF07F47FED2F11EB167A2D8C8FE52CB74FB577D0635AB429C79A675C781
          483915E51E1AFDB37E1A78B3505B1B4F1AF87E6BA93EEC6B78BBABA2F891F1B7
          C33F0734882FBC49AD69FA3595C4BE54535CCBB56493FBB58FD6295B9EE614F3
          0C3CA1ED39CED8FCBF769A54C87E65AF1CB2FDB9BE166A1791DB43E38F0EB4D7
          0FE5A47F6B5AEFFC4BE3DD37C1BA1CFA96ADA85AE9B676EBB9E7B997CA896A69
          E229CBDE521D3CC30D3F7A150E9768C74AE5BE2DF89AF3C21F0EB5CD534FB6FB
          65EE976171776F6FFF003D9D226655AE0FC27FB70FC31F19EB30E9B63E35D0E7
          BD99F645179FE5349FF7DD75DE2EF8E1E15F05EB3A4695AD6B961A7DF6B92F95
          616F2CBF35DFD2B3FAC529FC323378EA15E93F6550F85FC03F15755F897F173E
          0AEA9AD7C42B3F15EA9777B7979FD9715AC514BA3CBF6397745FBAFF00BF5FBD
          AE9BF672FDA83E247C46F8C5E1B79EFA193FB5757BAB3D5345B9BAB58A3B3862
          FF009E51FF00AEF362AFAFEF7C0DE09F015ADD6BB368FE1FD323B31F6996F5AD
          6287CAFF006FCCAA9F0BCF80FE203FFC265E1683C3FA8CD78BB1756B4B789A59
          BFEDAD7934F2DAB1AB1FDE1F3386C97134EAC5D4C41DF348AAEBFDEA958EDDD5
          F2F7ED01E06F127C67FDA22C7C277BF112D7C37E1386DE2D4A1D234995E2D635
          0F29B6C8F2CBFF003C777CB5F406B3ADDAF81BC3375A85F5E2C3A65845E6CD71
          70FF002C2895EC53C5465CDFDD3E9A8E2A32E7FEE9D17CB43E41FBB5E3369FB7
          67C2BD4A58D17C75E1D5327DDFF4C55AF429BE2468F67E11935E9356B18F4586
          2FB4BDDF9BFBAF2BFBDBEB4A78AA553E19174730C3D6FE1D43A70703FD9A43C0
          AE6FC01F13344F8A3E1B8759F0FEA567AB6993FF00AAB9B793744D4DD5FE26E8
          BA3F8C2C7C3F3EA1671EB1AA452CB6B6C5FF007B3245F7DBFE0355ED0DBEB10E
          4E7B9D5518A8E03525686E1451450014514500151D4941E680296A11F996922A
          FF0076BE03F821E328FF00679FDA33E3C78B3C490DE69FA4C378A915CDC5BCBE
          54AF2C9FBA8FFCFF007ABF404B7F0D7C9DFF00055AF0F436FF00B2BEB5756D1F
          D9E6BCD46CDE56FF009EBB5956BCBCDA9FEEFDBFF21F31C4586FDDFD721FF2EC
          E13E156AF6FE29FF0082B6EA17D6EFF68B1BFF000F2DCDAC83EECD13DB415F75
          463A7D6BF3C7F63CFF00948868FF00F62459FF00E92C55FA283A9AE1C867ED28
          CA5FDF38B82EB7B5C2D4AAFF009E449451457D11F6814514500463A57C7BFF00
          058F8B77ECE7A5FF00D8720FFD153D7D80C7E6FC2BE4BFF82BA68D7BAEFECE1A
          5C76163797F709ADC4DE55BC5E6B7FAA9ABCDCDA2E7849F29E0F125373CB6AC6
          2789FED23F037E08E89FB33B6ABA5FF6269BE28FB1DAC907D8EF7CD9E4B9DB16
          D8DE3DDF3562FED1DAAEB1AE7FC1377E12DC6B9E77DA26D453F7927FADFB3795
          71E57FE41DB5F43FC24FF82627C2BD3F47D2756BED06E2EAEA6822BA78A7BD95
          A2F33FD6FF00AADD589FF056DF064EFF00B3F785AD743D36E26583598B65BD95
          BB3793FBA6FEE57835B03563879548FBBEE1F0F89CA7154F03571338FD8F80E0
          BE14F8BFF657F18F8C7C3BA3D8783E6FED8BCBC8E2B4696DE5F9AE7B7FCB4ABB
          FB42585DFED8FF00F0500B6F8677579736FE11F0C5A7DB2E2DE293FE3E7F75FB
          CFFD1BE555CF057EDDDA359EA7A6DA47F02757B4B8699224B88B4E8BF73FF4D3
          77975A5FB5EFC1DF1B7C1EFDA46C3E337C3FD2E5D70AC4B0EAFA744DBA497858
          B72C7FF5CA88FBD868FB3FFB7C172D5C0C7D9FBD1E68F3F2C794F4FF0014FF00
          C132FE1278AFC38D62BE1B834D3B36C775646559D2BC6BF6E1F09D8F803F68AF
          803A5D9F99F66D3EF63B58BCC6F33F75E6C55B579FF0546F11F8C74FFECFF087
          C2DF145D78926FDD450DCAAAC50CBFED558FDBC7E10F8E3E22783FE1FF008FB4
          4D0E46F14783E5FB65EE9D09F3A6FF009652ED8BFE7A7EF625AEAC47B0961E5F
          5489EC63BEAB57072FECF81F40FED4F27FC633F8DBFEC0575FFA20D7937FC12E
          F53B6F0FFEC67637D7927976F67717CF23CBFF002C8453B7F85794FC53FDBF7C
          45F1EFE165DF82BC33F0E7C4D0F89B5E88D85C3F95E6C36FF2ED968F8D3E16F1
          37ECE3FB13F84FE10E8F637DA878AFC68EF6D7D358A4B3450F9B2EE9774BFF00
          02F2AA6A62AF5FDBD3F863032AB9A7B5C4FD770FEF4610FF00C9CF1FF13FC60F
          15F883E325CFED036B0BFF00C23FA4F88534C897F89ACFF893FEFD37FE3D5F7B
          7ED0BE2BB3F1DFEC65E28D634F9BCEB2D5FC392DCC52FAC72C0DFD2AAF85BF64
          8D0F43FD9423F86F7290B433697E45CBFF00CF49E5FBD2FF00DFDF9ABE6BFD9C
          7C45E26D13F657F8B1F0AF5CD2F565D4BC2FA6EA0DA6EDB597FD2E2DB2FEEA3F
          FB6BFF00A36B2A14EBD18CA13FF9786186C362301ED235FF00E5FC3FF2729FEC
          C9F01BE116A7FB16D87897C7967A3DBDFDE2DE41FDA135C795752F94D2EE68DB
          FE7AEDAADFB1E5A6A90FEC11F189A65BCFF847D52EFF00B23ED07FD6AF90DE6E
          CFF815777F013F65F6F8FF00FF0004DCB3F0DEAB673E9FAA4735C5D587DA53CA
          96DAE56793CA6FFD06B3FE077C42F11788FF0062BF891E00D7B43D5ECFC51E13
          D22E6C1049612422F22F23F74D1D610C1BA728FBBF60F3E1859D2F636A7CB1F6
          72FF00C0CF57FF00825F4B1D9FEC63A1C9236D8E196E77FF00DFD6AF913E357C
          57F177C54F8C7E22F8D5E1D8DFFE11FF0087BAA5BD85937F7E2FE2FF00D0BFF2
          3D779A5F8EFC4DF0C7FE09A1A2F87349D175C6F1278AAE6E6C22862B097CD863
          32B79BFE7DEBEA1F803FB26E93E03FD93EDBC03A85AC732EA9652FF6A0FF009E
          D2CABFBDAE8F6756BD38D0FE43BE586C463E851C343FE5DC39FF00EDE3D3FE12
          FC49D3FE2EFC3ED275ED324F32C754B54BA81BFD96AEBBA8DD5F14FF00C135B5
          3D7BE1278C7C5DF0A3C456BA85BC3A1DD3DD6937735BED82E206FBFE5C9FF917
          FE055F6A467E45AFA0C15494A8731F6F93E2A588C246757E226A28A2BB0F5028
          A28A0028A28A008C1CD709F1D3E0868BF1F3C017DE1FD72D56EB4FBC5CB2FF00
          B75DE84C52790A077ACEA535523CB331A9421569F24CF96BE1F7EC8F75E0DFDB
          92EFC6505C5BC3A1C3A1C36B6B63123EE87E4F2BFF006957D45145B2355A9044
          17D69C46EA9A3878518F2C0E7C0E5F4B0B1E5A41451456C7705145140062ABDC
          D8C771F7EAC514015EDECBECFF00C744D671DC0AB1450051FEC4885C799537D8
          63A9F60A360A2C89F6715D0ADFD9F08EDFA54C6D54D3F60A360A2C1ECE3D8AB1
          E951412EE55A7FD863A9F60A360A8E441ECE2B448608D648EA3FECF8EAC51565
          5915FF00B323F4A3EC31D4FB051B0504F247B0CFB247FDDA6A5A2C7F76A6A282
          AC88459A2D3AA4A2800A28A2800A28A2803FFFD9}
        mmHeight = 13494
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 33338
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Processo N'#176' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 82021
        mmTop = 10848
        mmWidth = 27781
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 110861
        mmTop = 10848
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Data Doc . : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 10846
        mmTop = 150815
        mmWidth = 17463
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'DATA_MORTE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 29634
        mmTop = 150810
        mmWidth = 31221
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 33073
        mmTop = 137057
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'NCF/SISBOV : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 11113
        mmTop = 143143
        mmWidth = 20637
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 33073
        mmTop = 143143
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Baixa de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 69850
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Local :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 20373
        mmTop = 57681
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'Navio Opera'#231#227'o : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 62973
        mmWidth = 30162
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data Evento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 68529
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'PRIMEIROCURRAL'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 130440
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'OPERACAO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 62973
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'DATA_MORTE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 68529
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 265
        mmTop = 76733
        mmWidth = 196850
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label102'
        Border.mmPadding = 0
        Caption = 'Dados de Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 79378
        mmWidth = 29104
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label103'
        Border.mmPadding = 0
        Caption = 'Pecuarista : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 85199
        mmWidth = 20902
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'Fazenda : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 14023
        mmTop = 90490
        mmWidth = 17727
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Municipio : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 96047
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'PRODUTOR'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 85199
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'PRPRIEDADE_ORIGEM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 90490
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText28'
        Border.mmPadding = 0
        DataField = 'CIDADE_ORIGEM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 96047
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 101074
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Lote : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 106895
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText29'
        Border.mmPadding = 0
        DataField = 'UF_ORIGEM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 101074
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'CONTRATO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 106895
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 112182
        mmWidth = 196850
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'Dados do Animal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 113774
        mmWidth = 28575
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = 'Ra'#231'a : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 119595
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Entrada Unidade : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 529
        mmTop = 124886
        mmWidth = 31221
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pasto / Piquete : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 130445
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText31'
        Border.mmPadding = 0
        DataField = 'RACA'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 119597
        mmWidth = 26194
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 124888
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'ULTIMO_LOCAL'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 57679
        mmWidth = 162984
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'Sexo : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 67469
        mmTop = 119595
        mmWidth = 11906
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'SEXO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 80698
        mmTop = 119595
        mmWidth = 26194
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label34'
        Border.mmPadding = 0
        Caption = 'Era : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 118269
        mmTop = 119595
        mmWidth = 8731
        BandType = 0
        LayerName = BandLayer5
      end
      object pplblEraLaudoVenda: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 119592
        mmWidth = 1852
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label301'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Chip : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1587
        mmTop = 137057
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 529
        mmTop = 55302
        mmWidth = 196586
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Capataz EPE : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 62971
        mmTop = 150813
        mmWidth = 21167
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'CAPATAZ_EPE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 84667
        mmTop = 150815
        mmWidth = 109538
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 174894
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59004
        mmTop = 205316
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'CAPATAZ'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 6879
        mmLeft = 59004
        mmTop = 205580
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'VETERINARIO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4763
        mmLeft = 59002
        mmTop = 175688
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'Veterinario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 91281
        mmTop = 185740
        mmWidth = 16669
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label35'
        Border.mmPadding = 0
        Caption = 'Capataz Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 88371
        mmTop = 212722
        mmWidth = 20902
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'CRM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 180710
        mmWidth = 81227
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line13'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 234949
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label70'
        Border.mmPadding = 0
        Caption = 'Gerente Operacional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 83079
        mmTop = 243681
        mmWidth = 30956
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line14'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 265375
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label75'
        Border.mmPadding = 0
        Caption = 'Rastreabilidade Animal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 83079
        mmTop = 273577
        mmWidth = 34660
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText87'
        Border.mmPadding = 0
        DataField = 'GERENTE_OPERACIONAL'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 6879
        mmLeft = 59267
        mmTop = 235743
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText88'
        Border.mmPadding = 0
        DataField = 'RESPONSAVEL_RASTREABILIDADE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 6879
        mmLeft = 59267
        mmTop = 266698
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer5
      end
      object ppImLaudoVenda_Vet: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 160602
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer5
      end
      object ppImLaudoVenda_Cap_Geral: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'ImLaudoVenda_Cap_Geral'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 191555
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer5
      end
      object ppImLaudoVenda_GerenteOP: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'ImLaudoVenda_GerenteOP'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59267
        mmTop = 221458
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer5
      end
      object ppImLaudoVenda_RespRast: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'ImLaudoVenda_RespRast'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59267
        mmTop = 251088
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer5
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object RESPONSAVEL_RASTREABILIDADE: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM RESPONSAVEL_RASTREABILIDADE'
      'WHERE STATUS=1')
    Left = 88
    Top = 280
    object RESPONSAVEL_RASTREABILIDADEID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RESPONSAVEL_RASTREABILIDADENOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object RESPONSAVEL_RASTREABILIDADEEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 300
    end
    object RESPONSAVEL_RASTREABILIDADETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object RESPONSAVEL_RASTREABILIDADEDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object RESPONSAVEL_RASTREABILIDADEID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object RESPONSAVEL_RASTREABILIDADESTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object RESPONSAVEL_RASTREABILIDADEASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = 'ASSINATURA'
      BlobType = ftMemo
    end
  end
  object GERENTE_OPERACIONAL: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM GERENTE_OPERACIONAL'
      'WHERE STATUS=1')
    Left = 88
    Top = 344
    object GERENTE_OPERACIONALID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object GERENTE_OPERACIONALNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object GERENTE_OPERACIONALEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 300
    end
    object GERENTE_OPERACIONALTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object GERENTE_OPERACIONALDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object GERENTE_OPERACIONALID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object GERENTE_OPERACIONALSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object GERENTE_OPERACIONALASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = 'ASSINATURA'
      BlobType = ftMemo
    end
  end
  object LAUDO_REPORT: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' C.SEXO,'
      ' L.*,'
      ' COALESCE(Pgta.nome,PCTR.nome,P.nome) Produtor,'
      ' Pgtad.Nome ProdutorDestino,'
      ' pp.CIDADE ,'
      ' pp.UF, '
      ' pp.NOME PRPRIEDADE, '
      ' ppo.CIDADE CIDADE_ORIGEM ,'
      ' ppo.UF UF_ORIGEM, '
      ' ppo.NOME PRPRIEDADE_ORIGEM, '
      ' A.IDENTIFICACAO_1,'
      ' A.IDENTIFICACAO_2,'
      ' COALESCE(A.IDENTIFICACAO_1,A.IDENTIFICACAO_2)IDENTIFICACAO,'
      ' a.DATA_SAIDA data_morte,'
      ' R.NOME RACA ,'
      ' C.NOME CATEGORIA,'
      ' R.NOME||'#39'/'#39'||C.NOME RACACATEGORIA,'
      ' CU.CODIGO ULTIMO_LOCAL,'
      ' ax.NOME MOTIVO,'
      ' A.VALOR_VENDA,'
      ' cca.NUMERO CONTRATO, '
      ' C2.NOME CAPATAZ,'
      ' MV.NOME VETERINARIO,'
      ' MV.CRM,'
      ' O.NOME OPERACAO,'
      ' (SELECT codigo FROM '
      '(SELECT FIRST 1 ma.id,c.CODIGO  FROM MOVIMENTACAO_ANIMAL ma '
      'JOIN CURRAIS c ON c.id=ma.ID_PASTO_ORIGEM '
      'WHERE ma.ID_ANIMAL =A.id'
      'ORDER BY ma.ID)) PrimeiroCurral,'
      ' A.DATA_PROC DATA_ENTRADA,'
      'ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648) IDADE_MORTE,'
      'rr.NOME Responsavel_Rastreabilidade,'
      'gop.NOME GERENTE_OPERACIONAL,'
      'cEPE.NOME CAPATAZ_EPE,'
      'CASE '
      
        ' WHEN ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)<=12 THEN '#39'0' +
        ' a 12'#39#9
      ' WHEN (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)>12) AND '
      
        '  (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)<=24) THEN '#39'13 ' +
        'a 24'#39' '
      ' WHEN (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)>24) AND '
      
        '  (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)<=36) THEN '#39'25 ' +
        'a 36'#39' '
      
        ' WHEN ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)>36 THEN '#39'Ma' +
        'is de 36'#39' '
      'END FaixaEra,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_CAPATAZ =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_CAPATAZ =1 THEN '#39'SIM'#39
      ' END ChekAssCapataz,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_VETERINARIO =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_VETERINARIO =1 THEN '#39'SIM'#39
      ' END ChekAssVeterinario,'
      ' CASE'
      ' '#9'WHEN CHECK_GERENTE_OP =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_GERENTE_OP =1 THEN '#39'SIM'#39
      ' END ChekAssGerenteOP,'
      ' CASE'
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =1 THEN '#39'SIM'#39
      ' END ChekAssRespRastreabilidade,'
      ' CASE'
      ' '#9'WHEN CHECK_CAPATAZ_EPE =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_CAPATAZ_EPE =1 THEN '#39'SIM'#39
      ' END ChekAssCapatazEPE,'
      'cEPE.ASSINATURA CapatezAss,'
      'c2.ASSINATURA   CapatezEPEAss,'
      'mv.ASSINATURA   VetarinarioAss,'
      'rr.ASSINATURA   ReponsavelAss,'
      'gop.ASSINATURA  GerenteAss   '
      'FROM LAUDO L'
      'JOIN ANIMAL A  ON A.ID=L.ID_MORTE AND A.STATUS=3 '
      'LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato'
      'LEFT JOIN PRODUTORES PCTR ON PCTR.ID=cca.ID_PRODUTOR_ORIGEM'
      'LEFT JOIN GTA g ON g.id=a.GTA_ID '
      'JOIN PROPRIEDADES ppo ON ppo.ID= g.ID_PROPRIEDADE_ORIGEM'
      'LEFT JOIN PRODUTORES Pgta ON Pgta.ID= g.ID_PRODUTOR_ORIGEM '
      'LEFT JOIN PRODUTORES Pgtad ON Pgtad.ID= g.ID_PRODUTOR_DESTINO '
      'JOIN RACA R ON R.ID=A.ID_RACA'
      'JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA'
      'JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL'
      'JOIN AUX_MOTIVO_MORTE ax ON ax.ID=a.ID_MOTIVO_MORTE'
      'JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR'
      'JOIN PROPRIEDADES pp ON pp.ID= A.ID_PROPRIEDADE'
      'JOIN CAPATAZ c2 ON c2.id=l.ID_CAPATAZ '
      'JOIN CAPATAZ cEPE ON cEPE.ID=l.ID_CAPATAZ_EPE'
      'JOIN MEDICO_VETERINARIO mv  ON mv.id=l.ID_VETERINARIO '
      'JOIN OPERACAO o ON o.id=l.ID_OPERACAO_VIGENTE'
      
        'LEFT JOIN RESPONSAVEL_RASTREABILIDADE rr ON rr.ID =l.ID_RESPONSA' +
        'VEL_RAST'
      'LEFT JOIN GERENTE_OPERACIONAL gop ON gop.ID =l.ID_GERENTE_OP'
      'WHERE L.ID=:ID')
    Left = 464
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object LAUDO_REPORTSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object LAUDO_REPORTID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LAUDO_REPORTID_MORTE: TStringField
      FieldName = 'ID_MORTE'
      Origin = 'ID_MORTE'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTID_VETERINARIO: TIntegerField
      FieldName = 'ID_VETERINARIO'
      Origin = 'ID_VETERINARIO'
      Required = True
    end
    object LAUDO_REPORTID_CAPATAZ: TIntegerField
      FieldName = 'ID_CAPATAZ'
      Origin = 'ID_CAPATAZ'
      Required = True
    end
    object LAUDO_REPORTID_OPERACAO_VIGENTE: TIntegerField
      FieldName = 'ID_OPERACAO_VIGENTE'
      Origin = 'ID_OPERACAO_VIGENTE'
      Required = True
    end
    object LAUDO_REPORTHIST_ANTE_MORTEM: TStringField
      FieldName = 'HIST_ANTE_MORTEM'
      Origin = 'HIST_ANTE_MORTEM'
      Size = 500
    end
    object LAUDO_REPORTDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object LAUDO_REPORTID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object LAUDO_REPORTSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object LAUDO_REPORTTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object LAUDO_REPORTID_GERENTE_OP: TIntegerField
      FieldName = 'ID_GERENTE_OP'
      Origin = 'ID_GERENTE_OP'
    end
    object LAUDO_REPORTID_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'ID_RESPONSAVEL_RAST'
      Origin = 'ID_RESPONSAVEL_RAST'
    end
    object LAUDO_REPORTPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Origin = 'PRODUTOR'
      Size = 100
    end
    object LAUDO_REPORTPRODUTORDESTINO: TStringField
      FieldName = 'PRODUTORDESTINO'
      Origin = 'PRODUTORDESTINO'
      Size = 100
    end
    object LAUDO_REPORTCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 15
    end
    object LAUDO_REPORTPRPRIEDADE: TStringField
      FieldName = 'PRPRIEDADE'
      Origin = 'PRPRIEDADE'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object LAUDO_REPORTIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object LAUDO_REPORTDATA_MORTE: TDateField
      FieldName = 'DATA_MORTE'
      Origin = 'DATA_MORTE'
    end
    object LAUDO_REPORTRACA: TStringField
      FieldName = 'RACA'
      Origin = 'RACA'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTULTIMO_LOCAL: TStringField
      FieldName = 'ULTIMO_LOCAL'
      Origin = 'ULTIMO_LOCAL'
      Size = 100
    end
    object LAUDO_REPORTMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object LAUDO_REPORTCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATO'
    end
    object LAUDO_REPORTCAPATAZ: TStringField
      FieldName = 'CAPATAZ'
      Origin = 'CAPATAZ'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTVETERINARIO: TStringField
      FieldName = 'VETERINARIO'
      Origin = 'VETERINARIO'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTCRM: TStringField
      FieldName = 'CRM'
      Origin = 'CRM'
      Required = True
      Size = 50
    end
    object LAUDO_REPORTOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
      Required = True
    end
    object LAUDO_REPORTIDADE_MORTE: TLargeintField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object LAUDO_REPORTRESPONSAVEL_RASTREABILIDADE: TStringField
      FieldName = 'RESPONSAVEL_RASTREABILIDADE'
      Origin = 'RESPONSAVEL_RASTREABILIDADE'
      Size = 100
    end
    object LAUDO_REPORTGERENTE_OPERACIONAL: TStringField
      FieldName = 'GERENTE_OPERACIONAL'
      Origin = 'GERENTE_OPERACIONAL'
      Size = 100
    end
    object LAUDO_REPORTID_CAPATAZ_EPE: TIntegerField
      FieldName = 'ID_CAPATAZ_EPE'
      Origin = 'ID_CAPATAZ_EPE'
    end
    object LAUDO_REPORTCAPATAZ_EPE: TStringField
      FieldName = 'CAPATAZ_EPE'
      Origin = 'CAPATAZ_EPE'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Origin = 'IDENTIFICACAO'
      Size = 25
    end
    object LAUDO_REPORTRACACATEGORIA: TStringField
      FieldName = 'RACACATEGORIA'
      Origin = 'RACACATEGORIA'
      Required = True
      Size = 201
    end
    object LAUDO_REPORTFAIXAERA: TStringField
      FieldName = 'FAIXAERA'
      Origin = 'FAIXAERA'
      FixedChar = True
      Size = 10
    end
    object LAUDO_REPORTPRIMEIROCURRAL: TStringField
      FieldName = 'PRIMEIROCURRAL'
      Origin = 'PRIMEIROCURRAL'
      Size = 100
    end
    object LAUDO_REPORTCIDADE_ORIGEM: TStringField
      FieldName = 'CIDADE_ORIGEM'
      Origin = 'CIDADE_ORIGEM'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Origin = 'UF_ORIGEM'
      Required = True
      FixedChar = True
      Size = 15
    end
    object LAUDO_REPORTPRPRIEDADE_ORIGEM: TStringField
      FieldName = 'PRPRIEDADE_ORIGEM'
      Origin = 'PRPRIEDADE_ORIGEM'
      Required = True
      Size = 100
    end
    object LAUDO_REPORTCHECK_ASS_CAPATAZ: TIntegerField
      FieldName = 'CHECK_ASS_CAPATAZ'
      Origin = 'CHECK_ASS_CAPATAZ'
    end
    object LAUDO_REPORTCHECK_ASS_VETERINARIO: TIntegerField
      FieldName = 'CHECK_ASS_VETERINARIO'
      Origin = 'CHECK_ASS_VETERINARIO'
    end
    object LAUDO_REPORTCHECK_GERENTE_OP: TIntegerField
      FieldName = 'CHECK_GERENTE_OP'
      Origin = 'CHECK_GERENTE_OP'
    end
    object LAUDO_REPORTCHECK_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'CHECK_RESPONSAVEL_RAST'
      Origin = 'CHECK_RESPONSAVEL_RAST'
    end
    object LAUDO_REPORTCHECK_CAPATAZ_EPE: TIntegerField
      FieldName = 'CHECK_CAPATAZ_EPE'
      Origin = 'CHECK_CAPATAZ_EPE'
    end
    object LAUDO_REPORTCHEKASSCAPATAZ: TStringField
      FieldName = 'CHEKASSCAPATAZ'
      Origin = 'CHEKASSCAPATAZ'
      FixedChar = True
      Size = 3
    end
    object LAUDO_REPORTCHEKASSVETERINARIO: TStringField
      FieldName = 'CHEKASSVETERINARIO'
      Origin = 'CHEKASSVETERINARIO'
      FixedChar = True
      Size = 3
    end
    object LAUDO_REPORTCHEKASSGERENTEOP: TStringField
      FieldName = 'CHEKASSGERENTEOP'
      Origin = 'CHEKASSGERENTEOP'
      FixedChar = True
      Size = 3
    end
    object LAUDO_REPORTCHEKASSRESPRASTREABILIDADE: TStringField
      FieldName = 'CHEKASSRESPRASTREABILIDADE'
      Origin = 'CHEKASSRESPRASTREABILIDADE'
      FixedChar = True
      Size = 3
    end
    object LAUDO_REPORTCHEKASSCAPATAZEPE: TStringField
      FieldName = 'CHEKASSCAPATAZEPE'
      Origin = 'CHEKASSCAPATAZEPE'
      FixedChar = True
      Size = 3
    end
    object LAUDO_REPORTCAPATEZASS: TMemoField
      FieldName = 'CAPATEZASS'
      Origin = 'CAPATEZASS'
      BlobType = ftMemo
    end
    object LAUDO_REPORTCAPATEZEPEASS: TMemoField
      FieldName = 'CAPATEZEPEASS'
      Origin = 'CAPATEZEPEASS'
      BlobType = ftMemo
    end
    object LAUDO_REPORTVETARINARIOASS: TMemoField
      FieldName = 'VETARINARIOASS'
      Origin = 'VETARINARIOASS'
      BlobType = ftMemo
    end
    object LAUDO_REPORTREPONSAVELASS: TMemoField
      FieldName = 'REPONSAVELASS'
      Origin = 'REPONSAVELASS'
      BlobType = ftMemo
    end
    object LAUDO_REPORTGERENTEASS: TMemoField
      FieldName = 'GERENTEASS'
      Origin = 'GERENTEASS'
      BlobType = ftMemo
    end
  end
  object LAUDO_VENDA_REPORT: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' C.SEXO,'
      ' L.*,'
      ' COALESCE(Pgta.nome,PCTR.nome,P.nome) Produtor,'
      ' Pgta.nome ProdutorDestino,'
      ' pp.CIDADE ,'
      ' pp.UF, '
      ' pp.NOME PRPRIEDADE, '
      ' ppo.CIDADE CIDADE_ORIGEM ,'
      ' ppo.UF UF_ORIGEM, '
      ' ppo.NOME PRPRIEDADE_ORIGEM, '
      ' A.IDENTIFICACAO_1,'
      ' A.IDENTIFICACAO_2,'
      ' COALESCE(A.IDENTIFICACAO_1,A.IDENTIFICACAO_2) AS Identificacao,'
      ' a.DATA_SAIDA data_morte,'
      ' R.NOME RACA ,'
      ' C.NOME CATEGORIA,'
      ' R.NOME ||'#39'/'#39'|| C.NOME RacaCATEGORIA, '
      ' CU.CODIGO ULTIMO_LOCAL,'
      ' A.VALOR_VENDA,'
      ' cca.NUMERO CONTRATO, '
      ' C2.NOME CAPATAZ,'
      ' MV.NOME VETERINARIO,'
      ' MV.CRM,'
      ' O.NOME OPERACAO,'
      '(SELECT codigo FROM '
      '(SELECT FIRST 1 ma.id,c.CODIGO  FROM MOVIMENTACAO_ANIMAL ma '
      'JOIN CURRAIS c ON c.id=ma.ID_PASTO_ORIGEM '
      'WHERE ma.ID_ANIMAL =A.id'
      'ORDER BY ma.ID)) PrimeiroCurral,'
      ' A.DATA_PROC DATA_ENTRADA,'
      'ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648) IDADE_MORTE,'
      'rr.NOME Responsavel_Rastreabilidade,'
      'gop.NOME GERENTE_OPERACIONAL,'
      'cEPE.NOME CAPATAZ_EPE,'
      'CASE '
      
        ' WHEN ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)<=12 THEN '#39'0' +
        ' a 12'#39#9
      ' WHEN (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)>12) AND '
      
        '  (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)<=24) THEN '#39'13 ' +
        'a 24'#39' '
      ' WHEN (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)>24) AND '
      
        '  (ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)<=36) THEN '#39'25 ' +
        'a 36'#39' '
      
        ' WHEN ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648)>36 THEN '#39'Ma' +
        'is de 36'#39' '
      'END FaixaEra,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_CAPATAZ =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_CAPATAZ =1 THEN '#39'SIM'#39
      ' END ChekAssCapataz,'
      ' CASE'
      ' '#9'WHEN CHECK_ASS_VETERINARIO =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_ASS_VETERINARIO =1 THEN '#39'SIM'#39
      ' END ChekAssVeterinario,'
      ' CASE'
      ' '#9'WHEN CHECK_GERENTE_OP =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_GERENTE_OP =1 THEN '#39'SIM'#39
      ' END ChekAssGerenteOP,'
      ' CASE'
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_RESPONSAVEL_RAST =1 THEN '#39'SIM'#39
      ' END ChekAssRespRastreabilidade,'
      ' CASE'
      ' '#9'WHEN CHECK_CAPATAZ_EPE =0 THEN '#39'N'#195'O'#39
      ' '#9'WHEN CHECK_CAPATAZ_EPE =1 THEN '#39'SIM'#39
      ' END ChekAssCapatazEPE,'
      'cEPE.ASSINATURA CapatezAss,'
      'c2.ASSINATURA   CapatezEPEAss,'
      'mv.ASSINATURA   VetarinarioAss,'
      'rr.ASSINATURA   ReponsavelAss,'
      'gop.ASSINATURA  GerenteAss  '
      'FROM LAUDO_SAIDA L'
      'JOIN ANIMAL A  ON A.ID=L.ID_MORTE AND A.STATUS=2 '
      'LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato'
      'LEFT JOIN PRODUTORES PCTR ON PCTR.ID=cca.ID_PRODUTOR_ORIGEM'
      'LEFT JOIN GTA g ON g.id=a.GTA_ID '
      'LEFT JOIN PROPRIEDADES ppo ON ppo.ID= g.ID_PROPRIEDADE_ORIGEM'
      'LEFT JOIN PRODUTORES Pgta ON Pgta.ID= g.ID_PRODUTOR_ORIGEM '
      'LEFT JOIN PRODUTORES Pgtad ON Pgtad.ID= g.ID_PRODUTOR_DESTINO '
      'JOIN RACA R ON R.ID=A.ID_RACA'
      'JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA'
      'JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL'
      'LEFT JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR_ORIGEM '
      'LEFT JOIN PROPRIEDADES pp ON pp.ID= p.ID_PROPRIEDADE  '
      'JOIN CAPATAZ c2 ON c2.id=l.ID_CAPATAZ '
      'JOIN CAPATAZ cEPE ON cEPE.ID=l.ID_CAPATAZ_EPE'
      'JOIN MEDICO_VETERINARIO mv  ON mv.id=l.ID_VETERINARIO '
      'JOIN OPERACAO o ON o.id=l.ID_OPERACAO_VIGENTE '
      
        'LEFT JOIN RESPONSAVEL_RASTREABILIDADE rr ON rr.ID =l.ID_RESPONSA' +
        'VEL_RAST'
      'LEFT JOIN GERENTE_OPERACIONAL gop ON gop.ID =l.ID_GERENTE_OP'
      'WHERE L.ID=:ID')
    Left = 296
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object LAUDO_VENDA_REPORTSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object LAUDO_VENDA_REPORTID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LAUDO_VENDA_REPORTID_MORTE: TStringField
      FieldName = 'ID_MORTE'
      Origin = 'ID_MORTE'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTID_VETERINARIO: TIntegerField
      FieldName = 'ID_VETERINARIO'
      Origin = 'ID_VETERINARIO'
      Required = True
    end
    object LAUDO_VENDA_REPORTID_CAPATAZ: TIntegerField
      FieldName = 'ID_CAPATAZ'
      Origin = 'ID_CAPATAZ'
      Required = True
    end
    object LAUDO_VENDA_REPORTID_OPERACAO_VIGENTE: TIntegerField
      FieldName = 'ID_OPERACAO_VIGENTE'
      Origin = 'ID_OPERACAO_VIGENTE'
      Required = True
    end
    object LAUDO_VENDA_REPORTHIST_ANTE_MORTEM: TStringField
      FieldName = 'HIST_ANTE_MORTEM'
      Origin = 'HIST_ANTE_MORTEM'
      Size = 500
    end
    object LAUDO_VENDA_REPORTDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object LAUDO_VENDA_REPORTID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object LAUDO_VENDA_REPORTSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object LAUDO_VENDA_REPORTID_GERENTE_OP: TIntegerField
      FieldName = 'ID_GERENTE_OP'
      Origin = 'ID_GERENTE_OP'
    end
    object LAUDO_VENDA_REPORTID_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'ID_RESPONSAVEL_RAST'
      Origin = 'ID_RESPONSAVEL_RAST'
    end
    object LAUDO_VENDA_REPORTPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Origin = 'PRODUTOR'
      Size = 100
    end
    object LAUDO_VENDA_REPORTPRODUTORDESTINO: TStringField
      FieldName = 'PRODUTORDESTINO'
      Origin = 'PRODUTORDESTINO'
      Size = 100
    end
    object LAUDO_VENDA_REPORTCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object LAUDO_VENDA_REPORTUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 15
    end
    object LAUDO_VENDA_REPORTPRPRIEDADE: TStringField
      FieldName = 'PRPRIEDADE'
      Origin = 'PRPRIEDADE'
      Size = 100
    end
    object LAUDO_VENDA_REPORTIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object LAUDO_VENDA_REPORTIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object LAUDO_VENDA_REPORTDATA_MORTE: TDateField
      FieldName = 'DATA_MORTE'
      Origin = 'DATA_MORTE'
    end
    object LAUDO_VENDA_REPORTRACA: TStringField
      FieldName = 'RACA'
      Origin = 'RACA'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTULTIMO_LOCAL: TStringField
      FieldName = 'ULTIMO_LOCAL'
      Origin = 'ULTIMO_LOCAL'
      Size = 100
    end
    object LAUDO_VENDA_REPORTVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object LAUDO_VENDA_REPORTCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATO'
    end
    object LAUDO_VENDA_REPORTCAPATAZ: TStringField
      FieldName = 'CAPATAZ'
      Origin = 'CAPATAZ'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTVETERINARIO: TStringField
      FieldName = 'VETERINARIO'
      Origin = 'VETERINARIO'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTCRM: TStringField
      FieldName = 'CRM'
      Origin = 'CRM'
      Required = True
      Size = 50
    end
    object LAUDO_VENDA_REPORTOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
      Required = True
    end
    object LAUDO_VENDA_REPORTIDADE_MORTE: TLargeintField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object LAUDO_VENDA_REPORTRESPONSAVEL_RASTREABILIDADE: TStringField
      FieldName = 'RESPONSAVEL_RASTREABILIDADE'
      Origin = 'RESPONSAVEL_RASTREABILIDADE'
      Size = 100
    end
    object LAUDO_VENDA_REPORTGERENTE_OPERACIONAL: TStringField
      FieldName = 'GERENTE_OPERACIONAL'
      Origin = 'GERENTE_OPERACIONAL'
      Size = 100
    end
    object LAUDO_VENDA_REPORTID_CAPATAZ_EPE: TIntegerField
      FieldName = 'ID_CAPATAZ_EPE'
      Origin = 'ID_CAPATAZ_EPE'
    end
    object LAUDO_VENDA_REPORTCAPATAZ_EPE: TStringField
      FieldName = 'CAPATAZ_EPE'
      Origin = 'CAPATAZ_EPE'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Origin = 'IDENTIFICACAO'
      Size = 25
    end
    object LAUDO_VENDA_REPORTRACACATEGORIA: TStringField
      FieldName = 'RACACATEGORIA'
      Origin = 'RACACATEGORIA'
      Required = True
      Size = 201
    end
    object LAUDO_VENDA_REPORTFAIXAERA: TStringField
      FieldName = 'FAIXAERA'
      Origin = 'FAIXAERA'
      FixedChar = True
      Size = 10
    end
    object LAUDO_VENDA_REPORTPRIMEIROCURRAL: TStringField
      FieldName = 'PRIMEIROCURRAL'
      Origin = 'PRIMEIROCURRAL'
      Size = 100
    end
    object LAUDO_VENDA_REPORTCIDADE_ORIGEM: TStringField
      FieldName = 'CIDADE_ORIGEM'
      Origin = 'CIDADE_ORIGEM'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Origin = 'UF_ORIGEM'
      Required = True
      FixedChar = True
      Size = 15
    end
    object LAUDO_VENDA_REPORTPRPRIEDADE_ORIGEM: TStringField
      FieldName = 'PRPRIEDADE_ORIGEM'
      Origin = 'PRPRIEDADE_ORIGEM'
      Required = True
      Size = 100
    end
    object LAUDO_VENDA_REPORTCHECK_ASS_CAPATAZ: TIntegerField
      FieldName = 'CHECK_ASS_CAPATAZ'
      Origin = 'CHECK_ASS_CAPATAZ'
    end
    object LAUDO_VENDA_REPORTCHECK_ASS_VETERINARIO: TIntegerField
      FieldName = 'CHECK_ASS_VETERINARIO'
      Origin = 'CHECK_ASS_VETERINARIO'
    end
    object LAUDO_VENDA_REPORTCHECK_GERENTE_OP: TIntegerField
      FieldName = 'CHECK_GERENTE_OP'
      Origin = 'CHECK_GERENTE_OP'
    end
    object LAUDO_VENDA_REPORTCHECK_RESPONSAVEL_RAST: TIntegerField
      FieldName = 'CHECK_RESPONSAVEL_RAST'
      Origin = 'CHECK_RESPONSAVEL_RAST'
    end
    object LAUDO_VENDA_REPORTCHECK_CAPATAZ_EPE: TIntegerField
      FieldName = 'CHECK_CAPATAZ_EPE'
      Origin = 'CHECK_CAPATAZ_EPE'
    end
    object LAUDO_VENDA_REPORTCHEKASSCAPATAZ: TStringField
      FieldName = 'CHEKASSCAPATAZ'
      Origin = 'CHEKASSCAPATAZ'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDA_REPORTCHEKASSVETERINARIO: TStringField
      FieldName = 'CHEKASSVETERINARIO'
      Origin = 'CHEKASSVETERINARIO'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDA_REPORTCHEKASSGERENTEOP: TStringField
      FieldName = 'CHEKASSGERENTEOP'
      Origin = 'CHEKASSGERENTEOP'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDA_REPORTCHEKASSRESPRASTREABILIDADE: TStringField
      FieldName = 'CHEKASSRESPRASTREABILIDADE'
      Origin = 'CHEKASSRESPRASTREABILIDADE'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDA_REPORTCHEKASSCAPATAZEPE: TStringField
      FieldName = 'CHEKASSCAPATAZEPE'
      Origin = 'CHEKASSCAPATAZEPE'
      FixedChar = True
      Size = 3
    end
    object LAUDO_VENDA_REPORTCAPATEZASS: TMemoField
      FieldName = 'CAPATEZASS'
      Origin = 'CAPATEZASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDA_REPORTCAPATEZEPEASS: TMemoField
      FieldName = 'CAPATEZEPEASS'
      Origin = 'CAPATEZEPEASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDA_REPORTVETARINARIOASS: TMemoField
      FieldName = 'VETARINARIOASS'
      Origin = 'VETARINARIOASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDA_REPORTREPONSAVELASS: TMemoField
      FieldName = 'REPONSAVELASS'
      Origin = 'REPONSAVELASS'
      BlobType = ftMemo
    end
    object LAUDO_VENDA_REPORTGERENTEASS: TMemoField
      FieldName = 'GERENTEASS'
      Origin = 'GERENTEASS'
      BlobType = ftMemo
    end
  end
  object imgLaudoVenda: TFDQuery
    CachedUpdates = True
    OnReconcileError = imgLaudoVendaReconcileError
    Connection = FConImg
    SQL.Strings = (
      'select * from IMG_LAUDO_VENDA '
      'where status=1 and ID_LAUDO=:id')
    Left = 344
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object imgLaudoVendaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object imgLaudoVendaID_LAUDO: TIntegerField
      FieldName = 'ID_LAUDO'
      Origin = 'ID_LAUDO'
    end
    object imgLaudoVendaDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object imgLaudoVendaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object imgLaudoVendaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object imgLaudoVendaIMG: TMemoField
      FieldName = 'IMG'
      Origin = 'IMG'
      BlobType = ftMemo
    end
    object imgLaudoVendaIMG2: TMemoField
      FieldName = 'IMG2'
      Origin = 'IMG2'
      BlobType = ftMemo
    end
    object imgLaudoVendaIMG3: TMemoField
      FieldName = 'IMG3'
      Origin = 'IMG3'
      BlobType = ftMemo
    end
    object imgLaudoVendaIMG4: TMemoField
      FieldName = 'IMG4'
      Origin = 'IMG4'
      BlobType = ftMemo
    end
    object imgLaudoVendaIMG5: TMemoField
      FieldName = 'IMG5'
      Origin = 'IMG5'
      BlobType = ftMemo
    end
    object imgLaudoVendaIMG6: TMemoField
      FieldName = 'IMG6'
      Origin = 'IMG6'
      BlobType = ftMemo
    end
  end
  object qryAuxImg: TFDQuery
    Connection = FConImg
    Left = 184
    Top = 104
  end
  object ppRepTamplateMorte: TppReport
    AutoStop = False
    DataPipeline = ppBDEPLaudo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 464
    Top = 352
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPLaudo'
    object ppHeaderBand6: TppHeaderBand
      BeforePrint = ppHeaderBand6BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 261673
      mmPrintPosition = 0
      object ppShape42: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape401'
        mmHeight = 61119
        mmLeft = 2910
        mmTop = 162451
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppImgLogoTamplate: TppImage
        DesignLayer = ppDesignLayer6
        UserName = 'LaudoLogoCliente'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D616765452A0000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108007D00FF030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FDFCA8E7A92A39CE28029C974B6F1AC99F2E3A85F59B5B9BB7855E379234
          DFE5FF005AF88BF6BFFDB1F5DD524F8B5E0FD3D64D263F0B456BE45EDB4BFBD9
          3F7B179BFF00A32B9DF08EBFE38F0178FE6F8A97BF6DD5747B1F01DADCB3B5FF
          00EEAF27F2B6FF00E8DF37FEFAAFA3A7C3B5FD92AB2FB5B1F9D62BC40A1F5A96
          1A8C39BD9FC67E84F98B70FB77C7B6AC245E48E2BE1CF0FF00EDDDE27D63E307
          82EF24B59AD7C29A978565D5B52816D7CDD8D179BE67EF7FED957D27FB367ED1
          5A6FED15F0B74CF1259C72598D437C7F679BFD68743F357163329C46197EF0FA
          0CA78AB078FF00729C8F54A2AB5BDF79B52F9F5E49F4A49451466800A28AC7D7
          3C4B63E17D1EEAFB509A3B5B1B38BCD96593E58A38E806ECAECD1F2D644DB42C
          5E5FDD5AF903C55FF0571F0C5B6B9736DE1CF0AF8ABC516D67FEB6F6D20D908F
          FBEABD7BF670FDB3BC23FB4CF87EFAEB489AE2D67D2F8BEB5BD8FCA9AD7FDE15
          E7C332A129F2464793473CC1D59FB2A733D813694DBF7A9D8D836AD7C91E3BFF
          0082B2F83F44F135CE9BE19D07C41E2FFB1FC92DC69906E87FE00DFC55DFFECD
          5FB7A7837F6969E7D3EC64B9D3B5BB35DF2E9F7A36CA07AA7F7FFE03453CCA85
          49F229934F3EC04EA7B08543DE377B53C8F30D793E8DFB55F86EF7E3FEA7F0E6
          4692D35ED3ED62BC4F386D4BA597FE79D7A35E6B56DA7E9F25CCF2431C10A6F9
          1E4FE04AEAA75A94BE13D0862A94BE165F388CFF0076862B1D78A782FF006CBF
          0CFC43F855E30F17E9905EDC693E129EE6279157FE3F04112CACF17FB3F3578E
          5BFF00C164BC225BCE9BC27E324B2FF9F836F0795FFA36B9EA66786A5F1CCF36
          B710606972F3CBE23ECE3B63FF00669FFED0AF38F821F1F7C35FB45F8263D7BC
          3B7FF68B7F33CB955D364B0C9FDC75FE16AC9FF86B2F0D8FDA5BFE157FCEBAD7
          D83EDDE6FF00CB2DFF007BC8FF00AEBE57EF7FDDAE8FAD5270F6973BBFB430DC
          909F3FC67AD9DA8BFECD22ED65FF0066B8CF8DBF17AD7E0E7C2DD6BC51796973
          756DA2DAB5D496F0AFEF64DBDA9FF07FE32683F1A7C1165E22D06F21BAD33504
          DCB203D3FD8A3DB439FD99A7D6A8FB4F657F78EC847ED474AF16F879FB6168DF
          12BE3CF8B7E1FDB69FA85BEA5E0FDBE7DC4AA9E54DBBFB94BF027F6BAD0FF682
          F1978B347D3F4DD4ACAE3C1B75F63B892754F2A66DECBF27FDFAACFEB74A4634
          F32C3CBED9ED279EF40FAD78A7C56FDB1344F845F18FC23E0CBCD3750B8BEF18
          4BE55BDC4013C987F79B3F794ED7BF6BFD1FC3FF00B4B68DF0BE4D37559355D6
          ACFED915DA2A7D9E15FDEFFF001A6AAFAD403FB4F0B7E5E63DA2493647D288E5
          DC9D2B9CF88DF10AC7E1B7846FB5CD4A5FB3D869B6EF713C927DD555AE7BF673
          FDA0349FDA33E17D8F8A3495921B7BC5D925BCDFEB6D65F97744D55EDA1CFEC8
          DBEB54BDAFB0BFBE7A45151D495B1D05770AC3737DD5AC3F1BF8EB4DF04680DA
          86A7731D9DBC67619247F96B62E66510AB32FCB5F08FFC144BF68AD0BE317C1A
          F16685A5DC3C971E11D7ED60BB568BBFFF00BDAF4B2DC0CB155D533E6F88F388
          65D8394BED9C5EBDF0967F8FFF00B54FC72F0D69B3C36F7BA85B2BC5249FBD57
          F29ED65AFB06F3F66EFED1FD92D7E1DDD5E6EBAFEC38B4F6BB8D3F8E251F37FD
          F55E75FB20FECDFAA7823E386B3F1127BE86E34CF116896AB6F16CFDEFFAA8BF
          F8DD7D44668DE55555F9996BD6CFB35A9ED69E1F0F2F769F29F2FC1BC3B49D0A
          D8AC5D3FDE55E6FF00C04F9FAEBE0ADAFC15FD87B50D1646FB55D68DE16B9B69
          67913AEF8B7CB5F167C0CF1C6A5E19D6FE0B2DADF5D430C72EA175F668E5FDCC
          DFBD96BF48BF682F0E5C78A3E0878B34CB14F3AF352D32E2DE28FF00E7A3B445
          45782FEC59FB23DAC9F02BC1F71E2FD123B5D7B47FB77D97CCFF005B0C52D77E
          4F9D51A384A93C5FBFCF23C5E28E17C557CC28D2CBBF77C90FFDB8F3DF82FF00
          F0518F155B787BC149AE69B67AA5D7893C4173A74B73FEABC98BF75FFC77FF00
          2157D47FB387ED41A37ED296FAF49A45BDE5BAE837EF612FDA22F2BCCDBFC6B5
          F3BF8EFF00E09DB71E12BFF87F1F86AE924D3F45D765BFBF6BB97CD97E6689FF
          00F408ABC83F668FDA5EFBF66DF036A779A7E9BF6C9B5CF1AC7672C52CBE57EE
          BCAAEBC4E5182CC6854A996FF10E6CBF88B36C971B4E867553F767E9F52E3FD9
          AF06D23F6EFF00023CDE22FB66AE9A743E18D522D3AE64B91E52BC92AFFF0015
          E67FDFAAF5FD1BC496BAB3FEE2EA0B86DBE6E237FE06FB95F0B5B0788A5FC581
          FAEE0F38C2627F8550D7327C8D5F25FF00C15E3C57A8787FF666FB3D9C93431E
          B1A8416B75247DA26AFABDAE06578FBD5C17C7FF00815A4FC7FF00863A9785F5
          45916DF505DBE645FEB51FFE7AD7938FA33AD4254E999E7187A988C154A14BE2
          307F64FF00869A17803E067866D343B7B38EC6F34D86EE79628BFE3E647897F7
          9F8D79DFFC143B4AB3F865FB24F8D2F7C3BA6DB69D79AD4B125ECF6510495925
          976B4AFF00F7D37E75E5BE13F84FFB4C7ECE760BE1AF0BDC687E2AF0DD9FCB61
          2DDCB144D1C5FDDAF5EF829FB3778F3C5DF0EFC51A6FC64F1143AFAF8B13FE41
          B6ABB61D37FD98A4AF3BDE951F61ECCF9CA32FACE0FEA30A1C8F9394D4FF0082
          7A7C32D17C17FB3078666D361B79E6D62D56FEF261FF002DA597E666AF01FDB8
          FC3767F0B7F6D6F85BE20F0F471C3AE6B1A8A477F1C1F27DA57CD8A25FFC7659
          6AC785BE01FED15FB2699F40F02DC68DE26F0C6FDF6BF6B936B5BFFB3B9DABAE
          FD9EFF00629F16F893E3343F12FE2E6AF6FA97882D7FE3C2C2D1FF00D1EDBFFD
          D5727B19D4A14E853A7CA79CF0F531385A780A74792A40F19FDB03E1F6BDF103
          FE0A197B67E15BF92C7C4167A4C3AB584C9FF3D628BFD5D1E21FDA5BE217ED9F
          E1C87E1DE9F67368571656EEFE2EBCFE18FCADBF2AFF00BCDFF2CEBE8AFF0086
          67F13C9FF051AFF8583F67B5FF00844BFB2FECFE67DABF7BE6F95E57FAAAF6CD
          63E15E8BA4691E24B8D2749B0B5D5BC4513B4F2AC5B24BB97CADABE63543CA6B
          4FDA7B3F702970EE2A7EDAA7B4E4F7A47C61FB17112FFC1397E25FA99752FF00
          D238AB0FF653FDBABC09F04FF662B3F0AF882DAFAF3558C5CAB5BC763E6C5379
          B2B7FCB4E9FC55EC3FB32FECA1E32F871FB1578E3C23AC43A7C3E22D6BEDBF60
          8E3B8F361FDEC5E545FEEFDDAEE3F625FD963FE1547C08D2B4EF18685A1AF892
          DE595E595624B86FF5BFBBFDE5451CBF11FBBE5FE431C0E4B8F93A2A3EEFB878
          97FC13E2EEEBF67AF801F103E207882CEE349D2279DAF2D2D9FF0075E6AC4ACB
          B53FE05B62FF0080D78CFF00C2B9F19CBF0AE3FDA21A699B5CFF008483FB55A3
          DBF2FD97CDFBFF00FB4ABEB9FDBCBE0478D7F68E83C33E10F0DA5ADAF856E6EB
          CDD66EA5BAF2DBCAFEEF97FC55EE51FC1BD17FE151FF00C21BF658DB43FECDFE
          CBF236FF00CB0F2FCADBFF007CD69FD9BEEFB1FE4FFD28EB970DD6AD0FAB7D9A
          7FFA59E4BFB407C50D3FE367FC13E3C4BE28D30FFA3EABA134F0AFF71BFCFF00
          2AF907F669F1478BFF00636F02F87FE255AAC9AD7C39F160F2B5CB28D7FE3C25
          F37CAF3EBDA3E18FEC8FF143C07FB3D7C4CF86F73069F75A5DE79BFF0008E5CF
          DBFE69F77FCF5FF9E55EE1FB26FECFB75E03FD95748F05F8D2C74F9AE3C9920B
          DB3DFE6C452594F1FAD4BC1E22AD7A75FED7210F2DC6E638BA7564BD9CA9C3E2
          FEF1F3DFEC3BE2FB0F1D7EDFFF001535CD3EE96F2CF58B013DB483FB9BE2AF3B
          F805F15BC7DF0B3E3AFC566F02F837FE12E92EB5B95AF63DFB7C9FDECFE557D1
          1FB2AFEC4B7BFB35FED3DE26D574F93ED5E0FD634C11D9798FFBDB597CDFF54F
          5A1FB107ECDBE24F83BF173E296ADE20B6B35B3F126A3F69B068EE3CDF313CD9
          DFE6FF00BFB530C0626A7B3F69FCE73E1727C754546157DC9A9C8F9BBC63F13F
          C71F13BF6CEF84F73E39F08FFC21F796BA8A25AC1BF779C9E6D7AAFC4A3FF1B7
          EF03FF0077FB18FF00E8B9ABBCFDA93F66BF137C49FDAD7E18789B47B5B39345
          F0ECBE6DFB4971E54A9FBCDFF2D278F3F670F137893FE0A1BE17F8816D6F6C3C
          2BA5E9AD0CAFF6AFDF79BE54ABFEAFFEDAD692C0E269BFFB7E25FF00656268BA
          9FF2F3F7B139CFF82917C47D43C7FE23F0A7C1AF0EC9B756F185FA3DFB2F1E4D
          A2FF009FFC855CB7EC71ABCFFB1BFED61AF7C22D4EE249340F11F9575A1C9337
          597CAF9BF197FF006857A1FECC7FB33F8C2DFF006A4F177C4EF8856F630EA1A9
          3791A45B4375F6AFB1C5F32EDFFBE36D5EFDBE7F654D73E355A7877C49E076B7
          87C63E15BF8AE2D9E497CADE9FC5FBCADA783C44AACB17FD729DB572DC655ABF
          DA50FE2467FF00921F4FDA7FAAA9DFAD73BF0F27D5AFBC17A6CDADDBC169AC4D
          6B17DB6DE293CD8A397FE5A2AD744FD6BE98FBCA7F094EE22F322DADFC486BE1
          FF00D9B3E145B5DFED25F1734DF18E9263D2BC47AB7FA0437A9FB9BC78A5965F
          DDFF003FC2BEE6946467FD9AF8E3F6D6F841E22F117ED6FF0008F56D2B4D92EB
          4FD36F2496EAE51BFE3DFCAFDEFF00E81BAB4FED69E0285474FED1F27C5597F3
          FB1C4FB3E7F667D756023B3B4F2E08FCB8E3FB91D5F8FE74566FBD5F05FECD7F
          F0506BAF077C34D6B5AF1C4E2E23B9F17FF665AFD92D7FE7AFEF5EBEF0B1B817
          36B1B81C3F35E6E0330A78C87B4A67B394E7186C6D2FF672697FD4D450C1E40F
          2FCBFDDD59A0F22BB8F5CC9D65B36B3FFB9C57E49E89E1AD4B5CF8611B69FA6D
          E5D4B0F8FF00F7BF668BCDFF009655FAE6F12C8EC8DD96BCF3E137ECDBE15F82
          B6FAA41A369F0C31EADA936AB3FF00D75FE0AFA4C833BFECD8D4944F80E2CE11
          9E79569B94ED08731F0F7C7AFD903C65E10F0678EAF3FB3FFB5175EF155ACF6B
          0D97EF67F23F7BFF00C76B1F51F8C1E21F82BE3CF8D5AA69773247AA5BDB5ADB
          2472FEFBC9FDEC517FAAAFD37BF8A2B981966F2DA161F3EF5AF8BFF6EEFD98B4
          9F0EF833E216B3E17B5D42FF00C4DE2DFB35FDD59432F9BFBA8A58BCC97CAAF6
          B2CE28A58A97D5B1CBFAD0F8EE22E0AAD97D2FADE5953FAD4EE7F676FDB4355F
          8A7F1CE1F06EA1A5C10C7FF08FDB6A8F731B7FCB668E27957FF22D7A8FED51FB
          40DB7ECD3F07351F155C4125D3598F2EDEDD7FE5B4AEDFBB5AF2AFD963F642BE
          F057C53D3FC75797734725C786ED2CE7D3648BFD4CDE52A4BFFA296BD4FF006A
          6F83FA37C75F8497BE1CD72F3FB3ADAF1E358AE81DBE5CBBBF775F25C4DEC154
          FF0084F3EDB87FFB53FB2653C57F10F9874EFDA9BF692D574187C5D1F82743D4
          3419E2FB545636C9FE91E46DCFDDF377EEAF44FDAA7F6C9F16FC14F865F0F759
          B1D06DF4FD4BC613C6B7B657E77CB6BFBADDE57CB5E35E2FF077C72FD833C2F2
          6ABA778AF4BF16784747116EB7B95F99211F2FFAAFF967D7FE594B4FFF008280
          FC506F8C9F00BE10F8D1AD26B2B3B9D496F1E3FE287F74CDFF00B4EBE07EB552
          1425FF003F0F169E3EBD1A15A13A93F687DDFE22D564D37C1D7B7DB3F7D676CF
          2C5FF7EEBE64F809FB6678A3E267EC7DE36F1D5F69FA3C3ACF8764BAFB1C31AC
          BE4BF950452FEF3BD7D03F113C59A6DA7C1ED5B5096EA1FB02E9CF2EFDDFBBF2
          FCAAF8ABF63F8193FE0999F13A461B55E5D45A36FF00B611576D6C64E35F93FB
          87B99A6615E35E9C6854FB123EAEFD87FE366A7FB457ECFF00A678975A8ECE1D
          46EA595254B66FDD7EEE565FFD96BD8982A3357CC9FF0004A89962FD913C3FF3
          7FCB4B8FFD1ED5F4CA3FDA5EBD4C0D49D4A1199F4391D6FAC60E15264D8C0A3C
          8A907028CD761EB91F90BFDDA2A4A339A008F1463FE99D499CD14011C3079546
          D5137DDA928A008F19346CFF0067F4A928A008E8A933450047525145004661C5
          67EAF631DC5B37EEE3F3B1FBBDF5A951CF49ABAB13523CD1E53F21FC7BF0CB5D
          F84DF0063B6D7F4FFECFB8BAF1FC8E8B24BE779DE55AF955FAB5A16B10DE431A
          C722B4D02C692AFD6BC9FF006C0FD92EC7F696F0FF0087ED64BE9B4FFEC7D516
          FDDADFFE5B27FCB45AF26FD873E206B1AD7EDA3F18B4FBFD52F6EB4FB5BCF2E0
          8A47FDCC3E53B45F2FFDF35F3181A3F50C67B3FF009F87E7D96E12793E3F97EC
          54E58FFE947D9F5254709C5484E057D41FA195DF031FECD79C7ED0BF1FFC3FFB
          3AF83ADF5BD7EEA1B5B492F22B54DC9DE43FFC42C95DF5E6A56F62B1F9B2471F
          9C76455F187FC15BBC4B69E27F8070ADA491CCD61E2582CE5FFAEBE5B579F996
          2BEAF879543C5CF330960F0929D3F8CF60FDB8BE2F5D7827F65BF166B1E1FB88
          D6F96C10C52F95E6FEEE5F97FF0066AF997E046BFAF7C42FDBA7E18EB3A8FDB2
          49758F06C73DD49E54BE54DFBA97FED95723E3DF10F8A7E26789FE34F8420B9D
          4354B783C3D62F67A67FCF18E2FB2B7EEBFEFE4B5F6F7EC6FE0393C2DF00BC0C
          BAA58FD975CB1D122B5984BFEB61F97FD5D78386AD571B5EFF0009F2183C556C
          DF1CAFFC387FF247AFC49B52BCD3F698FD9B34BFDA73E1DC9E1DD66F350B5B5F
          3A2BA496CA5F29A1962AF506F96A32147CDF76BEA2A5384A3C933F43A9469D4A
          7ECAA1F13DCFFC12BF56D74DB697E25F8B1E26D77C3B0BEE5B07DCAADFF02F32
          BE82F8A5FB2AF84FE24FC104F00CB63F63D0EC608A2B45B76DAF67E56DF29A3F
          F76BE53FDBF3F6BFF10683FB4468FA7F8525BC6B7F872F16A7AA793FEAA6925F
          F9612FFDB2FF00D1B5F6B7817E215A7C4DF87163AEE99279D6DA9D97DAAD65F6
          DB5E1E0E38394EA50A67C6E552CAEA55C461A8C4F93D7FE094BADDE69D0E8B75
          F163C4D79E168DF77F66345F2FFDF5E657D0A7F668D174BFD9BB50F86DA34926
          97A64D612D824A3F7B2279BFC7FA9AF967FE09F7FB774967E26FF840BC61A849
          32BDD4B1691A95CC9FF4D3FE3D6493FBD5D2FF00C14A3F6EE7F873A65C780FC1
          B79B7C417917FA6DEC47FE41B17FF1DACF0F5F2F85095639B0B9864B430B5317
          4FFC03746FF8255EADE19D37EC5A7FC64F1469F670F4B6B68E48A24FFC8B5F52
          FC0EF015CFC23F867A3F87EF359BCF115D69B02C4F7D73FEBAE7FDAAF907F6FC
          F16EADA07EC89F0A2E2C75CD52C25BA6B55BA92DAE1E1964FF0045ABFE08FD8A
          AEA3F14E913FFC2FAD7EEA48E6493ECFF6CF967FFA65FEB6A70B88A546BFB3A1
          0FFC989C163B0F84C67B1C251FE5FB5FCC7DB6DAB436AA9E636C3FDDA7C5AAC7
          72088DB737A57C11FB59E93ADFC50FF8281691E07B3F15F883C3F617FA5AB6EB
          0BA93F75FBA97FE5956478E6DBC77FB05FC79F05C29E3CD63C61A0F89AF3C896
          CAFF00FEBA2A49FF00A356BABFB63F7BF07BA7A33E289C6AD4FDDFB909F21FA1
          B1EA31BB2C6DF2B376A897508E3B76665D89BABE37F887E35D623FF82ABF8574
          B8F54BF8F4D93482F2D92DD3F939F2A5FF00967597F1C7E2CF8FBF6B6FDA5B52
          F85BE09D5E4F0C787FC3BB5758D4E2FF005B27FCF455ADAA6714E3CC944DA7C4
          D08A97B9EFF3F244FB863D42373FBB9235FF008155B79302BE23B7FF00827CFC
          48F861AA586A1E07F8B1AC497D1CB17DA9758DF3DBCD17FCB4AFA87E2EFC50B7
          F823F0A351F10EAF3EE8744B032CBFF4D1C0AE8A38A9F2DEB53E43D2C3667565
          4AA4B154FD9F21DBA5D678DD4F59766EDDF76BE06FF826BFED4DAD78A7E31EB7
          E1DF17CD7826F184B36BBA5FDAFF00F224517FD32F2FFF004557A07FC1543E28
          EBDF0A3C29E05D63C3BA84F63A959EB8BB157EEDC6E89BF752573C336A52C27D
          6CE5A3C4D869E065987D989F5A1932BF37DEA74772B2EEDB5F39FC12FDB074CF
          DA43E00EB9756B2AE9FE22D374D962D4AC18AF9B672F95F7BFDCAE6BFE092FE2
          CD4BC5FF00B395E5C6A9A85E6A5767589B74D712F9ADFF002CABA29E614A5387
          27DA3A28E754AB56A74E9FDB3EAFDEA8CABB92A4793E6DB5F9E9FB71FEDA1AF6
          81FB4D6996FE1B92F24D33E1D4B15D6A9E57FAA9A597FE594BFF006CBF77FF00
          5D4D7DD3F0E7C6963F113C1FA6EBB632F9D63A95B25CC527FB3461B1B4EB559D
          32B2DCF30D8BC454C353FF00976755454705495E81ED0547525474015A7E4FE1
          5F147EC17FF27DDF1B3FEBF25FFD286AFB626EA7E95F13FEC0FF00F27D9F1B3F
          EBF65FFD296AF1731FF7AA27CAE77FEFB85FF17FEDA7DB1FEB5597DB358DAAF8
          D6C74FF13D8E91349B6F7528A578A2DFFDCAC2FDA07E262FC1BF841E23F137D9
          E4BAFEC3B27BAF291F6799B57757C332FC676F8C9FB5F7C07F1749BEC5AF3466
          96E3CD97FE792DD79BFF00A2EB7C7E694A84B919B6739F52C04E14A5F13E53DA
          BFE0A2FF0015B5CF007C50F8416BA46A93E9F6BA8EB7B2F228BFE5B8F3608BFF
          004195EBE79F831FB385C7ED3F67F193C3F6BA849677567E328AEBCDF2BCDFF9
          6B2D749FB5A7ED01A2FED0DE20F837E20D0EE7ED5691F8965B61FBBF2BFD55D4
          5FFB4ABE8DFD88FF00668D4BE0378B7E235FDFDEC773178A357F3ED57CBF2F64
          7BA597FF006AD7CF724B1B8CFF00A767C84683CCF39949FBD4FF00FB53BFF027
          ECCFE1CF02F8C751F105B585A36ABAAD94363797022FDECE22AF4AB3B7F2E2FF
          0057E5D4823F7A757D751A34A9FF000CFD2F0F83A5457EE86F96BB76D79E7ED2
          3F192C7E037C22D6BC4D75E4B0B08331C6DF2F9B2FFCB38FFEFA35E865B637FB
          2D5C7FC57F825E1BF8D7A147A6789749B3D6B4F864FB42DBDCAEE8B7D3C47338
          7B8678A8CE74671A7F11F28FEC29FB3047F12BE07F8ABC49E3655BDD5BE2934B
          248D244B95B6DBB7FF001E9773FE31557FF826E7C41BCF87BE20F187C1BF134C
          62D4FC3935CC964CDFF2DA2FE3F2FF00F1C7FF008157DA9A1786AD3C35A4DBD9
          59C31DB5B5AA6C8A34FF0096695CA5E7ECF1E11BAF89D1F8D1F42D3C78AA18BE
          CCBA9F95FBED9FDDAF323967B3E5F667CDC7872A52546A507EFC7E3FEF1F017E
          C79FB2E59FED4BF043E2069ADFE8BAC69BAF34BA7DF7FCF197CAF97FED954BFB
          49FEC8727ECDDFB14EA17FAD4F1EA9E30D6F50B56D52F5A5F3191B77FAA8A4AF
          D03F857F027C2FF04ECF518BC35A3D9E8D1EAD71F6ABA5B65DBE74BFDEAB1F14
          3E0F787BE32785BFB23C4DA659EADA76F597C89D7E5DF5CBFD834BD87F7CE587
          05619E13D9FDB3E1FF00F82894EBFF000C7FF0823DDB7E6B5C7FE01D5CF847F0
          CBF660F047C43F0FEB1A6F8D269B5BD36E525B312DFBCBFBEFFBF75F5FF8E3F6
          72F067C4AF0CE9BA46B9A0E9FA869BA47FC795BCABF2DBFCBB38FF0080D72D61
          FB00FC23D2F50B6B887C05A1C7359CBE7C527923E57FEF50B2CABF59F6F0E433
          9F0CE2A38CFACC63097C1F17F74F01F89E9F69FF0082BE78455BFE810DFF00A2
          A5AE475FF0DC5F037FE0A2FA6DC7C49BAD43C49A56AB2F9DE17D4751B8F362D3
          E5967FDDAFFDB2AFACFC6FE1FF00873A07C76F0DEB5AD59E9B1F8E358F36C348
          BA953F7F2795FC35D2FC52F807E15F8E105BDBF8AF45D3F5BB7B37F3628AE577
          6CA98E5BF13A7FCE6D3C8653E6FE7E7E7FFF0068F957E24CCFA87FC15DFC22F8
          F93FB20AAFFDFA96B96D17C671FEC31FB7D78AAEFC5505CC3E1BF1CB4D7167A9
          6CF96169656936D7DABFF0CF3E0FFF00859763E326D034FF00F84974DB5FB1DA
          DFEDFDEC317F76AE7C48F83DE1DF8BFA3C9A6F88B49B1D5ACFBC373179AA6B4F
          ECA9F2F3FDBE7E62EA70E57B4AA539FBFCFCE790F8C7FE0A2BF0AFC170DBCCDE
          2187559AF2548A0B7D347DA25FFBE6BC93F6FCF185FF00ED05F19BC1FF0005B4
          19BE5D4A78B50D6668BFE5941FDDFF00BF5BA4FF00BF55EFFE02FD86FE18FC34
          D5E1D4B49F086970DF43FEADD91A668FFEFB6AEB742FD9FF00C23E1EF8997DE2
          DB3D134F87C49AA2FF00A56A017F7B35744F0F8AC443D9D73A6B6031F8CA1ECF
          112FFF0064F963FE0A13F03E6F84FE15F067C44F06C0B6F75F0F25B6B7558BFE
          7D46D545FE9FF6D6B9FF00F828CFC53D3FE33FECD3F0BBC5766BFE8FAC6A51DD
          2AFF00CF35F29BCCAFB93C61E0CD3FC69E1BBDD3355B68EF6C6FE2F2EE2DE5F9
          A3913FBB5C2FFC31D7C399FC07A7F86DBC29A53E83A6DEFF0068DB5998FF0075
          0CDFF3D76FF7AB1AD93CB964A9F530C670EC9FB5A143F8753FF4A3E72FDAF7F6
          4ED73C03A9CBF13BE1AAC967AD35BEED6AC2DE2F97548B67CEFE5FF7AB9EFD84
          7E3859FECFBFB08F8ABC473794CBA7EA7766087FE7A5CF95179517FDF5B6BEFA
          834D5DAD1FFAC8EB81D63F648F87DE22F0E5C69179E17D2EE34BBAD4BFB5A5B4
          68FF0074D75FF3D7FDEA53C9B92BFB4A12227C2B3A58AFACE1267CE5FB11FECA
          1178DFF668F13EB3E2F569B5AF8B2669EE9E48BF7A9161962FEB2FFC0A99FF00
          04C8F8997BE0DD7BC47F087C48DE5EB1E0FBA965B057FF0096B07F1F95FECFCD
          BBFEDAD7D93A5E850E8D611D95B450C36D6E9E5451C7FF002CD2B985FD9E3C22
          9F147FE1348F43D3D7C52B1791FDA3E57EFB6D6F4F2DE474DC3EC9D14F876542
          AD1AB877F0FC7FDE3BA82A4A8E087CA15257B07D70547525474015DBEF2FD2BE
          27FD82BFE4FB7E377FD7E4DFFA50D5F6CBF45AF893F60638FDBC3E387FD7F4DF
          FA50D5E1669FEF143FC47CB673FEFB85FF0017FEDA7BB7EDDFAB46BFB2AF8FED
          F77EF9744964DBFF000135F09FC13D323D77E2E7ECF3A7C8DE5FDB346BA4C0EF
          FBCBAAF6EF8A5AA7883E38FEDD3F103E19DC6B13C3E1DD53C33F6682DA38BFE3
          DBF7513F9FFF007F5ABDABF669FD93347F861E0BF029BE8E3D435CF0AD84B125
          DCB6FB66F3653E6B7FE8C97FEFAAF3B15839E3711CD0FEBDE3E6330CBEAE7598
          FB48FF000E1FFB6C8E4FF670FD81B49F871F0FF41D375F5B3F105E68FE209756
          8E6BDB7FF52DFEABF75FF7CC75F55430AC31FD299E5C79FBB53614A7B57D2617
          070C3C39207E8197E5F87C2439280FA28A2BA8F40318151D38BE56B8FF00897F
          17BC3FF07F47FED2F11EB167A2D8C8FE52CB74FB577D0635AB429C79A675C781
          483915E51E1AFDB37E1A78B3505B1B4F1AF87E6BA93EEC6B78BBABA2F891F1B7
          C33F0734882FBC49AD69FA3595C4BE54535CCBB56493FBB58FD6295B9EE614F3
          0C3CA1ED39CED8FCBF769A54C87E65AF1CB2FDB9BE166A1791DB43E38F0EB4D7
          0FE5A47F6B5AEFFC4BE3DD37C1BA1CFA96ADA85AE9B676EBB9E7B997CA896A69
          E229CBDE521D3CC30D3F7A150E9768C74AE5BE2DF89AF3C21F0EB5CD534FB6FB
          65EE976171776F6FFF003D9D226655AE0FC27FB70FC31F19EB30E9B63E35D0E7
          BD99F645179FE5349FF7DD75DE2EF8E1E15F05EB3A4695AD6B961A7DF6B92F95
          616F2CBF35DFD2B3FAC529FC323378EA15E93F6550F85FC03F15755F897F173E
          0AEA9AD7C42B3F15EA9777B7979FD9715AC514BA3CBF6397745FBAFF00BF5FBD
          AE9BF672FDA83E247C46F8C5E1B79EFA193FB5757BAB3D5345B9BAB58A3B3862
          FF009E51FF00AEF362AFAFEF7C0DE09F015ADD6BB368FE1FD323B31F6996F5AD
          6287CAFF006FCCAA9F0BCF80FE203FFC265E1683C3FA8CD78BB1756B4B789A59
          BFEDAD7934F2DAB1AB1FDE1F3386C97134EAC5D4C41DF348AAEBFDEA958EDDD5
          F2F7ED01E06F127C67FDA22C7C277BF112D7C37E1386DE2D4A1D234995E2D635
          0F29B6C8F2CBFF003C777CB5F406B3ADDAF81BC3375A85F5E2C3A65845E6CD71
          70FF002C2895EC53C5465CDFDD3E9A8E2A32E7FEE9D17CB43E41FBB5E3369FB7
          67C2BD4A58D17C75E1D5327DDFF4C55AF429BE2468F67E11935E9356B18F4586
          2FB4BDDF9BFBAF2BFBDBEB4A78AA553E19174730C3D6FE1D43A70703FD9A43C0
          AE6FC01F13344F8A3E1B8759F0FEA567AB6993FF00AAB9B793744D4DD5FE26E8
          BA3F8C2C7C3F3EA1671EB1AA452CB6B6C5FF007B3245F7DBFE0355ED0DBEB10E
          4E7B9D5518A8E03525686E1451450014514500151D4941E680296A11F996922A
          FF0076BE03F821E328FF00679FDA33E3C78B3C490DE69FA4C378A915CDC5BCBE
          54AF2C9FBA8FFCFF007ABF404B7F0D7C9DFF00055AF0F436FF00B2BEB5756D1F
          D9E6BCD46CDE56FF009EBB5956BCBCDA9FEEFDBFF21F31C4586FDDFD721FF2EC
          E13E156AF6FE29FF0082B6EA17D6EFF68B1BFF000F2DCDAC83EECD13DB415F75
          463A7D6BF3C7F63CFF00948868FF00F62459FF00E92C55FA283A9AE1C867ED28
          CA5FDF38B82EB7B5C2D4AAFF009E449451457D11F6814514500463A57C7BFF00
          058F8B77ECE7A5FF00D8720FFD153D7D80C7E6FC2BE4BFF82BA68D7BAEFECE1A
          5C76163797F709ADC4DE55BC5E6B7FAA9ABCDCDA2E7849F29E0F125373CB6AC6
          2789FED23F037E08E89FB33B6ABA5FF6269BE28FB1DAC907D8EF7CD9E4B9DB16
          D8DE3DDF3562FED1DAAEB1AE7FC1377E12DC6B9E77DA26D453F7927FADFB3795
          71E57FE41DB5F43FC24FF82627C2BD3F47D2756BED06E2EAEA6822BA78A7BD95
          A2F33FD6FF00AADD589FF056DF064EFF00B3F785AD743D36E26583598B65BD95
          BB3793FBA6FEE57835B03563879548FBBEE1F0F89CA7154F03571338FD8F80E0
          BE14F8BFF657F18F8C7C3BA3D8783E6FED8BCBC8E2B4696DE5F9AE7B7FCB4ABB
          FB42585DFED8FF00F0500B6F8677579736FE11F0C5A7DB2E2DE293FE3E7F75FB
          CFFD1BE555CF057EDDDA359EA7A6DA47F02757B4B8699224B88B4E8BF73FF4D3
          77975A5FB5EFC1DF1B7C1EFDA46C3E337C3FD2E5D70AC4B0EAFA744DBA497858
          B72C7FF5CA88FBD868FB3FFB7C172D5C0C7D9FBD1E68F3F2C794F4FF0014FF00
          C132FE1278AFC38D62BE1B834D3B36C775646559D2BC6BF6E1F09D8F803F68AF
          803A5D9F99F66D3EF63B58BCC6F33F75E6C55B579FF0546F11F8C74FFECFF087
          C2DF145D78926FDD450DCAAAC50CBFED558FDBC7E10F8E3E22783FE1FF008FB4
          4D0E46F14783E5FB65EE9D09F3A6FF009652ED8BFE7A7EF625AEAC47B0961E5F
          5489EC63BEAB57072FECF81F40FED4F27FC633F8DBFEC0575FFA20D7937FC12E
          F53B6F0FFEC67637D7927976F67717CF23CBFF002C8453B7F85794FC53FDBF7C
          45F1EFE165DF82BC33F0E7C4D0F89B5E88D85C3F95E6C36FF2ED968F8D3E16F1
          37ECE3FB13F84FE10E8F637DA878AFC68EF6D7D358A4B3450F9B2EE9774BFF00
          02F2AA6A62AF5FDBD3F863032AB9A7B5C4FD770FEF4610FF00C9CF1FF13FC60F
          15F883E325CFED036B0BFF00C23FA4F88534C897F89ACFF893FEFD37FE3D5F7B
          7ED0BE2BB3F1DFEC65E28D634F9BCEB2D5FC392DCC52FAC72C0DFD2AAF85BF64
          8D0F43FD9423F86F7290B433697E45CBFF00CF49E5FBD2FF00DFDF9ABE6BFD9C
          7C45E26D13F657F8B1F0AF5CD2F565D4BC2FA6EA0DA6EDB597FD2E2DB2FEEA3F
          FB6BFF00A36B2A14EBD18CA13FF9786186C362301ED235FF00E5FC3FF2729FEC
          C9F01BE116A7FB16D87897C7967A3DBDFDE2DE41FDA135C795752F94D2EE68DB
          FE7AEDAADFB1E5A6A90FEC11F189A65BCFF847D52EFF00B23ED07FD6AF90DE6E
          CFF815777F013F65F6F8FF00FF0004DCB3F0DEAB673E9FAA4735C5D587DA53CA
          96DAE56793CA6FFD06B3FE077C42F11788FF0062BF891E00D7B43D5ECFC51E13
          D22E6C1049612422F22F23F74D1D610C1BA728FBBF60F3E1859D2F636A7CB1F6
          72FF00C0CF57FF00825F4B1D9FEC63A1C9236D8E196E77FF00DFD6AF913E357C
          57F177C54F8C7E22F8D5E1D8DFFE11FF0087BAA5BD85937F7E2FE2FF00D0BFF2
          3D779A5F8EFC4DF0C7FE09A1A2F87349D175C6F1278AAE6E6C22862B097CD863
          32B79BFE7DEBEA1F803FB26E93E03FD93EDBC03A85AC732EA9652FF6A0FF009E
          D2CABFBDAE8F6756BD38D0FE43BE586C463E851C343FE5DC39FF00EDE3D3FE12
          FC49D3FE2EFC3ED275ED324F32C754B54BA81BFD96AEBBA8DD5F14FF00C135B5
          3D7BE1278C7C5DF0A3C456BA85BC3A1DD3DD6937735BED82E206FBFE5C9FF917
          FE055F6A467E45AFA0C15494A8731F6F93E2A588C246757E226A28A2BB0F5028
          A28A0028A28A008C1CD709F1D3E0868BF1F3C017DE1FD72D56EB4FBC5CB2FF00
          B75DE84C52790A077ACEA535523CB331A9421569F24CF96BE1F7EC8F75E0DFDB
          92EFC6505C5BC3A1C3A1C36B6B63123EE87E4F2BFF006957D45145B2355A9044
          17D69C46EA9A3878518F2C0E7C0E5F4B0B1E5A41451456C7705145140062ABDC
          D8C771F7EAC514015EDECBECFF00C744D671DC0AB1450051FEC4885C799537D8
          63A9F60A360A2C89F6715D0ADFD9F08EDFA54C6D54D3F60A360A2C1ECE3D8AB1
          E951412EE55A7FD863A9F60A360A8E441ECE2B448608D648EA3FECF8EAC51565
          5915FF00B323F4A3EC31D4FB051B0504F247B0CFB247FDDA6A5A2C7F76A6A282
          AC88459A2D3AA4A2800A28A2800A28A2803FFFD9}
        mmHeight = 12702
        mmLeft = 78846
        mmTop = 2646
        mmWidth = 37572
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Processo N'#176' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 76994
        mmTop = 32278
        mmWidth = 27781
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 5028
        mmLeft = 105304
        mmTop = 32278
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Laudo de Morte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 84138
        mmTop = 24077
        mmWidth = 31485
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape27: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape18'
        Brush.Color = clMoneyGreen
        mmHeight = 13229
        mmLeft = 2910
        mmTop = 41008
        mmWidth = 126736
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape28: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape19'
        Brush.Color = clMoneyGreen
        mmHeight = 13229
        mmLeft = 129117
        mmTop = 41008
        mmWidth = 67998
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label99'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Identifica'#231#227'o : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 45241
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 34660
        mmTop = 45241
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1010'
        Border.mmPadding = 0
        Caption = 'Local :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 130969
        mmTop = 45243
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText100'
        Border.mmPadding = 0
        DataField = 'ULTIMO_LOCAL'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 7938
        mmLeft = 143404
        mmTop = 43127
        mmWidth = 51594
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape29: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape17'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 54237
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape30: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape20'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 66143
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape31: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape201'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 78050
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'M'#233'dico Veterin'#225'rio : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 57942
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label76'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Capataz EPE : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 69582
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label77'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pecuarista : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 81488
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape32: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape22'
        mmHeight = 12171
        mmLeft = 56621
        mmTop = 54237
        mmWidth = 94721
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape33: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape23'
        mmHeight = 12171
        mmLeft = 151077
        mmTop = 54237
        mmWidth = 45773
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText89'
        Border.mmPadding = 0
        DataField = 'VETERINARIO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 57678
        mmTop = 57942
        mmWidth = 92076
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape34: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape24'
        mmHeight = 12171
        mmLeft = 56621
        mmTop = 66143
        mmWidth = 140229
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText99: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText90'
        Border.mmPadding = 0
        DataField = 'CAPATAZ_EPE'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 57413
        mmTop = 69583
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape35: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape25'
        mmHeight = 12171
        mmLeft = 56621
        mmTop = 78048
        mmWidth = 140229
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText101: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText901'
        Border.mmPadding = 0
        DataField = 'PRODUTOR'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 57415
        mmTop = 81488
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape36: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape26'
        mmHeight = 12171
        mmLeft = 2906
        mmTop = 89959
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText102: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText92'
        Border.mmPadding = 0
        DataField = 'RACACATEGORIA'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 56620
        mmTop = 92342
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label78'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o do Animal : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 92334
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape37: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape37'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 101865
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText103: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText103'
        Border.mmPadding = 0
        DataField = 'FAIXAERA'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 104246
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label90'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Era : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 104243
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape38: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape38'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 113771
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText104: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText104'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 116152
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label901'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Entrada na Unidade : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 116149
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape39: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape39'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 125673
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText105: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText105'
        Border.mmPadding = 0
        DataField = 'OPERACAO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 128055
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label92'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Opera'#231#227'o vigente : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 128051
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape40: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape40'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 137584
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText106: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText106'
        Border.mmPadding = 0
        DataField = 'MOTIVO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 139965
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label93'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Causa da Morte : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 139962
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppShape41: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape41'
        Brush.Color = clMoneyGreen
        mmHeight = 13229
        mmLeft = 2910
        mmTop = 149486
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label94'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico Ante-mortem : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 153719
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText107: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText107'
        Border.mmPadding = 0
        DataField = 'HIST_ANTE_MORTEM'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 58738
        mmLeft = 3968
        mmTop = 163775
        mmWidth = 191822
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label95'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCF/SISBOV : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 68262
        mmTop = 45243
        mmWidth = 25136
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText108: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText108'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4498
        mmLeft = 93927
        mmTop = 45243
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line15'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 245273
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText109: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText109'
        Border.mmPadding = 0
        DataField = 'VETERINARIO'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4763
        mmLeft = 59002
        mmTop = 246067
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label96'
        Border.mmPadding = 0
        Caption = 'M'#233'dico Veterin'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 84667
        mmTop = 256117
        mmWidth = 28310
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText110: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText110'
        Border.mmPadding = 0
        DataField = 'CRM'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 3969
        mmLeft = 59002
        mmTop = 250829
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText111: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText111'
        Border.mmPadding = 0
        DataField = 'CRM'
        DataPipeline = ppBDEPLaudo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudo'
        mmHeight = 4233
        mmLeft = 152136
        mmTop = 57944
        mmWidth = 43656
        BandType = 0
        LayerName = BandLayer7
      end
      object ImgAssVeterinario1: TppImage
        DesignLayer = ppDesignLayer6
        UserName = 'ImgAssVeterinario1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 231514
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer7
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'BandLayer7'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppRepTamplateVenda: TppReport
    AutoStop = False
    DataPipeline = ppBDEPLaudoVenda
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 296
    Top = 528
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPLaudoVenda'
    object ppHeaderBand5: TppHeaderBand
      BeforePrint = ppHeaderBand5BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 261673
      mmPrintPosition = 0
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape401'
        mmHeight = 61119
        mmLeft = 2910
        mmTop = 150542
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer8
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer5
        UserName = 'LaudoLogoCliente'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D616765452A0000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108007D00FF030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FDFCA8E7A92A39CE28029C974B6F1AC99F2E3A85F59B5B9BB7855E379234
          DFE5FF005AF88BF6BFFDB1F5DD524F8B5E0FD3D64D263F0B456BE45EDB4BFBD9
          3F7B179BFF00A32B9DF08EBFE38F0178FE6F8A97BF6DD5747B1F01DADCB3B5FF
          00EEAF27F2B6FF00E8DF37FEFAAFA3A7C3B5FD92AB2FB5B1F9D62BC40A1F5A96
          1A8C39BD9FC67E84F98B70FB77C7B6AC245E48E2BE1CF0FF00EDDDE27D63E307
          82EF24B59AD7C29A978565D5B52816D7CDD8D179BE67EF7FED957D27FB367ED1
          5A6FED15F0B74CF1259C72598D437C7F679BFD68743F357163329C46197EF0FA
          0CA78AB078FF00729C8F54A2AB5BDF79B52F9F5E49F4A49451466800A28AC7D7
          3C4B63E17D1EEAFB509A3B5B1B38BCD96593E58A38E806ECAECD1F2D644DB42C
          5E5FDD5AF903C55FF0571F0C5B6B9736DE1CF0AF8ABC516D67FEB6F6D20D908F
          FBEABD7BF670FDB3BC23FB4CF87EFAEB489AE2D67D2F8BEB5BD8FCA9AD7FDE15
          E7C332A129F2464793473CC1D59FB2A733D813694DBF7A9D8D836AD7C91E3BFF
          0082B2F83F44F135CE9BE19D07C41E2FFB1FC92DC69906E87FE00DFC55DFFECD
          5FB7A7837F6969E7D3EC64B9D3B5BB35DF2E9F7A36CA07AA7F7FFE03453CCA85
          49F229934F3EC04EA7B08543DE377B53C8F30D793E8DFB55F86EF7E3FEA7F0E6
          4692D35ED3ED62BC4F386D4BA597FE79D7A35E6B56DA7E9F25CCF2431C10A6F9
          1E4FE04AEAA75A94BE13D0862A94BE165F388CFF0076862B1D78A782FF006CBF
          0CFC43F855E30F17E9905EDC693E129EE6279157FE3F04112CACF17FB3F3578E
          5BFF00C164BC225BCE9BC27E324B2FF9F836F0795FFA36B9EA66786A5F1CCF36
          B710606972F3CBE23ECE3B63FF00669FFED0AF38F821F1F7C35FB45F8263D7BC
          3B7FF68B7F33CB955D364B0C9FDC75FE16AC9FF86B2F0D8FDA5BFE157FCEBAD7
          D83EDDE6FF00CB2DFF007BC8FF00AEBE57EF7FDDAE8FAD5270F6973BBFB430DC
          909F3FC67AD9DA8BFECD22ED65FF0066B8CF8DBF17AD7E0E7C2DD6BC51796973
          756DA2DAB5D496F0AFEF64DBDA9FF07FE32683F1A7C1165E22D06F21BAD33504
          DCB203D3FD8A3DB439FD99A7D6A8FB4F657F78EC847ED474AF16F879FB6168DF
          12BE3CF8B7E1FDB69FA85BEA5E0FDBE7DC4AA9E54DBBFB94BF027F6BAD0FF682
          F1978B347D3F4DD4ACAE3C1B75F63B892754F2A66DECBF27FDFAACFEB74A4634
          F32C3CBED9ED279EF40FAD78A7C56FDB1344F845F18FC23E0CBCD3750B8BEF18
          4BE55BDC4013C987F79B3F794ED7BF6BFD1FC3FF00B4B68DF0BE4D37559355D6
          ACFED915DA2A7D9E15FDEFFF001A6AAFAD403FB4F0B7E5E63DA2493647D288E5
          DC9D2B9CF88DF10AC7E1B7846FB5CD4A5FB3D869B6EF713C927DD555AE7BF673
          FDA0349FDA33E17D8F8A3495921B7BC5D925BCDFEB6D65F97744D55EDA1CFEC8
          DBEB54BDAFB0BFBE7A45151D495B1D05770AC3737DD5AC3F1BF8EB4DF04680DA
          86A7731D9DBC67619247F96B62E66510AB32FCB5F08FFC144BF68AD0BE317C1A
          F16685A5DC3C971E11D7ED60BB568BBFFF00BDAF4B2DC0CB155D533E6F88F388
          65D8394BED9C5EBDF0967F8FFF00B54FC72F0D69B3C36F7BA85B2BC5249FBD57
          F29ED65AFB06F3F66EFED1FD92D7E1DDD5E6EBAFEC38B4F6BB8D3F8E251F37FD
          F55E75FB20FECDFAA7823E386B3F1127BE86E34CF116896AB6F16CFDEFFAA8BF
          F8DD7D44668DE55555F9996BD6CFB35A9ED69E1F0F2F769F29F2FC1BC3B49D0A
          D8AC5D3FDE55E6FF00C04F9FAEBE0ADAFC15FD87B50D1646FB55D68DE16B9B69
          67913AEF8B7CB5F167C0CF1C6A5E19D6FE0B2DADF5D430C72EA175F668E5FDCC
          DFBD96BF48BF682F0E5C78A3E0878B34CB14F3AF352D32E2DE28FF00E7A3B445
          45782FEC59FB23DAC9F02BC1F71E2FD123B5D7B47FB77D97CCFF005B0C52D77E
          4F9D51A384A93C5FBFCF23C5E28E17C557CC28D2CBBF77C90FFDB8F3DF82FF00
          F0518F155B787BC149AE69B67AA5D7893C4173A74B73FEABC98BF75FFC77FF00
          2157D47FB387ED41A37ED296FAF49A45BDE5BAE837EF612FDA22F2BCCDBFC6B5
          F3BF8EFF00E09DB71E12BFF87F1F86AE924D3F45D765BFBF6BB97CD97E6689FF
          00F408ABC83F668FDA5EFBF66DF036A779A7E9BF6C9B5CF1AC7672C52CBE57EE
          BCAAEBC4E5182CC6854A996FF10E6CBF88B36C971B4E867553F767E9F52E3FD9
          AF06D23F6EFF00023CDE22FB66AE9A743E18D522D3AE64B91E52BC92AFFF0015
          E67FDFAAF5FD1BC496BAB3FEE2EA0B86DBE6E237FE06FB95F0B5B0788A5FC581
          FAEE0F38C2627F8550D7327C8D5F25FF00C15E3C57A8787FF666FB3D9C93431E
          B1A8416B75247DA26AFABDAE06578FBD5C17C7FF00815A4FC7FF00863A9785F5
          45916DF505DBE645FEB51FFE7AD7938FA33AD4254E999E7187A988C154A14BE2
          307F64FF00869A17803E067866D343B7B38EC6F34D86EE79628BFE3E647897F7
          9F8D79DFFC143B4AB3F865FB24F8D2F7C3BA6DB69D79AD4B125ECF6510495925
          976B4AFF00F7D37E75E5BE13F84FFB4C7ECE760BE1AF0BDC687E2AF0DD9FCB61
          2DDCB144D1C5FDDAF5EF829FB3778F3C5DF0EFC51A6FC64F1143AFAF8B13FE41
          B6ABB61D37FD98A4AF3BDE951F61ECCF9CA32FACE0FEA30A1C8F9394D4FF0082
          7A7C32D17C17FB3078666D361B79E6D62D56FEF261FF002DA597E666AF01FDB8
          FC3767F0B7F6D6F85BE20F0F471C3AE6B1A8A477F1C1F27DA57CD8A25FFC7659
          6AC785BE01FED15FB2699F40F02DC68DE26F0C6FDF6BF6B936B5BFFB3B9DABAE
          FD9EFF00629F16F893E3343F12FE2E6AF6FA97882D7FE3C2C2D1FF00D1EDBFFD
          D5727B19D4A14E853A7CA79CF0F531385A780A74792A40F19FDB03E1F6BDF103
          FE0A197B67E15BF92C7C4167A4C3AB584C9FF3D628BFD5D1E21FDA5BE217ED9F
          E1C87E1DE9F67368571656EEFE2EBCFE18FCADBF2AFF00BCDFF2CEBE8AFF0086
          67F13C9FF051AFF8583F67B5FF00844BFB2FECFE67DABF7BE6F95E57FAAAF6CD
          63E15E8BA4691E24B8D2749B0B5D5BC4513B4F2AC5B24BB97CADABE63543CA6B
          4FDA7B3F702970EE2A7EDAA7B4E4F7A47C61FB17112FFC1397E25FA99752FF00
          D238AB0FF653FDBABC09F04FF662B3F0AF882DAFAF3558C5CAB5BC763E6C5379
          B2B7FCB4E9FC55EC3FB32FECA1E32F871FB1578E3C23AC43A7C3E22D6BEDBF60
          8E3B8F361FDEC5E545FEEFDDAEE3F625FD963FE1547C08D2B4EF18685A1AF892
          DE595E595624B86FF5BFBBFDE5451CBF11FBBE5FE431C0E4B8F93A2A3EEFB878
          97FC13E2EEEBF67AF801F103E207882CEE349D2279DAF2D2D9FF0075E6AC4ACB
          B53FE05B62FF0080D78CFF00C2B9F19CBF0AE3FDA21A699B5CFF008483FB55A3
          DBF2FD97CDFBFF00FB4ABEB9FDBCBE0478D7F68E83C33E10F0DA5ADAF856E6EB
          CDD66EA5BAF2DBCAFEEF97FC55EE51FC1BD17FE151FF00C21BF658DB43FECDFE
          CBF236FF00CB0F2FCADBFF007CD69FD9BEEFB1FE4FFD28EB970DD6AD0FAB7D9A
          7FFA59E4BFB407C50D3FE367FC13E3C4BE28D30FFA3EABA134F0AFF71BFCFF00
          2AF907F669F1478BFF00636F02F87FE255AAC9AD7C39F160F2B5CB28D7FE3C25
          F37CAF3EBDA3E18FEC8FF143C07FB3D7C4CF86F73069F75A5DE79BFF0008E5CF
          DBFE69F77FCF5FF9E55EE1FB26FECFB75E03FD95748F05F8D2C74F9AE3C9920B
          DB3DFE6C452594F1FAD4BC1E22AD7A75FED7210F2DC6E638BA7564BD9CA9C3E2
          FEF1F3DFEC3BE2FB0F1D7EDFFF001535CD3EE96F2CF58B013DB483FB9BE2AF3B
          F805F15BC7DF0B3E3AFC566F02F837FE12E92EB5B95AF63DFB7C9FDECFE557D1
          1FB2AFEC4B7BFB35FED3DE26D574F93ED5E0FD634C11D9798FFBDB597CDFF54F
          5A1FB107ECDBE24F83BF173E296ADE20B6B35B3F126A3F69B068EE3CDF313CD9
          DFE6FF00BFB530C0626A7B3F69FCE73E1727C754546157DC9A9C8F9BBC63F13F
          C71F13BF6CEF84F73E39F08FFC21F796BA8A25AC1BF779C9E6D7AAFC4A3FF1B7
          EF03FF0077FB18FF00E8B9ABBCFDA93F66BF137C49FDAD7E18789B47B5B39345
          F0ECBE6DFB4971E54A9FBCDFF2D278F3F670F137893FE0A1BE17F8816D6F6C3C
          2BA5E9AD0CAFF6AFDF79BE54ABFEAFFEDAD692C0E269BFFB7E25FF00656268BA
          9FF2F3F7B139CFF82917C47D43C7FE23F0A7C1AF0EC9B756F185FA3DFB2F1E4D
          A2FF009FFC855CB7EC71ABCFFB1BFED61AF7C22D4EE249340F11F9575A1C9337
          597CAF9BF197FF006857A1FECC7FB33F8C2DFF006A4F177C4EF8856F630EA1A9
          3791A45B4375F6AFB1C5F32EDFFBE36D5EFDBE7F654D73E355A7877C49E076B7
          87C63E15BF8AE2D9E497CADE9FC5FBCADA783C44AACB17FD729DB572DC655ABF
          DA50FE2467FF00921F4FDA7FAAA9DFAD73BF0F27D5AFBC17A6CDADDBC169AC4D
          6B17DB6DE293CD8A397FE5A2AD744FD6BE98FBCA7F094EE22F322DADFC486BE1
          FF00D9B3E145B5DFED25F1734DF18E9263D2BC47AB7FA0437A9FB9BC78A5965F
          DDFF003FC2BEE6946467FD9AF8E3F6D6F841E22F117ED6FF0008F56D2B4D92EB
          4FD36F2496EAE51BFE3DFCAFDEFF00E81BAB4FED69E0285474FED1F27C5597F3
          FB1C4FB3E7F667D756023B3B4F2E08FCB8E3FB91D5F8FE74566FBD5F05FECD7F
          F0506BAF077C34D6B5AF1C4E2E23B9F17FF665AFD92D7FE7AFEF5EBEF0B1B817
          36B1B81C3F35E6E0330A78C87B4A67B394E7186C6D2FF672697FD4D450C1E40F
          2FCBFDDD59A0F22BB8F5CC9D65B36B3FFB9C57E49E89E1AD4B5CF8611B69FA6D
          E5D4B0F8FF00F7BF668BCDFF009655FAE6F12C8EC8DD96BCF3E137ECDBE15F82
          B6FAA41A369F0C31EADA936AB3FF00D75FE0AFA4C833BFECD8D4944F80E2CE11
          9E79569B94ED08731F0F7C7AFD903C65E10F0678EAF3FB3FFB5175EF155ACF6B
          0D97EF67F23F7BFF00C76B1F51F8C1E21F82BE3CF8D5AA69773247AA5BDB5ADB
          2472FEFBC9FDEC517FAAAFD37BF8A2B981966F2DA161F3EF5AF8BFF6EEFD98B4
          9F0EF833E216B3E17B5D42FF00C4DE2DFB35FDD59432F9BFBA8A58BCC97CAAF6
          B2CE28A58A97D5B1CBFAD0F8EE22E0AAD97D2FADE5953FAD4EE7F676FDB4355F
          8A7F1CE1F06EA1A5C10C7FF08FDB6A8F731B7FCB668E27957FF22D7A8FED51FB
          40DB7ECD3F07351F155C4125D3598F2EDEDD7FE5B4AEDFBB5AF2AFD963F642BE
          F057C53D3FC75797734725C786ED2CE7D3648BFD4CDE52A4BFFA296BD4FF006A
          6F83FA37C75F8497BE1CD72F3FB3ADAF1E358AE81DBE5CBBBF775F25C4DEC154
          FF0084F3EDB87FFB53FB2653C57F10F9874EFDA9BF692D574187C5D1F82743D4
          3419E2FB545636C9FE91E46DCFDDF377EEAF44FDAA7F6C9F16FC14F865F0F759
          B1D06DF4FD4BC613C6B7B657E77CB6BFBADDE57CB5E35E2FF077C72FD833C2F2
          6ABA778AF4BF16784747116EB7B95F99211F2FFAAFF967D7FE594B4FFF008280
          FC506F8C9F00BE10F8D1AD26B2B3B9D496F1E3FE287F74CDFF00B4EBE07EB552
          1425FF003F0F169E3EBD1A15A13A93F687DDFE22D564D37C1D7B7DB3F7D676CF
          2C5FF7EEBE64F809FB6678A3E267EC7DE36F1D5F69FA3C3ACF8764BAFB1C31AC
          BE4BF950452FEF3BD7D03F113C59A6DA7C1ED5B5096EA1FB02E9CF2EFDDFBBF2
          FCAAF8ABF63F8193FE0999F13A461B55E5D45A36FF00B611576D6C64E35F93FB
          87B99A6615E35E9C6854FB123EAEFD87FE366A7FB457ECFF00A678975A8ECE1D
          46EA595254B66FDD7EEE565FFD96BD8982A3357CC9FF0004A89962FD913C3FF3
          7FCB4B8FFD1ED5F4CA3FDA5EBD4C0D49D4A1199F4391D6FAC60E15264D8C0A3C
          8A907028CD761EB91F90BFDDA2A4A339A008F1463FE99D499CD14011C3079546
          D5137DDA928A008F19346CFF0067F4A928A008E8A933450047525145004661C5
          67EAF631DC5B37EEE3F3B1FBBDF5A951CF49ABAB13523CD1E53F21FC7BF0CB5D
          F84DF0063B6D7F4FFECFB8BAF1FC8E8B24BE779DE55AF955FAB5A16B10DE431A
          C722B4D02C692AFD6BC9FF006C0FD92EC7F696F0FF0087ED64BE9B4FFEC7D516
          FDDADFFE5B27FCB45AF26FD873E206B1AD7EDA3F18B4FBFD52F6EB4FB5BCF2E0
          8A47FDCC3E53B45F2FFDF35F3181A3F50C67B3FF009F87E7D96E12793E3F97EC
          54E58FFE947D9F5254709C5484E057D41FA195DF031FECD79C7ED0BF1FFC3FFB
          3AF83ADF5BD7EEA1B5B492F22B54DC9DE43FFC42C95DF5E6A56F62B1F9B2471F
          9C76455F187FC15BBC4B69E27F8070ADA491CCD61E2582CE5FFAEBE5B579F996
          2BEAF879543C5CF330960F0929D3F8CF60FDB8BE2F5D7827F65BF166B1E1FB88
          D6F96C10C52F95E6FEEE5F97FF0066AF997E046BFAF7C42FDBA7E18EB3A8FDB2
          49758F06C73DD49E54BE54DFBA97FED95723E3DF10F8A7E26789FE34F8420B9D
          4354B783C3D62F67A67FCF18E2FB2B7EEBFEFE4B5F6F7EC6FE0393C2DF00BC0C
          BAA58FD975CB1D122B5984BFEB61F97FD5D78386AD571B5EFF0009F2183C556C
          DF1CAFFC387FF247AFC49B52BCD3F698FD9B34BFDA73E1DC9E1DD66F350B5B5F
          3A2BA496CA5F29A1962AF506F96A32147CDF76BEA2A5384A3C933F43A9469D4A
          7ECAA1F13DCFFC12BF56D74DB697E25F8B1E26D77C3B0BEE5B07DCAADFF02F32
          BE82F8A5FB2AF84FE24FC104F00CB63F63D0EC608A2B45B76DAF67E56DF29A3F
          F76BE53FDBF3F6BFF10683FB4468FA7F8525BC6B7F872F16A7AA793FEAA6925F
          F9612FFDB2FF00D1B5F6B7817E215A7C4DF87163AEE99279D6DA9D97DAAD65F6
          DB5E1E0E38394EA50A67C6E552CAEA55C461A8C4F93D7FE094BADDE69D0E8B75
          F163C4D79E168DF77F66345F2FFDF5E657D0A7F668D174BFD9BB50F86DA34926
          97A64D612D824A3F7B2279BFC7FA9AF967FE09F7FB774967E26FF840BC61A849
          32BDD4B1691A95CC9FF4D3FE3D6493FBD5D2FF00C14A3F6EE7F873A65C780FC1
          B79B7C417917FA6DEC47FE41B17FF1DACF0F5F2F85095639B0B9864B430B5317
          4FFC03746FF8255EADE19D37EC5A7FC64F1469F670F4B6B68E48A24FFC8B5F52
          FC0EF015CFC23F867A3F87EF359BCF115D69B02C4F7D73FEBAE7FDAAF907F6FC
          F16EADA07EC89F0A2E2C75CD52C25BA6B55BA92DAE1E1964FF0045ABFE08FD8A
          AEA3F14E913FFC2FAD7EEA48E6493ECFF6CF967FFA65FEB6A70B88A546BFB3A1
          0FFC989C163B0F84C67B1C251FE5FB5FCC7DB6DAB436AA9E636C3FDDA7C5AAC7
          72088DB737A57C11FB59E93ADFC50FF8281691E07B3F15F883C3F617FA5AB6EB
          0BA93F75FBA97FE5956478E6DBC77FB05FC79F05C29E3CD63C61A0F89AF3C896
          CAFF00FEBA2A49FF00A356BABFB63F7BF07BA7A33E289C6AD4FDDFB909F21FA1
          B1EA31BB2C6DF2B376A897508E3B76665D89BABE37F887E35D623FF82ABF8574
          B8F54BF8F4D93482F2D92DD3F939F2A5FF00967597F1C7E2CF8FBF6B6FDA5B52
          F85BE09D5E4F0C787FC3BB5758D4E2FF005B27FCF455ADAA6714E3CC944DA7C4
          D08A97B9EFF3F244FB863D42373FBB9235FF008155B79302BE23B7FF00827CFC
          48F861AA586A1E07F8B1AC497D1CB17DA9758DF3DBCD17FCB4AFA87E2EFC50B7
          F823F0A351F10EAF3EE8744B032CBFF4D1C0AE8A38A9F2DEB53E43D2C3667565
          4AA4B154FD9F21DBA5D678DD4F59766EDDF76BE06FF826BFED4DAD78A7E31EB7
          E1DF17CD7826F184B36BBA5FDAFF00F224517FD32F2FFF004557A07FC1543E28
          EBDF0A3C29E05D63C3BA84F63A959EB8BB157EEDC6E89BF752573C336A52C27D
          6CE5A3C4D869E065987D989F5A1932BF37DEA74772B2EEDB5F39FC12FDB074CF
          DA43E00EB9756B2AE9FE22D374D962D4AC18AF9B672F95F7BFDCAE6BFE092FE2
          CD4BC5FF00B395E5C6A9A85E6A5767589B74D712F9ADFF002CABA29E614A5387
          27DA3A28E754AB56A74E9FDB3EAFDEA8CABB92A4793E6DB5F9E9FB71FEDA1AF6
          81FB4D6996FE1B92F24D33E1D4B15D6A9E57FAA9A597FE594BFF006CBF77FF00
          5D4D7DD3F0E7C6963F113C1FA6EBB632F9D63A95B25CC527FB3461B1B4EB559D
          32B2DCF30D8BC454C353FF00976755454705495E81ED0547525474015A7E4FE1
          5F147EC17FF27DDF1B3FEBF25FFD286AFB626EA7E95F13FEC0FF00F27D9F1B3F
          EBF65FFD296AF1731FF7AA27CAE77FEFB85FF17FEDA7DB1FEB5597DB358DAAF8
          D6C74FF13D8E91349B6F7528A578A2DFFDCAC2FDA07E262FC1BF841E23F137D9
          E4BAFEC3B27BAF291F6799B57757C332FC676F8C9FB5F7C07F1749BEC5AF3466
          96E3CD97FE792DD79BFF00A2EB7C7E694A84B919B6739F52C04E14A5F13E53DA
          BFE0A2FF0015B5CF007C50F8416BA46A93E9F6BA8EB7B2F228BFE5B8F3608BFF
          004195EBE79F831FB385C7ED3F67F193C3F6BA849677567E328AEBCDF2BCDFF9
          6B2D749FB5A7ED01A2FED0DE20F837E20D0EE7ED5691F8965B61FBBF2BFD55D4
          5FFB4ABE8DFD88FF00668D4BE0378B7E235FDFDEC773178A357F3ED57CBF2F64
          7BA597FF006AD7CF724B1B8CFF00A767C84683CCF39949FBD4FF00FB53BFF027
          ECCFE1CF02F8C751F105B585A36ABAAD94363797022FDECE22AF4AB3B7F2E2FF
          0057E5D4823F7A757D751A34A9FF000CFD2F0F83A5457EE86F96BB76D79E7ED2
          3F192C7E037C22D6BC4D75E4B0B08331C6DF2F9B2FFCB38FFEFA35E865B637FB
          2D5C7FC57F825E1BF8D7A147A6789749B3D6B4F864FB42DBDCAEE8B7D3C47338
          7B8678A8CE74671A7F11F28FEC29FB3047F12BE07F8ABC49E3655BDD5BE2934B
          248D244B95B6DBB7FF001E9773FE31557FF826E7C41BCF87BE20F187C1BF134C
          62D4FC3935CC964CDFF2DA2FE3F2FF00F1C7FF008157DA9A1786AD3C35A4DBD9
          59C31DB5B5AA6C8A34FF0096695CA5E7ECF1E11BAF89D1F8D1F42D3C78AA18BE
          CCBA9F95FBED9FDDAF323967B3E5F667CDC7872A52546A507EFC7E3FEF1F017E
          C79FB2E59FED4BF043E2069ADFE8BAC69BAF34BA7DF7FCF197CAF97FED954BFB
          49FEC8727ECDDFB14EA17FAD4F1EA9E30D6F50B56D52F5A5F3191B77FAA8A4AF
          D03F857F027C2FF04ECF518BC35A3D9E8D1EAD71F6ABA5B65DBE74BFDEAB1F14
          3E0F787BE32785BFB23C4DA659EADA76F597C89D7E5DF5CBFD834BD87F7CE587
          05619E13D9FDB3E1FF00F82894EBFF000C7FF0823DDB7E6B5C7FE01D5CF847F0
          CBF660F047C43F0FEB1A6F8D269B5BD36E525B312DFBCBFBEFFBF75F5FF8E3F6
          72F067C4AF0CE9BA46B9A0E9FA869BA47FC795BCABF2DBFCBB38FF0080D72D61
          FB00FC23D2F50B6B887C05A1C7359CBE7C527923E57FEF50B2CABF59F6F0E433
          9F0CE2A38CFACC63097C1F17F74F01F89E9F69FF0082BE78455BFE810DFF00A2
          A5AE475FF0DC5F037FE0A2FA6DC7C49BAD43C49A56AB2F9DE17D4751B8F362D3
          E5967FDDAFFDB2AFACFC6FE1FF00873A07C76F0DEB5AD59E9B1F8E358F36C348
          BA953F7F2795FC35D2FC52F807E15F8E105BDBF8AF45D3F5BB7B37F3628AE577
          6CA98E5BF13A7FCE6D3C8653E6FE7E7E7FFF0068F957E24CCFA87FC15DFC22F8
          F93FB20AAFFDFA96B96D17C671FEC31FB7D78AAEFC5505CC3E1BF1CB4D7167A9
          6CF96169656936D7DABFF0CF3E0FFF00859763E326D034FF00F84974DB5FB1DA
          DFEDFDEC317F76AE7C48F83DE1DF8BFA3C9A6F88B49B1D5ACFBC373179AA6B4F
          ECA9F2F3FDBE7E62EA70E57B4AA539FBFCFCE790F8C7FE0A2BF0AFC170DBCCDE
          2187559AF2548A0B7D347DA25FFBE6BC93F6FCF185FF00ED05F19BC1FF0005B4
          19BE5D4A78B50D6668BFE5941FDDFF00BF5BA4FF00BF55EFFE02FD86FE18FC34
          D5E1D4B49F086970DF43FEADD91A668FFEFB6AEB742FD9FF00C23E1EF8997DE2
          DB3D134F87C49AA2FF00A56A017F7B35744F0F8AC443D9D73A6B6031F8CA1ECF
          112FFF0064F963FE0A13F03E6F84FE15F067C44F06C0B6F75F0F25B6B7558BFE
          7D46D545FE9FF6D6B9FF00F828CFC53D3FE33FECD3F0BBC5766BFE8FAC6A51DD
          2AFF00CF35F29BCCAFB93C61E0CD3FC69E1BBDD3355B68EF6C6FE2F2EE2DE5F9
          A3913FBB5C2FFC31D7C399FC07A7F86DBC29A53E83A6DEFF0068DB5998FF0075
          0CDFF3D76FF7AB1AD93CB964A9F530C670EC9FB5A143F8753FF4A3E72FDAF7F6
          4ED73C03A9CBF13BE1AAC967AD35BEED6AC2DE2F97548B67CEFE5FF7AB9EFD84
          7E3859FECFBFB08F8ABC473794CBA7EA7766087FE7A5CF95179517FDF5B6BEFA
          834D5DAD1FFAC8EB81D63F648F87DE22F0E5C69179E17D2EE34BBAD4BFB5A5B4
          68FF0074D75FF3D7FDEA53C9B92BFB4A12227C2B3A58AFACE1267CE5FB11FECA
          1178DFF668F13EB3E2F569B5AF8B2669EE9E48BF7A9161962FEB2FFC0A99FF00
          04C8F8997BE0DD7BC47F087C48DE5EB1E0FBA965B057FF0096B07F1F95FECFCD
          BBFEDAD7D93A5E850E8D611D95B450C36D6E9E5451C7FF002CD2B985FD9E3C22
          9F147FE1348F43D3D7C52B1791FDA3E57EFB6D6F4F2DE474DC3EC9D14F876542
          AD1AB877F0FC7FDE3BA82A4A8E087CA15257B07D70547525474015DBEF2FD2BE
          27FD82BFE4FB7E377FD7E4DFFA50D5F6CBF45AF893F60638FDBC3E387FD7F4DF
          FA50D5E1669FEF143FC47CB673FEFB85FF0017FEDA7BB7EDDFAB46BFB2AF8FED
          F77EF9744964DBFF000135F09FC13D323D77E2E7ECF3A7C8DE5FDB346BA4C0EF
          FBCBAAF6EF8A5AA7883E38FEDD3F103E19DC6B13C3E1DD53C33F6682DA38BFE3
          DBF7513F9FFF007F5ABDABF669FD93347F861E0BF029BE8E3D435CF0AD84B125
          DCB6FB66F3653E6B7FE8C97FEFAAF3B15839E3711CD0FEBDE3E6330CBEAE7598
          FB48FF000E1FFB6C8E4FF670FD81B49F871F0FF41D375F5B3F105E68FE209756
          8E6BDB7FF52DFEABF75FF7CC75F55430AC31FD299E5C79FBB53614A7B57D2617
          070C3C39207E8197E5F87C2439280FA28A2BA8F40318151D38BE56B8FF00897F
          17BC3FF07F47FED2F11EB167A2D8C8FE52CB74FB577D0635AB429C79A675C781
          483915E51E1AFDB37E1A78B3505B1B4F1AF87E6BA93EEC6B78BBABA2F891F1B7
          C33F0734882FBC49AD69FA3595C4BE54535CCBB56493FBB58FD6295B9EE614F3
          0C3CA1ED39CED8FCBF769A54C87E65AF1CB2FDB9BE166A1791DB43E38F0EB4D7
          0FE5A47F6B5AEFFC4BE3DD37C1BA1CFA96ADA85AE9B676EBB9E7B997CA896A69
          E229CBDE521D3CC30D3F7A150E9768C74AE5BE2DF89AF3C21F0EB5CD534FB6FB
          65EE976171776F6FFF003D9D226655AE0FC27FB70FC31F19EB30E9B63E35D0E7
          BD99F645179FE5349FF7DD75DE2EF8E1E15F05EB3A4695AD6B961A7DF6B92F95
          616F2CBF35DFD2B3FAC529FC323378EA15E93F6550F85FC03F15755F897F173E
          0AEA9AD7C42B3F15EA9777B7979FD9715AC514BA3CBF6397745FBAFF00BF5FBD
          AE9BF672FDA83E247C46F8C5E1B79EFA193FB5757BAB3D5345B9BAB58A3B3862
          FF009E51FF00AEF362AFAFEF7C0DE09F015ADD6BB368FE1FD323B31F6996F5AD
          6287CAFF006FCCAA9F0BCF80FE203FFC265E1683C3FA8CD78BB1756B4B789A59
          BFEDAD7934F2DAB1AB1FDE1F3386C97134EAC5D4C41DF348AAEBFDEA958EDDD5
          F2F7ED01E06F127C67FDA22C7C277BF112D7C37E1386DE2D4A1D234995E2D635
          0F29B6C8F2CBFF003C777CB5F406B3ADDAF81BC3375A85F5E2C3A65845E6CD71
          70FF002C2895EC53C5465CDFDD3E9A8E2A32E7FEE9D17CB43E41FBB5E3369FB7
          67C2BD4A58D17C75E1D5327DDFF4C55AF429BE2468F67E11935E9356B18F4586
          2FB4BDDF9BFBAF2BFBDBEB4A78AA553E19174730C3D6FE1D43A70703FD9A43C0
          AE6FC01F13344F8A3E1B8759F0FEA567AB6993FF00AAB9B793744D4DD5FE26E8
          BA3F8C2C7C3F3EA1671EB1AA452CB6B6C5FF007B3245F7DBFE0355ED0DBEB10E
          4E7B9D5518A8E03525686E1451450014514500151D4941E680296A11F996922A
          FF0076BE03F821E328FF00679FDA33E3C78B3C490DE69FA4C378A915CDC5BCBE
          54AF2C9FBA8FFCFF007ABF404B7F0D7C9DFF00055AF0F436FF00B2BEB5756D1F
          D9E6BCD46CDE56FF009EBB5956BCBCDA9FEEFDBFF21F31C4586FDDFD721FF2EC
          E13E156AF6FE29FF0082B6EA17D6EFF68B1BFF000F2DCDAC83EECD13DB415F75
          463A7D6BF3C7F63CFF00948868FF00F62459FF00E92C55FA283A9AE1C867ED28
          CA5FDF38B82EB7B5C2D4AAFF009E449451457D11F6814514500463A57C7BFF00
          058F8B77ECE7A5FF00D8720FFD153D7D80C7E6FC2BE4BFF82BA68D7BAEFECE1A
          5C76163797F709ADC4DE55BC5E6B7FAA9ABCDCDA2E7849F29E0F125373CB6AC6
          2789FED23F037E08E89FB33B6ABA5FF6269BE28FB1DAC907D8EF7CD9E4B9DB16
          D8DE3DDF3562FED1DAAEB1AE7FC1377E12DC6B9E77DA26D453F7927FADFB3795
          71E57FE41DB5F43FC24FF82627C2BD3F47D2756BED06E2EAEA6822BA78A7BD95
          A2F33FD6FF00AADD589FF056DF064EFF00B3F785AD743D36E26583598B65BD95
          BB3793FBA6FEE57835B03563879548FBBEE1F0F89CA7154F03571338FD8F80E0
          BE14F8BFF657F18F8C7C3BA3D8783E6FED8BCBC8E2B4696DE5F9AE7B7FCB4ABB
          FB42585DFED8FF00F0500B6F8677579736FE11F0C5A7DB2E2DE293FE3E7F75FB
          CFFD1BE555CF057EDDDA359EA7A6DA47F02757B4B8699224B88B4E8BF73FF4D3
          77975A5FB5EFC1DF1B7C1EFDA46C3E337C3FD2E5D70AC4B0EAFA744DBA497858
          B72C7FF5CA88FBD868FB3FFB7C172D5C0C7D9FBD1E68F3F2C794F4FF0014FF00
          C132FE1278AFC38D62BE1B834D3B36C775646559D2BC6BF6E1F09D8F803F68AF
          803A5D9F99F66D3EF63B58BCC6F33F75E6C55B579FF0546F11F8C74FFECFF087
          C2DF145D78926FDD450DCAAAC50CBFED558FDBC7E10F8E3E22783FE1FF008FB4
          4D0E46F14783E5FB65EE9D09F3A6FF009652ED8BFE7A7EF625AEAC47B0961E5F
          5489EC63BEAB57072FECF81F40FED4F27FC633F8DBFEC0575FFA20D7937FC12E
          F53B6F0FFEC67637D7927976F67717CF23CBFF002C8453B7F85794FC53FDBF7C
          45F1EFE165DF82BC33F0E7C4D0F89B5E88D85C3F95E6C36FF2ED968F8D3E16F1
          37ECE3FB13F84FE10E8F637DA878AFC68EF6D7D358A4B3450F9B2EE9774BFF00
          02F2AA6A62AF5FDBD3F863032AB9A7B5C4FD770FEF4610FF00C9CF1FF13FC60F
          15F883E325CFED036B0BFF00C23FA4F88534C897F89ACFF893FEFD37FE3D5F7B
          7ED0BE2BB3F1DFEC65E28D634F9BCEB2D5FC392DCC52FAC72C0DFD2AAF85BF64
          8D0F43FD9423F86F7290B433697E45CBFF00CF49E5FBD2FF00DFDF9ABE6BFD9C
          7C45E26D13F657F8B1F0AF5CD2F565D4BC2FA6EA0DA6EDB597FD2E2DB2FEEA3F
          FB6BFF00A36B2A14EBD18CA13FF9786186C362301ED235FF00E5FC3FF2729FEC
          C9F01BE116A7FB16D87897C7967A3DBDFDE2DE41FDA135C795752F94D2EE68DB
          FE7AEDAADFB1E5A6A90FEC11F189A65BCFF847D52EFF00B23ED07FD6AF90DE6E
          CFF815777F013F65F6F8FF00FF0004DCB3F0DEAB673E9FAA4735C5D587DA53CA
          96DAE56793CA6FFD06B3FE077C42F11788FF0062BF891E00D7B43D5ECFC51E13
          D22E6C1049612422F22F23F74D1D610C1BA728FBBF60F3E1859D2F636A7CB1F6
          72FF00C0CF57FF00825F4B1D9FEC63A1C9236D8E196E77FF00DFD6AF913E357C
          57F177C54F8C7E22F8D5E1D8DFFE11FF0087BAA5BD85937F7E2FE2FF00D0BFF2
          3D779A5F8EFC4DF0C7FE09A1A2F87349D175C6F1278AAE6E6C22862B097CD863
          32B79BFE7DEBEA1F803FB26E93E03FD93EDBC03A85AC732EA9652FF6A0FF009E
          D2CABFBDAE8F6756BD38D0FE43BE586C463E851C343FE5DC39FF00EDE3D3FE12
          FC49D3FE2EFC3ED275ED324F32C754B54BA81BFD96AEBBA8DD5F14FF00C135B5
          3D7BE1278C7C5DF0A3C456BA85BC3A1DD3DD6937735BED82E206FBFE5C9FF917
          FE055F6A467E45AFA0C15494A8731F6F93E2A588C246757E226A28A2BB0F5028
          A28A0028A28A008C1CD709F1D3E0868BF1F3C017DE1FD72D56EB4FBC5CB2FF00
          B75DE84C52790A077ACEA535523CB331A9421569F24CF96BE1F7EC8F75E0DFDB
          92EFC6505C5BC3A1C3A1C36B6B63123EE87E4F2BFF006957D45145B2355A9044
          17D69C46EA9A3878518F2C0E7C0E5F4B0B1E5A41451456C7705145140062ABDC
          D8C771F7EAC514015EDECBECFF00C744D671DC0AB1450051FEC4885C799537D8
          63A9F60A360A2C89F6715D0ADFD9F08EDFA54C6D54D3F60A360A2C1ECE3D8AB1
          E951412EE55A7FD863A9F60A360A8E441ECE2B448608D648EA3FECF8EAC51565
          5915FF00B323F4A3EC31D4FB051B0504F247B0CFB247FDDA6A5A2C7F76A6A282
          AC88459A2D3AA4A2800A28A2800A28A2803FFFD9}
        mmHeight = 12702
        mmLeft = 78846
        mmTop = 2646
        mmWidth = 37572
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Processo N'#176' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 76994
        mmTop = 32278
        mmWidth = 27781
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText89: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 5028
        mmLeft = 105304
        mmTop = 32278
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Laudo de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 80169
        mmTop = 24077
        mmWidth = 33073
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape18'
        Brush.Color = clMoneyGreen
        mmHeight = 13229
        mmLeft = 2910
        mmTop = 41008
        mmWidth = 126736
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape19'
        Brush.Color = clMoneyGreen
        mmHeight = 13229
        mmLeft = 129117
        mmTop = 41008
        mmWidth = 67998
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label99'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Identifica'#231#227'o : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 45241
        mmWidth = 30163
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText90: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_1'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 34660
        mmTop = 45241
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1010'
        Border.mmPadding = 0
        Caption = 'Local :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 130969
        mmTop = 45243
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText91: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText100'
        Border.mmPadding = 0
        DataField = 'ULTIMO_LOCAL'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 7938
        mmLeft = 143406
        mmTop = 45244
        mmWidth = 51594
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape17'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 54237
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape21: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape20'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 66143
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape22: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape201'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 78050
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'M'#233'dico Veterin'#225'rio : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 57942
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label76'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Capataz EP : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 69582
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label77'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pecuarista : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 81488
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape23: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape22'
        mmHeight = 12171
        mmLeft = 56621
        mmTop = 54237
        mmWidth = 94721
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape24: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape23'
        mmHeight = 12171
        mmLeft = 151077
        mmTop = 54237
        mmWidth = 45773
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText89'
        Border.mmPadding = 0
        DataField = 'VETERINARIO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 57678
        mmTop = 57942
        mmWidth = 92076
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape25: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape24'
        mmHeight = 12171
        mmLeft = 56621
        mmTop = 66143
        mmWidth = 140229
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText90'
        Border.mmPadding = 0
        DataField = 'CAPATAZ_EPE'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 59267
        mmTop = 69586
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape26: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape25'
        mmHeight = 12171
        mmLeft = 56621
        mmTop = 78048
        mmWidth = 140229
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText98: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText901'
        Border.mmPadding = 0
        DataField = 'PRODUTOR'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 57415
        mmTop = 81488
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape43: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape26'
        mmHeight = 12171
        mmLeft = 2906
        mmTop = 89959
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText100: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText92'
        Border.mmPadding = 0
        DataField = 'RACACATEGORIA'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 56620
        mmTop = 92342
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label78'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o do Animal : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 92334
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape44: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape37'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 101865
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText112: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText103'
        Border.mmPadding = 0
        DataField = 'FAIXAERA'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 104246
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label90'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Era : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 104243
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape45: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape38'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 113771
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText113: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText104'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 116152
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label901'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Entrada na Unidade : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 116149
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape46: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape39'
        mmHeight = 12171
        mmLeft = 2910
        mmTop = 125673
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText114: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText105'
        Border.mmPadding = 0
        DataField = 'OPERACAO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 128055
        mmWidth = 137584
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label92'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Opera'#231#227'o vigente : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 128051
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppShape48: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape41'
        Brush.Color = clMoneyGreen
        mmHeight = 13229
        mmLeft = 2910
        mmTop = 137577
        mmWidth = 193940
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label94'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico Ante-mortem : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 141810
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText116: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText107'
        Border.mmPadding = 0
        DataField = 'HIST_ANTE_MORTEM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 58738
        mmLeft = 3968
        mmTop = 151866
        mmWidth = 191822
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label95'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCF/SISBOV : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 68527
        mmTop = 45243
        mmWidth = 25135
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText117: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText108'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4498
        mmLeft = 94457
        mmTop = 45243
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line15'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 59267
        mmTop = 245273
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText118: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText109'
        Border.mmPadding = 0
        DataField = 'VETERINARIO'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4763
        mmLeft = 59002
        mmTop = 246067
        mmWidth = 81492
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel113: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label96'
        Border.mmPadding = 0
        Caption = 'M'#233'dico Veterin'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 84667
        mmTop = 256117
        mmWidth = 28310
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText119: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText110'
        Border.mmPadding = 0
        DataField = 'CRM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 3969
        mmLeft = 59002
        mmTop = 250829
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer8
      end
      object ppDBText120: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText111'
        Border.mmPadding = 0
        DataField = 'CRM'
        DataPipeline = ppBDEPLaudoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPLaudoVenda'
        mmHeight = 4233
        mmLeft = 152136
        mmTop = 57944
        mmWidth = 43656
        BandType = 0
        LayerName = BandLayer8
      end
      object ppImgVeterinarioVenda: TppImage
        DesignLayer = ppDesignLayer5
        UserName = 'ImgVeterinarioVenda'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 231511
        mmWidth = 81756
        BandType = 0
        LayerName = BandLayer8
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'BandLayer8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
end
