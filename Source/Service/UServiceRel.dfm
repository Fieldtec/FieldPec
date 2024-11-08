object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 491
  Width = 734
  object ppDBEntrdasAnimal: TppDBPipeline
    DataSource = serviceDB.dsEntradasAnimal
    UserName = 'DBEntrdasAnimal'
    Left = 288
    Top = 24
    object ppDBEntrdasAnimalppField1: TppField
      FieldAlias = 'DATA_ENTRADA'
      FieldName = 'DATA_ENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object ppDBEntrdasAnimalppField2: TppField
      FieldAlias = 'USUARIO_RESPONSAVEL'
      FieldName = 'USUARIO_RESPONSAVEL'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBEntrdasAnimalppField3: TppField
      FieldAlias = 'PASTO'
      FieldName = 'PASTO'
      FieldLength = 22
      DisplayWidth = 22
      Position = 2
    end
    object ppDBEntrdasAnimalppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTD'
      FieldName = 'QTD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBEntrdasAnimalppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_ENT'
      FieldName = 'PESO_ENT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppDBEntrdasAnimalppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_COMPRA'
      FieldName = 'VALOR_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
  end
  object ppReportEntradasAnimal: TppReport
    AutoStop = False
    DataPipeline = ppDBEntrdasAnimal
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
    Left = 296
    Top = 72
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEntrdasAnimal'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 5292
        mmLeft = 264
        mmTop = 32279
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de Entradas de Animais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 56356
        mmTop = 23019
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object ppImage2: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000005C0000
          005B0806000000FEEAE2E0000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000011
          E74944415478DAED9D09B44DD51FC77FEF793CB332F388A24C652C4545A1142A
          4334482945938A524A868C49835291CA4A9942664AA38C112A94908C791322E2
          4DF4DF9FEDEDB78EFBEE70EE74EEF55FEFBBD65BEBDC73EE3DFB9CEFDEFB37EF
          FD62FE53903C3886983CC29D451EE10E238F70879147B8C3082BE19F7FFEB91C
          3B764C68A25CB97272DD75D7057DCFF5EBD7CBAFBFFE2ACD9A35930B2FBCD049
          AE4282B0107EF0E041193F7EBC0C1A3428E75CBE7CF9E4E1871F96B7DF7E3BA8
          7B57AC5851121313E5C5175F9461C38639CF5890080BE190DABB776FB7D7D6AE
          5D2B8D1B370EF8DEF1F1F192919121CF3FFFBC8C1C39D2E3F7B66FDF2E050B16
          940B2EB8200CB4058E90139E9999295DBB769559B366E9CF032B5596235959F2
          7652A2D0D08D37DE284B972E0DF8FEC58A1593E3C78FCB80010364F8F0E1B9AE
          FFF2CB2F52BF7EFD9CCFB1B1B1B26EDD3A69D4A89143947A47C809CF52E4DE7B
          EFBD327DFA74FDF9CB5A7564677A9A0CDABB4752D53564EFF7DF7F1FF0FD8B16
          2D2AFFFEFBAF5BC2693B7FFEFCB97E53A74E1D59B66C99942E5DDA094EBD222C
          22E5B1C71E9377DF7D571FD750D33A4BB500E9E099679E913163C6047C6F6F84
          5BDB2DA7882F14132BBB33D2F5E7175E7841468C18E10CAB5E1016C27FF8E107
          69D1A2859C3C7932D7B55AB56AC9575F7D2509090901DDDB1BE14D9B3695356B
          D648C502056448E52A52AD60BCB4FC758BBED6AB572FADC86362629CE0D523C2
          6A165E72C925B263C70E7D8C024B4B3B33CAAB57AF2E8B172FD6D7FD8537C26F
          B8E106F9FAEBAF25561D772B53568A2BCB689CD21DA067CF9E9A70647A241176
          C7E7C48913DA8CAB56AD9A360BDF7BEF3D7DBE5EBD7A327BF66C4DBE3FF046F8
          8F3FFEE8D1025AB26489DC7CF3CDE17C555B70DCD3BCF3CE3BE5D34F3FD5C790
          BD61C306295EBCB8EDDF7B231C583BD5009DF1F8E38FEB59166944C4B5EFDEBD
          BB4C9E3C591F5F7DF5D55AA6172A54C8D66F7D110E060E1C98730D131453345A
          10B158CA3DF7DC2353A74ED5C7B8FC0B172ED464FA821DC2DF79E71D3DA2C19E
          3D7BA2CAF98968F0AA5BB76E3265CA147D8C7CFDF8E38F7DDACA76081F3B76AC
          F4E9D3471F6FDBB62D20E51C2E443C5AD8AE5D3B6DB180060D1AC8C68D1BCFBA
          8E22BCE28A2B723EBB239CCFA9A9A952B56A55FDD94A382EFEC5175F1CC9573C
          0B11271C74E8D041E6CD9BA78FB197274C98A08F210E62FBF6ED9B13A872251C
          5B9F9982F7BA68D122B9F2CA2BF308F785CD9B376B91F2D75F7F49F9F2E5B519
          0950A8AB57AFD6D605A15E64BD2BE149494952B97265EDD67FF4D14772DF7DF7
          3942389D4B5B3C0B838436ED3855514138B09A73E3C68DD34AAF65CB96F2EDB7
          DFCA79E79DA795EA35D75C938B704409363E7177F40181B370134EA4F2E5975F
          3EEB1CE1E79F7FFE592EBDF4D27383F0FEFDFBCBE8D1A3F5837FF2C92772D75D
          774525E1FBF6EDF368F5304B71B0CE09C2FBF5EB27AFBEFAAA76BD21FCEEBBEF
          F64AB8094641F845175DA443B653D4EFBA2A73339C568AD5E4EC51AE9CD42C58
          585E3DB04F9233B3F4E8463C9E13840F1932445E7AE9252950A080CC9D3B57DA
          B46923B72965BA4029D33265CB6AE7A85EDDBA5256BD646A4A8A8C7DEB2D79B2
          776F494B4F97CA952AE92CD3B2152BA4B9EA14EC7BEC7C90969121F16E42B681
          828EA443C1A4EA174BA3C2C5A4C3B6DFE4CFF4B4E825FCD4A953F2CA2BAFC867
          9F7D26F14A219E56A46DDAB4494E2872403535621314B1CBD7ACC9F94D83FAF5
          A5485C9CAC5CBF3EE75CB36BAF9554A534B76607C840DB5B6F954DEA3BFB0E1C
          D09FA1BA79EBD672ECC8119D294254317B028D56EEDDBB57AA54A9E2F6DA1D77
          DC213366CC883EC2274D9A243D7AF470BAD9B3F0FAEBAFE7881D7F40D8F9BBEF
          BECB759EB810914A4F9D611011C20FA8D1D7A44913F9FBEFBF75742F3D3D3DEC
          6D12AB412C593171E24479E8A1876CDF83996132593C77A952A5E4F0E1C35A69
          8F1A35CA5608216232FCE8D1A33AFF89123C7DFA74D8DB4319138FFF60FC78E9
          A714AE819DD7676074E9D2458F608032E79881C23BD099585776E018E184489F
          7DF65979FFFDF7E5C1071F74A2498F58B478B1DCD2AE9D3E468F74ECD8D1E377
          F164211B470718B203852384F3D037DD74932C5FBEDC6DBCC4696049DC72CB2D
          3A92488112DEAA2758633D0D1B36D4F1FB60E017E1543C0D1E3C586AD6ACA963
          DA76B335D8CAB72AEB815C27895ED762A083EA7A96B25C70EB83C1CE3FFE9004
          E5E6178C8FF7FA3D4C489E87FC2799273C4477A0FA009F00346FDE5CEB80FC41
          9A98B6097FEDB5D7742515293340C3F3E7CFB795B6FAE79F7FB45DBD6AD52A79
          F4D147B5F3E07A6FC8C64B0C06103752394333B36B62BC11CE08670050C3F2D3
          4F3FE5FA8E35748C82A47342910FB545F8175F7C91436C5C4C8C64597EB275EB
          562959B2A4B6ADDD0165821778FFFDF76B91F2C8238FE49432006A0509BF3255
          99B2C1E05FE5DE172D5E5C529393A5B472963CC13AE3EA2A678A67A01320142F
          96A0D4CA952BF577AF55B63ECF1D2AD822FCC9279F94B79467074655B950F6A4
          9D94C9A9C972F2B4FFE2DF95704CA93425E3B52769A9980A0499CAB129A0C409
          795363BEF922DC1B3C8DFE60E0937014DEEDB7DF9E1394D9D7A8B16C387E4C1E
          D9F587246664FADDA02BE18434219D5809A32DE81752F7431162555C7EF9E56E
          BF6387707ECB75BBE69EEDE7B333C289E211CD03D5942B7E42D9CD89D96E384A
          8769C75474170F669A62ABD261BCA8957053F48948C212B8EAAAAB827A99CD9B
          36495DF53C006F1631E68B702A067068F00B003E01490CC2C57613DB21271C58
          CB1B0CACC9025F30453A56C26BD6AA25DB7EFF5D1F9B18B82740048FEA6DC4A1
          98495480A79E7A4ADE78E30D9F84D3C96B2C319B70C32FB31037184B80D18CE6
          26C3E20E7C273EDB348320AC14AC13F29386F03F9409874D8E4205659592C35A
          39FFFCF3737294A79522C607CD523384DF22DE50DE787866E6D4A85143CFACDF
          7EFB4D5B51A6BCCE2EE198B61F7CF041CE08870E2296649BFCA997090BE10082
          8E1C3922952A55727BBD55AB56DAB1285CB8B07E78886174321388D6594738A9
          B1FDFBF787FCA500B38559E38B704FF05615100C42EE69FACAEB59096754524A
          1C0ECC56B67827A5ECDDC10EE19D3B779669D3A6495C5C5C489F2BE48433DD99
          A25691C234271CBA73E7CE5C560A4E10D7485D2122027E11D5D1B455A64C196D
          627AEB482BE115941E1A3674A8A4283B9C7BE04F14295244C7CDB176420DC782
          57949B41842BE1566C5CBB4EF62725CAE8316364B5F24AEDA061A3463241755A
          61653DD5C9B6505C4146DF74882BE151A5347950EA3DE8F140FB852989D2A410
          1F65EA8D7090A9DA2CAB46297AC20EB0E109427903EF40DC9AFA1760259CE2A1
          E953A7CA11F58CC18090C7F5D75FAF957EC084B76DDB562FD54001060A46164D
          105366BAFA227CB89ADE03070FF6AB0D728C78C39E80F99AA144DD0E65199134
          7095E1259435720A1A021C54BC2396150683AFF54B5E0927EF77203B37182AF8
          223C90150ABC288E13E69C152C0620635F589D275F8A294A76C6AE6BEF2FECCC
          36AF8463C6516059A24489801F02B9C974A3A4E177E5E478239CB845A0012C53
          93929C942CF317CCD766A151C2DD95C709C9AD951EC1B3B5125E5E29C6B14A69
          1FCB8E82060AEA62F0587D29DAA8529AC86D5F32D01D70C1B76CD9A2FFFA3FD7
          5FB6FEBE35E71A1DFEE1871FEA658C94CAA14BAC843769DAD4B6820E05C242F8
          EC99332556BD284E8F09CF0E534E04A15C5F220567E589279EF0AB3DE4265399
          753CAE204E83BB4F7CE4CD37DFD4F7B6128E878BDED0235C51819E6146335AED
          D4AB479C70EC5F1C1A4FF0453858B97CB974EED2459292937DB6671EDF9A0AB3
          82A94E2412024D3ED58E0C273345E7877AD55BC809677AE3CAA3C0B8B57960B4
          389FED100E280CA2B40DC23C01278B7648204078B24B0721D791DB6C82705CB5
          8F0E21F6628770228D9451B8F33409533073CB7A49723846388A8A1185ED0E8C
          4861DD0D32D62EE100AD8F07EA0E28BB4DEA7E654A97D665CEA4CCACC982BE7D
          FAC86B4A19A28439CFFA504A9FA953B4128E9243143120008385E5E58467D948
          C10A3A9F3A7544181D8DDD4D05594409F784D6AD5BCB975F7EE917E1AC8FF794
          E1C79E46749951D6B15327993B678E3E7EEEB9E77439313B4E98D5C7C4DE1113
          C04A388B6957D9509A904D228677B0C2BA8020A284B30673F7EEDD5AC46016B2
          2875D7AE5DB609275CCAF44FF620C7590B441581217CBE22BBBD22DDACC78408
          4402C081337525AE842754A8A03BE7A0F2443D01C78FECBDC973BAC297E31536
          C2A96CA284CD53D901B04B38262284A7A4A4B8BDCE9426F1CBF4A78072801ACD
          5B366FD61D7C8FB2C7A74E9BA6BF87538488B3AED10CC6F1393F5F9C2CAE555B
          96AAE71BBA7FAFDE218340D7B4ECF61C239C97A72A0965E70D760927E1C0FDBC
          294D62D6946B30835807843C4616CF983E5DD295D3466750EEE08A60082FAA4C
          DD1155AACA46A59726A79E190C8E138E52A454D7249AB118C80E119635357D94
          BA9198B04B38647ADB8006B01508991D1394B20B2BE158303C8FC9F8B8032205
          1D60E477B1D87C92FEDF69C9C8A6CE9FA2D090107EDB6DB7C982050BF4B15158
          5660BEA13489DAD9259CE27C8AF4BD81C27BEC6B7F6125DC9FF2358877DD21C3
          DF5AC3A008277C4B21243212F0F26675B115D64A276219A6C6C517581E4E07BA
          7A7CB44BB91D8E0C693A7F71E8D0214D3866A2B7523777C071C22C6410D13E83
          CD1F044CB80E06A9516B6C5F9678983A3C572087219C118EB8311D1429E028F1
          3C1471626B63C73B858008C77260641BFB15338C85ADAEE1512B4C9905568429
          318B1418E1C87FEC78EA2319ED4EC16FC209EE10F9637519803836F6F2056602
          E92C42BE8803EAF5C83F460A648018E1B56BD776B45D9F84A3BD29E6646519AB
          B408E86391009C0F448B5D58F7A4025817788CC8E4708398086B3619CD4F3FFD
          74D8DBF304AF841357209EE14EC611585AB16285DF0D22F75994144C863E5898
          A05724E09570EB22222B18959842F503AC7665C6A0381145D8E9C87516B012D3
          26D845F932B307571A8FB3B872602EBBEC3229A5CE19F3934224661B830265CC
          6BE09992146680102803DC0B2B8759C46C65D94BB075E86123DC6C3BDAB04851
          1954F90259A2E4DEC494241DD48730023FC1003209DF12F0C753A434AD42850A
          3A8C4A9999A9476CAB94321D5F4C7D8F681FC4E118B11A836822B634E7F0F6F0
          FA50E0286946321D89E988EE6056457AEF42AF849B52B466C54BC818E5CE4E51
          F27A5CD2011D7A8570C293A102230F6F14F79C11CA483769B9766DDAC842824F
          AA73CCCE9C66EF59941FA31AD3934E81687E43C00A820998997D54A2015E0927
          2DC536A22041C9BCBFB24B94D92C003737942F62D6DA4338AB7D91B1D6118E28
          89558ACFDBE606C6F3C431C1CE867093A98F167825FCCF3FFF74FBB0582CEDDB
          B70FE983F8227CA1223CC626E1E430211C1316B1154CD581A38403EC6D642B53
          179948713EF18350C31DE12601D1AA458B337527050BE6229CBA19B36EDEE42C
          79663C5AB3C6D2B5AE3DAA09770AEE08A7BC01027BF5EC2913B237AF71251C65
          C8222862E22424706418D978C2C6A2313B054503A29A7077B0B3AB1B40D977EA
          D449EB20143021D4071E7820D2AFF9FF4B38204A89E24717713F4AA323BDEC3C
          6A08B79A85A1221C60D3135C23BF0ABEF9E61BBD0547A410358413F7A6E4000F
          D2536904F09770802D0EE93841385AD4AB0492B80805A28270025AA6840190F6
          2239E06EED7D208403FC06E238808432A423E39D46C409D705954D9AE43A0F39
          9882AECB0403251C58F7C2C2369F33678EE3E225E2849B0221D0BB6245D99D9E
          260B0F9DA911C1E971B5F983211C58B77FA2A685E581C461B0D9A96509B7F918
          71C24DED618792A5A45FC50449CCC8924EDBCF1483BACBC6044B3860E6B04ACD
          DDBF4CA0A0C7ECDA1696F78D34E12640059A96384F929537BB33ED0C119CA790
          C78A50100E88340E1D3A541F5FA464FAA1CC4C399ABD23463842170611279C5A
          1577F94DAC0A2292A194E156980D8613F2E79779B5EAC8A49464199FFDFF2228
          1E62E547381071C201615564A7C902914D42AEBBDB5C2054849B5A9A92717132
          B5464D5974F8B0BC9378663D13E266E6CC996179D7A8201C50AE660887544F9B
          1898621C5FFF1ACC17AC8546F1D99BEE2050689714203B6484035143B85D5833
          3EC1AE85279238CBB25D130A9CAA31BCDE70E19C231C458A3D4D4A2E14B52D58
          254417893A6211B5CBDE5E2F5C38E7083FD79147B8C3C823DC61E411EE30F208
          771879843B8CFF01FF1AD7954172FD090000000049454E44AE426082}
        mmHeight = 22225
        mmLeft = 161661
        mmTop = 265
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Data Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 791
        mmTop = 32279
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'Peso M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 144991
        mmTop = 32282
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Valor Cabe'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4762
        mmLeft = 170921
        mmTop = 32282
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Qtde. Animais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 26454
        mmTop = 32282
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Pasto Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 53707
        mmTop = 32282
        mmWidth = 89426
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA'
        DataPipeline = ppDBEntrdasAnimal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'PASTO'
        DataPipeline = ppDBEntrdasAnimal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 4763
        mmLeft = 53713
        mmTop = 0
        mmWidth = 89458
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'QTD'
        DataPipeline = ppDBEntrdasAnimal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 4763
        mmLeft = 26458
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'PESO_ENT'
        DataPipeline = ppDBEntrdasAnimal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 4763
        mmLeft = 144993
        mmTop = 0
        mmWidth = 24875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'VALOR_COMPRA'
        DataPipeline = ppDBEntrdasAnimal
        DisplayFormat = '$####0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 4763
        mmLeft = 170925
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 524
        mmLeft = 793
        mmTop = 5025
        mmWidth = 196321
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Field Technology Tecnologia em Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 5292
        mmWidth = 50006
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 5556
        mmWidth = 16669
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 182563
        mmTop = 5556
        mmWidth = 14552
        BandType = 8
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 5
        mmTop = 265
        mmWidth = 197115
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'QTD'
        DataPipeline = ppDBEntrdasAnimal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 3703
        mmLeft = 26457
        mmTop = 529
        mmWidth = 25678
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Total. Cab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 8989
        mmTop = 265
        mmWidth = 16404
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Peso Entrada.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 121179
        mmTop = 265
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'PESO_ENT'
        DataPipeline = ppDBEntrdasAnimal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBEntrdasAnimal'
        mmHeight = 3703
        mmLeft = 143674
        mmTop = 265
        mmWidth = 25678
        BandType = 8
        LayerName = Foreground1
      end
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
  object ppDBSaidaAnimais: TppDBPipeline
    DataSource = serviceDB.dsGridSaida
    UserName = 'DBEntrdasAnimal1'
    Left = 480
    Top = 24
    object ppDBSaidaAnimaisppField1: TppField
      FieldAlias = 'DATA_SAIDA'
      FieldName = 'DATA_SAIDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object ppDBSaidaAnimaisppField2: TppField
      FieldAlias = 'USUARIO_RESPONSAVEL'
      FieldName = 'USUARIO_RESPONSAVEL'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBSaidaAnimaisppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_UDUARIO'
      FieldName = 'ID_UDUARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBSaidaAnimaisppField4: TppField
      FieldAlias = 'PASTO'
      FieldName = 'PASTO'
      FieldLength = 22
      DisplayWidth = 22
      Position = 3
    end
    object ppDBSaidaAnimaisppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_PASTO'
      FieldName = 'ID_PASTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBSaidaAnimaisppField6: TppField
      FieldAlias = 'NOME_DESTINO'
      FieldName = 'NOME_DESTINO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object ppDBSaidaAnimaisppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_DESTINO'
      FieldName = 'ID_DESTINO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBSaidaAnimaisppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTD'
      FieldName = 'QTD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBSaidaAnimaisppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_SAIDA'
      FieldName = 'PESO_SAIDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppDBSaidaAnimaisppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_VENDA'
      FieldName = 'VALOR_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppDBSaidaAnimaisppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'GTP'
      FieldName = 'GTP'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppDBSaidaAnimaisppField12: TppField
      FieldAlias = 'DIAS'
      FieldName = 'DIAS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 11
    end
    object ppDBSaidaAnimaisppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'GMD'
      FieldName = 'GMD'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
  end
  object ppReportSaidaAnimais: TppReport
    AutoStop = False
    DataPipeline = ppDBSaidaAnimais
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 480
    Top = 80
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBSaidaAnimais'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape4'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 5292
        mmLeft = 264
        mmTop = 29368
        mmWidth = 284428
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de Sa'#237'das de Animais'
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
        mmLeft = 120386
        mmTop = 22754
        mmWidth = 45243
        BandType = 0
        LayerName = BandLayer3
      end
      object ppImage3: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000005C0000
          005B0806000000FEEAE2E0000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000011
          E74944415478DAED9D09B44DD51FC77FEF793CB332F388A24C652C4545A1142A
          4334482945938A524A868C49835291CA4A9942664AA38C112A94908C791322E2
          4DF4DF9FEDEDB78EFBEE70EE74EEF55FEFBBD65BEBDC73EE3DFB9CEFDEFB37EF
          FD62FE53903C3886983CC29D451EE10E238F70879147B8C3082BE19F7FFEB91C
          3B764C68A25CB97272DD75D7057DCFF5EBD7CBAFBFFE2ACD9A35930B2FBCD049
          AE4282B0107EF0E041193F7EBC0C1A3428E75CBE7CF9E4E1871F96B7DF7E3BA8
          7B57AC5851121313E5C5175F9461C38639CF5890080BE190DABB776FB7D7D6AE
          5D2B8D1B370EF8DEF1F1F192919121CF3FFFBC8C1C39D2E3F7B66FDF2E050B16
          940B2EB8200CB4058E90139E9999295DBB769559B366E9CF032B5596235959F2
          7652A2D0D08D37DE284B972E0DF8FEC58A1593E3C78FCB80010364F8F0E1B9AE
          FFF2CB2F52BF7EFD9CCFB1B1B1B26EDD3A69D4A89143947A47C809CF52E4DE7B
          EFBD327DFA74FDF9CB5A7564677A9A0CDABB4752D53564EFF7DF7F1FF0FD8B16
          2D2AFFFEFBAF5BC2693B7FFEFCB97E53A74E1D59B66C99942E5DDA094EBD222C
          22E5B1C71E9377DF7D571FD750D33A4BB500E9E099679E913163C6047C6F6F84
          5BDB2DA7882F14132BBB33D2F5E7175E7841468C18E10CAB5E1016C27FF8E107
          69D1A2859C3C7932D7B55AB56AC9575F7D2509090901DDDB1BE14D9B3695356B
          D648C502056448E52A52AD60BCB4FC758BBED6AB572FADC86362629CE0D523C2
          6A165E72C925B263C70E7D8C024B4B3B33CAAB57AF2E8B172FD6D7FD8537C26F
          B8E106F9FAEBAF25561D772B53568A2BCB689CD21DA067CF9E9A70647A241176
          C7E7C48913DA8CAB56AD9A360BDF7BEF3D7DBE5EBD7A327BF66C4DBE3FF046F8
          8F3FFEE8D1025AB26489DC7CF3CDE17C555B70DCD3BCF3CE3BE5D34F3FD5C790
          BD61C306295EBCB8EDDF7B231C583BD5009DF1F8E38FEB59166944C4B5EFDEBD
          BB4C9E3C591F5F7DF5D55AA6172A54C8D66F7D110E060E1C98730D131453345A
          10B158CA3DF7DC2353A74ED5C7B8FC0B172ED464FA821DC2DF79E71D3DA2C19E
          3D7BA2CAF98968F0AA5BB76E3265CA147D8C7CFDF8E38F7DDACA76081F3B76AC
          F4E9D3471F6FDBB62D20E51C2E443C5AD8AE5D3B6DB180060D1AC8C68D1BCFBA
          8E22BCE28A2B723EBB239CCFA9A9A952B56A55FDD94A382EFEC5175F1CC9573C
          0B11271C74E8D041E6CD9BA78FB197274C98A08F210E62FBF6ED9B13A872251C
          5B9F9982F7BA68D122B9F2CA2BF308F785CD9B376B91F2D75F7F49F9F2E5B519
          0950A8AB57AFD6D605A15E64BD2BE149494952B97265EDD67FF4D14772DF7DF7
          3942389D4B5B3C0B838436ED3855514138B09A73E3C68DD34AAF65CB96F2EDB7
          DFCA79E79DA795EA35D75C938B704409363E7177F40181B370134EA4F2E5975F
          3EEB1CE1E79F7FFE592EBDF4D27383F0FEFDFBCBE8D1A3F5837FF2C92772D75D
          774525E1FBF6EDF368F5304B71B0CE09C2FBF5EB27AFBEFAAA76BD21FCEEBBEF
          F64AB8094641F845175DA443B653D4EFBA2A73339C568AD5E4EC51AE9CD42C58
          585E3DB04F9233B3F4E8463C9E13840F1932445E7AE9252950A080CC9D3B57DA
          B46923B72965BA4029D33265CB6AE7A85EDDBA5256BD646A4A8A8C7DEB2D79B2
          776F494B4F97CA952AE92CD3B2152BA4B9EA14EC7BEC7C90969121F16E42B681
          828EA443C1A4EA174BA3C2C5A4C3B6DFE4CFF4B4E825FCD4A953F2CA2BAFC867
          9F7D26F14A219E56A46DDAB4494E2872403535621314B1CBD7ACC9F94D83FAF5
          A5485C9CAC5CBF3EE75CB36BAF9554A534B76607C840DB5B6F954DEA3BFB0E1C
          D09FA1BA79EBD672ECC8119D294254317B028D56EEDDBB57AA54A9E2F6DA1D77
          DC213366CC883EC2274D9A243D7AF470BAD9B3F0FAEBAFE7881D7F40D8F9BBEF
          BECB759EB810914A4F9D611011C20FA8D1D7A44913F9FBEFBF75742F3D3D3DEC
          6D12AB412C593171E24479E8A1876CDF83996132593C77A952A5E4F0E1C35A69
          8F1A35CA5608216232FCE8D1A33AFF89123C7DFA74D8DB4319138FFF60FC78E9
          A714AE819DD7676074E9D2458F608032E79881C23BD099585776E018E184489F
          7DF65979FFFDF7E5C1071F74A2498F58B478B1DCD2AE9D3E468F74ECD8D1E377
          F164211B470718B203852384F3D037DD74932C5FBEDC6DBCC4696049DC72CB2D
          3A92488112DEAA2758633D0D1B36D4F1FB60E017E1543C0D1E3C586AD6ACA963
          DA76B335D8CAB72AEB815C27895ED762A083EA7A96B25C70EB83C1CE3FFE9004
          E5E6178C8FF7FA3D4C489E87FC2799273C4477A0FA009F00346FDE5CEB80FC41
          9A98B6097FEDB5D7742515293340C3F3E7CFB795B6FAE79F7FB45DBD6AD52A79
          F4D147B5F3E07A6FC8C64B0C06103752394333B36B62BC11CE08670050C3F2D3
          4F3FE5FA8E35748C82A47342910FB545F8175F7C91436C5C4C8C64597EB275EB
          562959B2A4B6ADDD0165821778FFFDF76B91F2C8238FE49432006A0509BF3255
          99B2C1E05FE5DE172D5E5C529393A5B472963CC13AE3EA2A678A67A01320142F
          96A0D4CA952BF577AF55B63ECF1D2AD822FCC9279F94B79467074655B950F6A4
          9D94C9A9C972F2B4FFE2DF95704CA93425E3B52769A9980A0499CAB129A0C409
          795363BEF922DC1B3C8DFE60E0937014DEEDB7DF9E1394D9D7A8B16C387E4C1E
          D9F587246664FADDA02BE18434219D5809A32DE81752F7431162555C7EF9E56E
          BF6387707ECB75BBE69EEDE7B333C289E211CD03D5942B7E42D9CD89D96E384A
          8769C75474170F669A62ABD261BCA8957053F48948C212B8EAAAAB827A99CD9B
          36495DF53C006F1631E68B702A067068F00B003E01490CC2C57613DB21271C58
          CB1B0CACC9025F30453A56C26BD6AA25DB7EFF5D1F9B18B82740048FEA6DC4A1
          98495480A79E7A4ADE78E30D9F84D3C96B2C319B70C32FB31037184B80D18CE6
          26C3E20E7C273EDB348320AC14AC13F29386F03F9409874D8E4205659592C35A
          39FFFCF3737294A79522C607CD523384DF22DE50DE787866E6D4A85143CFACDF
          7EFB4D5B51A6BCCE2EE198B61F7CF041CE08870E2296649BFCA997090BE10082
          8E1C3922952A55727BBD55AB56DAB1285CB8B07E78886174321388D6594738A9
          B1FDFBF787FCA500B38559E38B704FF05615100C42EE69FACAEB59096754524A
          1C0ECC56B67827A5ECDDC10EE19D3B779669D3A6495C5C5C489F2BE48433DD99
          A25691C234271CBA73E7CE5C560A4E10D7485D2122027E11D5D1B455A64C196D
          627AEB482BE115941E1A3674A8A4283B9C7BE04F14295244C7CDB176420DC782
          57949B41842BE1566C5CBB4EF62725CAE8316364B5F24AEDA061A3463241755A
          61653DD5C9B6505C4146DF74882BE151A5347950EA3DE8F140FB852989D2A410
          1F65EA8D7090A9DA2CAB46297AC20EB0E109427903EF40DC9AFA1760259CE2A1
          E953A7CA11F58CC18090C7F5D75FAF957EC084B76DDB562FD54001060A46164D
          105366BAFA227CB89ADE03070FF6AB0D728C78C39E80F99AA144DD0E65199134
          7095E1259435720A1A021C54BC2396150683AFF54B5E0927EF77203B37182AF8
          223C90150ABC288E13E69C152C0620635F589D275F8A294A76C6AE6BEF2FECCC
          36AF8463C6516059A24489801F02B9C974A3A4E177E5E478239CB845A0012C53
          93929C942CF317CCD766A151C2DD95C709C9AD951EC1B3B5125E5E29C6B14A69
          1FCB8E82060AEA62F0587D29DAA8529AC86D5F32D01D70C1B76CD9A2FFFA3FD7
          5FB6FEBE35E71A1DFEE1871FEA658C94CAA14BAC843769DAD4B6820E05C242F8
          EC99332556BD284E8F09CF0E534E04A15C5F220567E589279EF0AB3DE4265399
          753CAE204E83BB4F7CE4CD37DFD4F7B6128E878BDED0235C51819E6146335AED
          D4AB479C70EC5F1C1A4FF0453858B97CB974EED2459292937DB6671EDF9A0AB3
          82A94E2412024D3ED58E0C273345E7877AD55BC809677AE3CAA3C0B8B57960B4
          389FED100E280CA2B40DC23C01278B7648204078B24B0721D791DB6C82705CB5
          8F0E21F6628770228D9451B8F33409533073CB7A49723846388A8A1185ED0E8C
          4861DD0D32D62EE100AD8F07EA0E28BB4DEA7E654A97D665CEA4CCACC982BE7D
          FAC86B4A19A28439CFFA504A9FA953B4128E9243143120008385E5E58467D948
          C10A3A9F3A7544181D8DDD4D05594409F784D6AD5BCB975F7EE917E1AC8FF794
          E1C79E46749951D6B15327993B678E3E7EEEB9E77439313B4E98D5C7C4DE1113
          C04A388B6957D9509A904D228677B0C2BA8020A284B30673F7EEDD5AC46016B2
          2875D7AE5DB609275CCAF44FF620C7590B441581217CBE22BBBD22DDACC78408
          4402C081337525AE842754A8A03BE7A0F2443D01C78FECBDC973BAC297E31536
          C2A96CA284CD53D901B04B38262284A7A4A4B8BDCE9426F1CBF4A78072801ACD
          5B366FD61D7C8FB2C7A74E9BA6BF87538488B3AED10CC6F1393F5F9C2CAE555B
          96AAE71BBA7FAFDE218340D7B4ECF61C239C97A72A0965E70D760927E1C0FDBC
          294D62D6946B30835807843C4616CF983E5DD295D3466750EEE08A60082FAA4C
          DD1155AACA46A59726A79E190C8E138E52A454D7249AB118C80E119635357D94
          BA9198B04B38647ADB8006B01508991D1394B20B2BE158303C8FC9F8B8032205
          1D60E477B1D87C92FEDF69C9C8A6CE9FA2D090107EDB6DB7C982050BF4B15158
          5660BEA13489DAD9259CE27C8AF4BD81C27BEC6B7F6125DC9FF2358877DD21C3
          DF5AC3A008277C4B21243212F0F26675B115D64A276219A6C6C517581E4E07BA
          7A7CB44BB91D8E0C693A7F71E8D0214D3866A2B7523777C071C22C6410D13E83
          CD1F044CB80E06A9516B6C5F9678983A3C572087219C118EB8311D1429E028F1
          3C1471626B63C73B858008C77260641BFB15338C85ADAEE1512B4C9905568429
          318B1418E1C87FEC78EA2319ED4EC16FC209EE10F9637519803836F6F2056602
          E92C42BE8803EAF5C83F460A648018E1B56BD776B45D9F84A3BD29E6646519AB
          B408E86391009C0F448B5D58F7A4025817788CC8E4708398086B3619CD4F3FFD
          74D8DBF304AF841357209EE14EC611585AB16285DF0D22F75994144C863E5898
          A05724E09570EB22222B18959842F503AC7665C6A0381145D8E9C87516B012D3
          26D845F932B307571A8FB3B872602EBBEC3229A5CE19F3934224661B830265CC
          6BE09992146680102803DC0B2B8759C46C65D94BB075E86123DC6C3BDAB04851
          1954F90259A2E4DEC494241DD48730023FC1003209DF12F0C753A434AD42850A
          3A8C4A9999A9476CAB94321D5F4C7D8F681FC4E118B11A836822B634E7F0F6F0
          FA50E0286946321D89E988EE6056457AEF42AF849B52B466C54BC818E5CE4E51
          F27A5CD2011D7A8570C293A102230F6F14F79C11CA483769B9766DDAC842824F
          AA73CCCE9C66EF59941FA31AD3934E81687E43C00A820998997D54A2015E0927
          2DC536A22041C9BCBFB24B94D92C003737942F62D6DA4338AB7D91B1D6118E28
          89558ACFDBE606C6F3C431C1CE867093A98F167825FCCF3FFF74FBB0582CEDDB
          B70FE983F8227CA1223CC626E1E430211C1316B1154CD581A38403EC6D642B53
          179948713EF18350C31DE12601D1AA458B337527050BE6229CBA19B36EDEE42C
          79663C5AB3C6D2B5AE3DAA09770AEE08A7BC01027BF5EC2913B237AF71251C65
          C8222862E22424706418D978C2C6A2313B054503A29A7077B0B3AB1B40D977EA
          D449EB20143021D4071E7820D2AFF9FF4B38204A89E24717713F4AA323BDEC3C
          6A08B79A85A1221C60D3135C23BF0ABEF9E61BBD0547A410358413F7A6E4000F
          D2536904F09770802D0EE93841385AD4AB0492B80805A28270025AA6840190F6
          2239E06EED7D208403FC06E238808432A423E39D46C409D705954D9AE43A0F39
          9882AECB0403251C58F7C2C2369F33678EE3E225E2849B0221D0BB6245D99D9E
          260B0F9DA911C1E971B5F983211C58B77FA2A685E581C461B0D9A96509B7F918
          71C24DED618792A5A45FC50449CCC8924EDBCF1483BACBC6044B3860E6B04ACD
          DDBF4CA0A0C7ECDA1696F78D34E12640059A96384F929537BB33ED0C119CA790
          C78A50100E88340E1D3A541F5FA464FAA1CC4C399ABD23463842170611279C5A
          1577F94DAC0A2292A194E156980D8613F2E79779B5EAC8A49464199FFDFF2228
          1E62E547381071C201615564A7C902914D42AEBBDB5C2054849B5A9A92717132
          B5464D5974F8B0BC9378663D13E266E6CC996179D7A8201C50AE660887544F9B
          1898621C5FFF1ACC17AC8546F1D99BEE2050689714203B6484035143B85D5833
          3EC1AE85279238CBB25D130A9CAA31BCDE70E19C231C458A3D4D4A2E14B52D58
          254417893A6211B5CBDE5E2F5C38E7083FD79147B8C3C823DC61E411EE30F208
          771879843B8CFF01FF1AD7954172FD090000000049454E44AE426082}
        mmHeight = 22225
        mmLeft = 249238
        mmTop = 529
        mmWidth = 35454
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Data Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 29634
        mmWidth = 24606
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'Peso(M) Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 173302
        mmTop = 29633
        mmWidth = 21696
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Valor Cabe'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 254794
        mmTop = 29369
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Qtde. Animais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 26455
        mmTop = 29634
        mmWidth = 24342
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Pasto Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 53711
        mmTop = 29634
        mmWidth = 53975
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = 'Destino dos Animais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 108480
        mmTop = 29634
        mmWidth = 61913
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'Dias (M)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 195791
        mmTop = 29633
        mmWidth = 12171
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'GTP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 210079
        mmTop = 29633
        mmWidth = 19315
        BandType = 0
        LayerName = BandLayer3
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'GMD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 230187
        mmTop = 29633
        mmWidth = 23548
        BandType = 0
        LayerName = BandLayer3
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DATA_SAIDA'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'PASTO'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 52388
        mmTop = 0
        mmWidth = 55298
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'QTD'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 26453
        mmTop = 0
        mmWidth = 24342
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'PESO_SAIDA'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 173302
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'VALOR_VENDA'
        DataPipeline = ppDBSaidaAnimais
        DisplayFormat = '$####0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 254794
        mmTop = 0
        mmWidth = 27252
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 793
        mmTop = 5025
        mmWidth = 283898
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'NOME_DESTINO'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 108479
        mmTop = 0
        mmWidth = 61913
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'GMD'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 230188
        mmTop = 0
        mmWidth = 23548
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'DIAS'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 195792
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'GTP'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 4763
        mmLeft = 210080
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = BandLayer3
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Field Technology Tecnologia em Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 5292
        mmWidth = 57679
        BandType = 8
        LayerName = BandLayer3
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 248979
        mmTop = 5556
        mmWidth = 16669
        BandType = 8
        LayerName = BandLayer3
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 269881
        mmTop = 5556
        mmWidth = 14552
        BandType = 8
        LayerName = BandLayer3
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape3'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 5
        mmTop = 265
        mmWidth = 284692
        BandType = 8
        LayerName = BandLayer3
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'QTD'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 3703
        mmLeft = 26457
        mmTop = 529
        mmWidth = 25678
        BandType = 8
        LayerName = BandLayer3
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Total. Cab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 8989
        mmTop = 265
        mmWidth = 16404
        BandType = 8
        LayerName = BandLayer3
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Peso Entrada.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 55029
        mmTop = 265
        mmWidth = 21696
        BandType = 8
        LayerName = BandLayer3
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'PESO_SAIDA'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 3703
        mmLeft = 77524
        mmTop = 265
        mmWidth = 25678
        BandType = 8
        LayerName = BandLayer3
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = 'GTP M'#233'dio.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 110067
        mmTop = 265
        mmWidth = 17462
        BandType = 8
        LayerName = BandLayer3
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'GTP'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 3704
        mmLeft = 128588
        mmTop = 529
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer3
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label202'
        Border.mmPadding = 0
        Caption = 'Dias (M).:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 156898
        mmTop = 265
        mmWidth = 13759
        BandType = 8
        LayerName = BandLayer3
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'DIAS'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 265
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer3
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label203'
        Border.mmPadding = 0
        Caption = 'GMD.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 203200
        mmTop = 265
        mmWidth = 8467
        BandType = 8
        LayerName = BandLayer3
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'PESO_SAIDA'
        DataPipeline = ppDBSaidaAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBSaidaAnimais'
        mmHeight = 3704
        mmLeft = 214048
        mmTop = 529
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer3
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'BandLayer3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBMovAnimais: TppDBPipeline
    DataSource = serviceDB.dsMovAnimais
    UserName = 'DBMovAnimais'
    Left = 656
    Top = 32
    object ppDBMovAnimaisppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object ppDBMovAnimaisppField2: TppField
      FieldAlias = 'MOTIVO'
      FieldName = 'MOTIVO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBMovAnimaisppField3: TppField
      FieldAlias = 'PASTO_ORIGEM'
      FieldName = 'PASTO_ORIGEM'
      FieldLength = 22
      DisplayWidth = 22
      Position = 2
    end
    object ppDBMovAnimaisppField4: TppField
      FieldAlias = 'PASTO_DESTINO'
      FieldName = 'PASTO_DESTINO'
      FieldLength = 22
      DisplayWidth = 22
      Position = 3
    end
    object ppDBMovAnimaisppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COUNT'
      FieldName = 'COUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
  end
  object ReportMovAnimais: TppReport
    AutoStop = False
    DataPipeline = ppDBMovAnimais
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
    Left = 656
    Top = 88
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBMovAnimais'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape4'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 5292
        mmLeft = 264
        mmTop = 29368
        mmWidth = 197380
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de Movimenta'#231#227'o de Animais'
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
        mmLeft = 69321
        mmTop = 21431
        mmWidth = 56886
        BandType = 0
        LayerName = BandLayer4
      end
      object ppImage4: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000005C0000
          005B0806000000FEEAE2E0000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000011
          E74944415478DAED9D09B44DD51FC77FEF793CB332F388A24C652C4545A1142A
          4334482945938A524A868C49835291CA4A9942664AA38C112A94908C791322E2
          4DF4DF9FEDEDB78EFBEE70EE74EEF55FEFBBD65BEBDC73EE3DFB9CEFDEFB37EF
          FD62FE53903C3886983CC29D451EE10E238F70879147B8C3082BE19F7FFEB91C
          3B764C68A25CB97272DD75D7057DCFF5EBD7CBAFBFFE2ACD9A35930B2FBCD049
          AE4282B0107EF0E041193F7EBC0C1A3428E75CBE7CF9E4E1871F96B7DF7E3BA8
          7B57AC5851121313E5C5175F9461C38639CF5890080BE190DABB776FB7D7D6AE
          5D2B8D1B370EF8DEF1F1F192919121CF3FFFBC8C1C39D2E3F7B66FDF2E050B16
          940B2EB8200CB4058E90139E9999295DBB769559B366E9CF032B5596235959F2
          7652A2D0D08D37DE284B972E0DF8FEC58A1593E3C78FCB80010364F8F0E1B9AE
          FFF2CB2F52BF7EFD9CCFB1B1B1B26EDD3A69D4A89143947A47C809CF52E4DE7B
          EFBD327DFA74FDF9CB5A7564677A9A0CDABB4752D53564EFF7DF7F1FF0FD8B16
          2D2AFFFEFBAF5BC2693B7FFEFCB97E53A74E1D59B66C99942E5DDA094EBD222C
          22E5B1C71E9377DF7D571FD750D33A4BB500E9E099679E913163C6047C6F6F84
          5BDB2DA7882F14132BBB33D2F5E7175E7841468C18E10CAB5E1016C27FF8E107
          69D1A2859C3C7932D7B55AB56AC9575F7D2509090901DDDB1BE14D9B3695356B
          D648C502056448E52A52AD60BCB4FC758BBED6AB572FADC86362629CE0D523C2
          6A165E72C925B263C70E7D8C024B4B3B33CAAB57AF2E8B172FD6D7FD8537C26F
          B8E106F9FAEBAF25561D772B53568A2BCB689CD21DA067CF9E9A70647A241176
          C7E7C48913DA8CAB56AD9A360BDF7BEF3D7DBE5EBD7A327BF66C4DBE3FF046F8
          8F3FFEE8D1025AB26489DC7CF3CDE17C555B70DCD3BCF3CE3BE5D34F3FD5C790
          BD61C306295EBCB8EDDF7B231C583BD5009DF1F8E38FEB59166944C4B5EFDEBD
          BB4C9E3C591F5F7DF5D55AA6172A54C8D66F7D110E060E1C98730D131453345A
          10B158CA3DF7DC2353A74ED5C7B8FC0B172ED464FA821DC2DF79E71D3DA2C19E
          3D7BA2CAF98968F0AA5BB76E3265CA147D8C7CFDF8E38F7DDACA76081F3B76AC
          F4E9D3471F6FDBB62D20E51C2E443C5AD8AE5D3B6DB180060D1AC8C68D1BCFBA
          8E22BCE28A2B723EBB239CCFA9A9A952B56A55FDD94A382EFEC5175F1CC9573C
          0B11271C74E8D041E6CD9BA78FB197274C98A08F210E62FBF6ED9B13A872251C
          5B9F9982F7BA68D122B9F2CA2BF308F785CD9B376B91F2D75F7F49F9F2E5B519
          0950A8AB57AFD6D605A15E64BD2BE149494952B97265EDD67FF4D14772DF7DF7
          3942389D4B5B3C0B838436ED3855514138B09A73E3C68DD34AAF65CB96F2EDB7
          DFCA79E79DA795EA35D75C938B704409363E7177F40181B370134EA4F2E5975F
          3EEB1CE1E79F7FFE592EBDF4D27383F0FEFDFBCBE8D1A3F5837FF2C92772D75D
          774525E1FBF6EDF368F5304B71B0CE09C2FBF5EB27AFBEFAAA76BD21FCEEBBEF
          F64AB8094641F845175DA443B653D4EFBA2A73339C568AD5E4EC51AE9CD42C58
          585E3DB04F9233B3F4E8463C9E13840F1932445E7AE9252950A080CC9D3B57DA
          B46923B72965BA4029D33265CB6AE7A85EDDBA5256BD646A4A8A8C7DEB2D79B2
          776F494B4F97CA952AE92CD3B2152BA4B9EA14EC7BEC7C90969121F16E42B681
          828EA443C1A4EA174BA3C2C5A4C3B6DFE4CFF4B4E825FCD4A953F2CA2BAFC867
          9F7D26F14A219E56A46DDAB4494E2872403535621314B1CBD7ACC9F94D83FAF5
          A5485C9CAC5CBF3EE75CB36BAF9554A534B76607C840DB5B6F954DEA3BFB0E1C
          D09FA1BA79EBD672ECC8119D294254317B028D56EEDDBB57AA54A9E2F6DA1D77
          DC213366CC883EC2274D9A243D7AF470BAD9B3F0FAEBAFE7881D7F40D8F9BBEF
          BECB759EB810914A4F9D611011C20FA8D1D7A44913F9FBEFBF75742F3D3D3DEC
          6D12AB412C593171E24479E8A1876CDF83996132593C77A952A5E4F0E1C35A69
          8F1A35CA5608216232FCE8D1A33AFF89123C7DFA74D8DB4319138FFF60FC78E9
          A714AE819DD7676074E9D2458F608032E79881C23BD099585776E018E184489F
          7DF65979FFFDF7E5C1071F74A2498F58B478B1DCD2AE9D3E468F74ECD8D1E377
          F164211B470718B203852384F3D037DD74932C5FBEDC6DBCC4696049DC72CB2D
          3A92488112DEAA2758633D0D1B36D4F1FB60E017E1543C0D1E3C586AD6ACA963
          DA76B335D8CAB72AEB815C27895ED762A083EA7A96B25C70EB83C1CE3FFE9004
          E5E6178C8FF7FA3D4C489E87FC2799273C4477A0FA009F00346FDE5CEB80FC41
          9A98B6097FEDB5D7742515293340C3F3E7CFB795B6FAE79F7FB45DBD6AD52A79
          F4D147B5F3E07A6FC8C64B0C06103752394333B36B62BC11CE08670050C3F2D3
          4F3FE5FA8E35748C82A47342910FB545F8175F7C91436C5C4C8C64597EB275EB
          562959B2A4B6ADDD0165821778FFFDF76B91F2C8238FE49432006A0509BF3255
          99B2C1E05FE5DE172D5E5C529393A5B472963CC13AE3EA2A678A67A01320142F
          96A0D4CA952BF577AF55B63ECF1D2AD822FCC9279F94B79467074655B950F6A4
          9D94C9A9C972F2B4FFE2DF95704CA93425E3B52769A9980A0499CAB129A0C409
          795363BEF922DC1B3C8DFE60E0937014DEEDB7DF9E1394D9D7A8B16C387E4C1E
          D9F587246664FADDA02BE18434219D5809A32DE81752F7431162555C7EF9E56E
          BF6387707ECB75BBE69EEDE7B333C289E211CD03D5942B7E42D9CD89D96E384A
          8769C75474170F669A62ABD261BCA8957053F48948C212B8EAAAAB827A99CD9B
          36495DF53C006F1631E68B702A067068F00B003E01490CC2C57613DB21271C58
          CB1B0CACC9025F30453A56C26BD6AA25DB7EFF5D1F9B18B82740048FEA6DC4A1
          98495480A79E7A4ADE78E30D9F84D3C96B2C319B70C32FB31037184B80D18CE6
          26C3E20E7C273EDB348320AC14AC13F29386F03F9409874D8E4205659592C35A
          39FFFCF3737294A79522C607CD523384DF22DE50DE787866E6D4A85143CFACDF
          7EFB4D5B51A6BCCE2EE198B61F7CF041CE08870E2296649BFCA997090BE10082
          8E1C3922952A55727BBD55AB56DAB1285CB8B07E78886174321388D6594738A9
          B1FDFBF787FCA500B38559E38B704FF05615100C42EE69FACAEB59096754524A
          1C0ECC56B67827A5ECDDC10EE19D3B779669D3A6495C5C5C489F2BE48433DD99
          A25691C234271CBA73E7CE5C560A4E10D7485D2122027E11D5D1B455A64C196D
          627AEB482BE115941E1A3674A8A4283B9C7BE04F14295244C7CDB176420DC782
          57949B41842BE1566C5CBB4EF62725CAE8316364B5F24AEDA061A3463241755A
          61653DD5C9B6505C4146DF74882BE151A5347950EA3DE8F140FB852989D2A410
          1F65EA8D7090A9DA2CAB46297AC20EB0E109427903EF40DC9AFA1760259CE2A1
          E953A7CA11F58CC18090C7F5D75FAF957EC084B76DDB562FD54001060A46164D
          105366BAFA227CB89ADE03070FF6AB0D728C78C39E80F99AA144DD0E65199134
          7095E1259435720A1A021C54BC2396150683AFF54B5E0927EF77203B37182AF8
          223C90150ABC288E13E69C152C0620635F589D275F8A294A76C6AE6BEF2FECCC
          36AF8463C6516059A24489801F02B9C974A3A4E177E5E478239CB845A0012C53
          93929C942CF317CCD766A151C2DD95C709C9AD951EC1B3B5125E5E29C6B14A69
          1FCB8E82060AEA62F0587D29DAA8529AC86D5F32D01D70C1B76CD9A2FFFA3FD7
          5FB6FEBE35E71A1DFEE1871FEA658C94CAA14BAC843769DAD4B6820E05C242F8
          EC99332556BD284E8F09CF0E534E04A15C5F220567E589279EF0AB3DE4265399
          753CAE204E83BB4F7CE4CD37DFD4F7B6128E878BDED0235C51819E6146335AED
          D4AB479C70EC5F1C1A4FF0453858B97CB974EED2459292937DB6671EDF9A0AB3
          82A94E2412024D3ED58E0C273345E7877AD55BC809677AE3CAA3C0B8B57960B4
          389FED100E280CA2B40DC23C01278B7648204078B24B0721D791DB6C82705CB5
          8F0E21F6628770228D9451B8F33409533073CB7A49723846388A8A1185ED0E8C
          4861DD0D32D62EE100AD8F07EA0E28BB4DEA7E654A97D665CEA4CCACC982BE7D
          FAC86B4A19A28439CFFA504A9FA953B4128E9243143120008385E5E58467D948
          C10A3A9F3A7544181D8DDD4D05594409F784D6AD5BCB975F7EE917E1AC8FF794
          E1C79E46749951D6B15327993B678E3E7EEEB9E77439313B4E98D5C7C4DE1113
          C04A388B6957D9509A904D228677B0C2BA8020A284B30673F7EEDD5AC46016B2
          2875D7AE5DB609275CCAF44FF620C7590B441581217CBE22BBBD22DDACC78408
          4402C081337525AE842754A8A03BE7A0F2443D01C78FECBDC973BAC297E31536
          C2A96CA284CD53D901B04B38262284A7A4A4B8BDCE9426F1CBF4A78072801ACD
          5B366FD61D7C8FB2C7A74E9BA6BF87538488B3AED10CC6F1393F5F9C2CAE555B
          96AAE71BBA7FAFDE218340D7B4ECF61C239C97A72A0965E70D760927E1C0FDBC
          294D62D6946B30835807843C4616CF983E5DD295D3466750EEE08A60082FAA4C
          DD1155AACA46A59726A79E190C8E138E52A454D7249AB118C80E119635357D94
          BA9198B04B38647ADB8006B01508991D1394B20B2BE158303C8FC9F8B8032205
          1D60E477B1D87C92FEDF69C9C8A6CE9FA2D090107EDB6DB7C982050BF4B15158
          5660BEA13489DAD9259CE27C8AF4BD81C27BEC6B7F6125DC9FF2358877DD21C3
          DF5AC3A008277C4B21243212F0F26675B115D64A276219A6C6C517581E4E07BA
          7A7CB44BB91D8E0C693A7F71E8D0214D3866A2B7523777C071C22C6410D13E83
          CD1F044CB80E06A9516B6C5F9678983A3C572087219C118EB8311D1429E028F1
          3C1471626B63C73B858008C77260641BFB15338C85ADAEE1512B4C9905568429
          318B1418E1C87FEC78EA2319ED4EC16FC209EE10F9637519803836F6F2056602
          E92C42BE8803EAF5C83F460A648018E1B56BD776B45D9F84A3BD29E6646519AB
          B408E86391009C0F448B5D58F7A4025817788CC8E4708398086B3619CD4F3FFD
          74D8DBF304AF841357209EE14EC611585AB16285DF0D22F75994144C863E5898
          A05724E09570EB22222B18959842F503AC7665C6A0381145D8E9C87516B012D3
          26D845F932B307571A8FB3B872602EBBEC3229A5CE19F3934224661B830265CC
          6BE09992146680102803DC0B2B8759C46C65D94BB075E86123DC6C3BDAB04851
          1954F90259A2E4DEC494241DD48730023FC1003209DF12F0C753A434AD42850A
          3A8C4A9999A9476CAB94321D5F4C7D8F681FC4E118B11A836822B634E7F0F6F0
          FA50E0286946321D89E988EE6056457AEF42AF849B52B466C54BC818E5CE4E51
          F27A5CD2011D7A8570C293A102230F6F14F79C11CA483769B9766DDAC842824F
          AA73CCCE9C66EF59941FA31AD3934E81687E43C00A820998997D54A2015E0927
          2DC536A22041C9BCBFB24B94D92C003737942F62D6DA4338AB7D91B1D6118E28
          89558ACFDBE606C6F3C431C1CE867093A98F167825FCCF3FFF74FBB0582CEDDB
          B70FE983F8227CA1223CC626E1E430211C1316B1154CD581A38403EC6D642B53
          179948713EF18350C31DE12601D1AA458B337527050BE6229CBA19B36EDEE42C
          79663C5AB3C6D2B5AE3DAA09770AEE08A7BC01027BF5EC2913B237AF71251C65
          C8222862E22424706418D978C2C6A2313B054503A29A7077B0B3AB1B40D977EA
          D449EB20143021D4071E7820D2AFF9FF4B38204A89E24717713F4AA323BDEC3C
          6A08B79A85A1221C60D3135C23BF0ABEF9E61BBD0547A410358413F7A6E4000F
          D2536904F09770802D0EE93841385AD4AB0492B80805A28270025AA6840190F6
          2239E06EED7D208403FC06E238808432A423E39D46C409D705954D9AE43A0F39
          9882AECB0403251C58F7C2C2369F33678EE3E225E2849B0221D0BB6245D99D9E
          260B0F9DA911C1E971B5F983211C58B77FA2A685E581C461B0D9A96509B7F918
          71C24DED618792A5A45FC50449CCC8924EDBCF1483BACBC6044B3860E6B04ACD
          DDBF4CA0A0C7ECDA1696F78D34E12640059A96384F929537BB33ED0C119CA790
          C78A50100E88340E1D3A541F5FA464FAA1CC4C399ABD23463842170611279C5A
          1577F94DAC0A2292A194E156980D8613F2E79779B5EAC8A49464199FFDFF2228
          1E62E547381071C201615564A7C902914D42AEBBDB5C2054849B5A9A92717132
          B5464D5974F8B0BC9378663D13E266E6CC996179D7A8201C50AE660887544F9B
          1898621C5FFF1ACC17AC8546F1D99BEE2050689714203B6484035143B85D5833
          3EC1AE85279238CBB25D130A9CAA31BCDE70E19C231C458A3D4D4A2E14B52D58
          254417893A6211B5CBDE5E2F5C38E7083FD79147B8C3C823DC61E411EE30F208
          771879843B8CFF01FF1AD7954172FD090000000049454E44AE426082}
        mmHeight = 22225
        mmLeft = 162190
        mmTop = 794
        mmWidth = 35454
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Data '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 29633
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Qtde. Cab.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 62446
        mmTop = 29633
        mmWidth = 15346
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Pasto Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 96044
        mmTop = 29633
        mmWidth = 20637
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = 'Destino dos Animais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 150548
        mmTop = 29633
        mmWidth = 30692
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = 'Motivo Movimenta'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 29633
        mmWidth = 32544
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppDBMovAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMovAnimais'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 0
        mmWidth = 16933
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'PASTO_ORIGEM'
        DataPipeline = ppDBMovAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMovAnimais'
        mmHeight = 4763
        mmLeft = 79109
        mmTop = 0
        mmWidth = 54770
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'COUNT'
        DataPipeline = ppDBMovAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMovAnimais'
        mmHeight = 4763
        mmLeft = 62441
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 793
        mmTop = 5025
        mmWidth = 196850
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'PASTO_DESTINO'
        DataPipeline = ppDBMovAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMovAnimais'
        mmHeight = 4763
        mmLeft = 134943
        mmTop = 0
        mmWidth = 61913
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'MOTIVO'
        DataPipeline = ppDBMovAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMovAnimais'
        mmHeight = 4763
        mmLeft = 18785
        mmTop = 0
        mmWidth = 42863
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Field Technology Tecnologia em Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 5292
        mmWidth = 57679
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160339
        mmTop = 5292
        mmWidth = 16669
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 181241
        mmTop = 5292
        mmWidth = 14552
        BandType = 8
        LayerName = BandLayer4
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape3'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 5
        mmTop = 265
        mmWidth = 197644
        BandType = 8
        LayerName = BandLayer4
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'COUNT'
        DataPipeline = ppDBMovAnimais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMovAnimais'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 265
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Total. Cab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 13225
        mmTop = 265
        mmWidth = 16404
        BandType = 8
        LayerName = BandLayer4
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppDBEstoqueEnt: TppDBPipeline
    DataSource = serviceDB.dsEstoqueEnt
    UserName = 'ppDBEstoqueEnt'
    Left = 40
    Top = 152
    object ppDBEstoqueEntppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBEstoqueEntppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_MINERAL'
      FieldName = 'ID_MINERAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBEstoqueEntppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_USUARIO'
      FieldName = 'ID_USUARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBEstoqueEntppField4: TppField
      FieldAlias = 'DATA_REG'
      FieldName = 'DATA_REG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 3
    end
    object ppDBEstoqueEntppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBEstoqueEntppField6: TppField
      FieldAlias = 'DATA_ENTRADA'
      FieldName = 'DATA_ENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDBEstoqueEntppField7: TppField
      FieldAlias = 'NUMERO_NF'
      FieldName = 'NUMERO_NF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBEstoqueEntppField8: TppField
      FieldAlias = 'EMISSAO_NF'
      FieldName = 'EMISSAO_NF'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object ppDBEstoqueEntppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_TOTRAL_NF'
      FieldName = 'VALOR_TOTRAL_NF'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppDBEstoqueEntppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_TOTAL_NF'
      FieldName = 'PESO_TOTAL_NF'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppDBEstoqueEntppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_KG_NF'
      FieldName = 'VALOR_KG_NF'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppDBEstoqueEntppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_FAZENDA'
      FieldName = 'PESO_FAZENDA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppDBEstoqueEntppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUEBRA_KG'
      FieldName = 'QUEBRA_KG'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppDBEstoqueEntppField14: TppField
      FieldAlias = 'TIPO_EMBALAGEM'
      FieldName = 'TIPO_EMBALAGEM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 13
    end
    object ppDBEstoqueEntppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_EMBALAGEM'
      FieldName = 'PESO_EMBALAGEM'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppDBEstoqueEntppField16: TppField
      FieldAlias = 'MINERAL'
      FieldName = 'MINERAL'
      FieldLength = 100
      DisplayWidth = 100
      Position = 15
    end
    object ppDBEstoqueEntppField17: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 16
    end
    object ppDBEstoqueEntppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_FORNECEDOR'
      FieldName = 'ID_FORNECEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBEstoqueEntppField19: TppField
      FieldAlias = 'RAZAO_SOCIAL'
      FieldName = 'RAZAO_SOCIAL'
      FieldLength = 100
      DisplayWidth = 100
      Position = 18
    end
  end
  object ppReportEstoqueEnt: TppReport
    AutoStop = False
    DataPipeline = ppDBEstoqueEnt
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 40
    Top = 208
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstoqueEnt'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape4'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 5292
        mmLeft = 264
        mmTop = 29368
        mmWidth = 284163
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de Entradas Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 103188
        mmTop = 21696
        mmWidth = 79110
        BandType = 0
        LayerName = BandLayer5
      end
      object ppImage5: TppImage
        DesignLayer = ppDesignLayer5
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000005C0000
          005B0806000000FEEAE2E0000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000011
          E74944415478DAED9D09B44DD51FC77FEF793CB332F388A24C652C4545A1142A
          4334482945938A524A868C49835291CA4A9942664AA38C112A94908C791322E2
          4DF4DF9FEDEDB78EFBEE70EE74EEF55FEFBBD65BEBDC73EE3DFB9CEFDEFB37EF
          FD62FE53903C3886983CC29D451EE10E238F70879147B8C3082BE19F7FFEB91C
          3B764C68A25CB97272DD75D7057DCFF5EBD7CBAFBFFE2ACD9A35930B2FBCD049
          AE4282B0107EF0E041193F7EBC0C1A3428E75CBE7CF9E4E1871F96B7DF7E3BA8
          7B57AC5851121313E5C5175F9461C38639CF5890080BE190DABB776FB7D7D6AE
          5D2B8D1B370EF8DEF1F1F192919121CF3FFFBC8C1C39D2E3F7B66FDF2E050B16
          940B2EB8200CB4058E90139E9999295DBB769559B366E9CF032B5596235959F2
          7652A2D0D08D37DE284B972E0DF8FEC58A1593E3C78FCB80010364F8F0E1B9AE
          FFF2CB2F52BF7EFD9CCFB1B1B1B26EDD3A69D4A89143947A47C809CF52E4DE7B
          EFBD327DFA74FDF9CB5A7564677A9A0CDABB4752D53564EFF7DF7F1FF0FD8B16
          2D2AFFFEFBAF5BC2693B7FFEFCB97E53A74E1D59B66C99942E5DDA094EBD222C
          22E5B1C71E9377DF7D571FD750D33A4BB500E9E099679E913163C6047C6F6F84
          5BDB2DA7882F14132BBB33D2F5E7175E7841468C18E10CAB5E1016C27FF8E107
          69D1A2859C3C7932D7B55AB56AC9575F7D2509090901DDDB1BE14D9B3695356B
          D648C502056448E52A52AD60BCB4FC758BBED6AB572FADC86362629CE0D523C2
          6A165E72C925B263C70E7D8C024B4B3B33CAAB57AF2E8B172FD6D7FD8537C26F
          B8E106F9FAEBAF25561D772B53568A2BCB689CD21DA067CF9E9A70647A241176
          C7E7C48913DA8CAB56AD9A360BDF7BEF3D7DBE5EBD7A327BF66C4DBE3FF046F8
          8F3FFEE8D1025AB26489DC7CF3CDE17C555B70DCD3BCF3CE3BE5D34F3FD5C790
          BD61C306295EBCB8EDDF7B231C583BD5009DF1F8E38FEB59166944C4B5EFDEBD
          BB4C9E3C591F5F7DF5D55AA6172A54C8D66F7D110E060E1C98730D131453345A
          10B158CA3DF7DC2353A74ED5C7B8FC0B172ED464FA821DC2DF79E71D3DA2C19E
          3D7BA2CAF98968F0AA5BB76E3265CA147D8C7CFDF8E38F7DDACA76081F3B76AC
          F4E9D3471F6FDBB62D20E51C2E443C5AD8AE5D3B6DB180060D1AC8C68D1BCFBA
          8E22BCE28A2B723EBB239CCFA9A9A952B56A55FDD94A382EFEC5175F1CC9573C
          0B11271C74E8D041E6CD9BA78FB197274C98A08F210E62FBF6ED9B13A872251C
          5B9F9982F7BA68D122B9F2CA2BF308F785CD9B376B91F2D75F7F49F9F2E5B519
          0950A8AB57AFD6D605A15E64BD2BE149494952B97265EDD67FF4D14772DF7DF7
          3942389D4B5B3C0B838436ED3855514138B09A73E3C68DD34AAF65CB96F2EDB7
          DFCA79E79DA795EA35D75C938B704409363E7177F40181B370134EA4F2E5975F
          3EEB1CE1E79F7FFE592EBDF4D27383F0FEFDFBCBE8D1A3F5837FF2C92772D75D
          774525E1FBF6EDF368F5304B71B0CE09C2FBF5EB27AFBEFAAA76BD21FCEEBBEF
          F64AB8094641F845175DA443B653D4EFBA2A73339C568AD5E4EC51AE9CD42C58
          585E3DB04F9233B3F4E8463C9E13840F1932445E7AE9252950A080CC9D3B57DA
          B46923B72965BA4029D33265CB6AE7A85EDDBA5256BD646A4A8A8C7DEB2D79B2
          776F494B4F97CA952AE92CD3B2152BA4B9EA14EC7BEC7C90969121F16E42B681
          828EA443C1A4EA174BA3C2C5A4C3B6DFE4CFF4B4E825FCD4A953F2CA2BAFC867
          9F7D26F14A219E56A46DDAB4494E2872403535621314B1CBD7ACC9F94D83FAF5
          A5485C9CAC5CBF3EE75CB36BAF9554A534B76607C840DB5B6F954DEA3BFB0E1C
          D09FA1BA79EBD672ECC8119D294254317B028D56EEDDBB57AA54A9E2F6DA1D77
          DC213366CC883EC2274D9A243D7AF470BAD9B3F0FAEBAFE7881D7F40D8F9BBEF
          BECB759EB810914A4F9D611011C20FA8D1D7A44913F9FBEFBF75742F3D3D3DEC
          6D12AB412C593171E24479E8A1876CDF83996132593C77A952A5E4F0E1C35A69
          8F1A35CA5608216232FCE8D1A33AFF89123C7DFA74D8DB4319138FFF60FC78E9
          A714AE819DD7676074E9D2458F608032E79881C23BD099585776E018E184489F
          7DF65979FFFDF7E5C1071F74A2498F58B478B1DCD2AE9D3E468F74ECD8D1E377
          F164211B470718B203852384F3D037DD74932C5FBEDC6DBCC4696049DC72CB2D
          3A92488112DEAA2758633D0D1B36D4F1FB60E017E1543C0D1E3C586AD6ACA963
          DA76B335D8CAB72AEB815C27895ED762A083EA7A96B25C70EB83C1CE3FFE9004
          E5E6178C8FF7FA3D4C489E87FC2799273C4477A0FA009F00346FDE5CEB80FC41
          9A98B6097FEDB5D7742515293340C3F3E7CFB795B6FAE79F7FB45DBD6AD52A79
          F4D147B5F3E07A6FC8C64B0C06103752394333B36B62BC11CE08670050C3F2D3
          4F3FE5FA8E35748C82A47342910FB545F8175F7C91436C5C4C8C64597EB275EB
          562959B2A4B6ADDD0165821778FFFDF76B91F2C8238FE49432006A0509BF3255
          99B2C1E05FE5DE172D5E5C529393A5B472963CC13AE3EA2A678A67A01320142F
          96A0D4CA952BF577AF55B63ECF1D2AD822FCC9279F94B79467074655B950F6A4
          9D94C9A9C972F2B4FFE2DF95704CA93425E3B52769A9980A0499CAB129A0C409
          795363BEF922DC1B3C8DFE60E0937014DEEDB7DF9E1394D9D7A8B16C387E4C1E
          D9F587246664FADDA02BE18434219D5809A32DE81752F7431162555C7EF9E56E
          BF6387707ECB75BBE69EEDE7B333C289E211CD03D5942B7E42D9CD89D96E384A
          8769C75474170F669A62ABD261BCA8957053F48948C212B8EAAAAB827A99CD9B
          36495DF53C006F1631E68B702A067068F00B003E01490CC2C57613DB21271C58
          CB1B0CACC9025F30453A56C26BD6AA25DB7EFF5D1F9B18B82740048FEA6DC4A1
          98495480A79E7A4ADE78E30D9F84D3C96B2C319B70C32FB31037184B80D18CE6
          26C3E20E7C273EDB348320AC14AC13F29386F03F9409874D8E4205659592C35A
          39FFFCF3737294A79522C607CD523384DF22DE50DE787866E6D4A85143CFACDF
          7EFB4D5B51A6BCCE2EE198B61F7CF041CE08870E2296649BFCA997090BE10082
          8E1C3922952A55727BBD55AB56DAB1285CB8B07E78886174321388D6594738A9
          B1FDFBF787FCA500B38559E38B704FF05615100C42EE69FACAEB59096754524A
          1C0ECC56B67827A5ECDDC10EE19D3B779669D3A6495C5C5C489F2BE48433DD99
          A25691C234271CBA73E7CE5C560A4E10D7485D2122027E11D5D1B455A64C196D
          627AEB482BE115941E1A3674A8A4283B9C7BE04F14295244C7CDB176420DC782
          57949B41842BE1566C5CBB4EF62725CAE8316364B5F24AEDA061A3463241755A
          61653DD5C9B6505C4146DF74882BE151A5347950EA3DE8F140FB852989D2A410
          1F65EA8D7090A9DA2CAB46297AC20EB0E109427903EF40DC9AFA1760259CE2A1
          E953A7CA11F58CC18090C7F5D75FAF957EC084B76DDB562FD54001060A46164D
          105366BAFA227CB89ADE03070FF6AB0D728C78C39E80F99AA144DD0E65199134
          7095E1259435720A1A021C54BC2396150683AFF54B5E0927EF77203B37182AF8
          223C90150ABC288E13E69C152C0620635F589D275F8A294A76C6AE6BEF2FECCC
          36AF8463C6516059A24489801F02B9C974A3A4E177E5E478239CB845A0012C53
          93929C942CF317CCD766A151C2DD95C709C9AD951EC1B3B5125E5E29C6B14A69
          1FCB8E82060AEA62F0587D29DAA8529AC86D5F32D01D70C1B76CD9A2FFFA3FD7
          5FB6FEBE35E71A1DFEE1871FEA658C94CAA14BAC843769DAD4B6820E05C242F8
          EC99332556BD284E8F09CF0E534E04A15C5F220567E589279EF0AB3DE4265399
          753CAE204E83BB4F7CE4CD37DFD4F7B6128E878BDED0235C51819E6146335AED
          D4AB479C70EC5F1C1A4FF0453858B97CB974EED2459292937DB6671EDF9A0AB3
          82A94E2412024D3ED58E0C273345E7877AD55BC809677AE3CAA3C0B8B57960B4
          389FED100E280CA2B40DC23C01278B7648204078B24B0721D791DB6C82705CB5
          8F0E21F6628770228D9451B8F33409533073CB7A49723846388A8A1185ED0E8C
          4861DD0D32D62EE100AD8F07EA0E28BB4DEA7E654A97D665CEA4CCACC982BE7D
          FAC86B4A19A28439CFFA504A9FA953B4128E9243143120008385E5E58467D948
          C10A3A9F3A7544181D8DDD4D05594409F784D6AD5BCB975F7EE917E1AC8FF794
          E1C79E46749951D6B15327993B678E3E7EEEB9E77439313B4E98D5C7C4DE1113
          C04A388B6957D9509A904D228677B0C2BA8020A284B30673F7EEDD5AC46016B2
          2875D7AE5DB609275CCAF44FF620C7590B441581217CBE22BBBD22DDACC78408
          4402C081337525AE842754A8A03BE7A0F2443D01C78FECBDC973BAC297E31536
          C2A96CA284CD53D901B04B38262284A7A4A4B8BDCE9426F1CBF4A78072801ACD
          5B366FD61D7C8FB2C7A74E9BA6BF87538488B3AED10CC6F1393F5F9C2CAE555B
          96AAE71BBA7FAFDE218340D7B4ECF61C239C97A72A0965E70D760927E1C0FDBC
          294D62D6946B30835807843C4616CF983E5DD295D3466750EEE08A60082FAA4C
          DD1155AACA46A59726A79E190C8E138E52A454D7249AB118C80E119635357D94
          BA9198B04B38647ADB8006B01508991D1394B20B2BE158303C8FC9F8B8032205
          1D60E477B1D87C92FEDF69C9C8A6CE9FA2D090107EDB6DB7C982050BF4B15158
          5660BEA13489DAD9259CE27C8AF4BD81C27BEC6B7F6125DC9FF2358877DD21C3
          DF5AC3A008277C4B21243212F0F26675B115D64A276219A6C6C517581E4E07BA
          7A7CB44BB91D8E0C693A7F71E8D0214D3866A2B7523777C071C22C6410D13E83
          CD1F044CB80E06A9516B6C5F9678983A3C572087219C118EB8311D1429E028F1
          3C1471626B63C73B858008C77260641BFB15338C85ADAEE1512B4C9905568429
          318B1418E1C87FEC78EA2319ED4EC16FC209EE10F9637519803836F6F2056602
          E92C42BE8803EAF5C83F460A648018E1B56BD776B45D9F84A3BD29E6646519AB
          B408E86391009C0F448B5D58F7A4025817788CC8E4708398086B3619CD4F3FFD
          74D8DBF304AF841357209EE14EC611585AB16285DF0D22F75994144C863E5898
          A05724E09570EB22222B18959842F503AC7665C6A0381145D8E9C87516B012D3
          26D845F932B307571A8FB3B872602EBBEC3229A5CE19F3934224661B830265CC
          6BE09992146680102803DC0B2B8759C46C65D94BB075E86123DC6C3BDAB04851
          1954F90259A2E4DEC494241DD48730023FC1003209DF12F0C753A434AD42850A
          3A8C4A9999A9476CAB94321D5F4C7D8F681FC4E118B11A836822B634E7F0F6F0
          FA50E0286946321D89E988EE6056457AEF42AF849B52B466C54BC818E5CE4E51
          F27A5CD2011D7A8570C293A102230F6F14F79C11CA483769B9766DDAC842824F
          AA73CCCE9C66EF59941FA31AD3934E81687E43C00A820998997D54A2015E0927
          2DC536A22041C9BCBFB24B94D92C003737942F62D6DA4338AB7D91B1D6118E28
          89558ACFDBE606C6F3C431C1CE867093A98F167825FCCF3FFF74FBB0582CEDDB
          B70FE983F8227CA1223CC626E1E430211C1316B1154CD581A38403EC6D642B53
          179948713EF18350C31DE12601D1AA458B337527050BE6229CBA19B36EDEE42C
          79663C5AB3C6D2B5AE3DAA09770AEE08A7BC01027BF5EC2913B237AF71251C65
          C8222862E22424706418D978C2C6A2313B054503A29A7077B0B3AB1B40D977EA
          D449EB20143021D4071E7820D2AFF9FF4B38204A89E24717713F4AA323BDEC3C
          6A08B79A85A1221C60D3135C23BF0ABEF9E61BBD0547A410358413F7A6E4000F
          D2536904F09770802D0EE93841385AD4AB0492B80805A28270025AA6840190F6
          2239E06EED7D208403FC06E238808432A423E39D46C409D705954D9AE43A0F39
          9882AECB0403251C58F7C2C2369F33678EE3E225E2849B0221D0BB6245D99D9E
          260B0F9DA911C1E971B5F983211C58B77FA2A685E581C461B0D9A96509B7F918
          71C24DED618792A5A45FC50449CCC8924EDBCF1483BACBC6044B3860E6B04ACD
          DDBF4CA0A0C7ECDA1696F78D34E12640059A96384F929537BB33ED0C119CA790
          C78A50100E88340E1D3A541F5FA464FAA1CC4C399ABD23463842170611279C5A
          1577F94DAC0A2292A194E156980D8613F2E79779B5EAC8A49464199FFDFF2228
          1E62E547381071C201615564A7C902914D42AEBBDB5C2054849B5A9A92717132
          B5464D5974F8B0BC9378663D13E266E6CC996179D7A8201C50AE660887544F9B
          1898621C5FFF1ACC17AC8546F1D99BEE2050689714203B6484035143B85D5833
          3EC1AE85279238CBB25D130A9CAA31BCDE70E19C231C458A3D4D4A2E14B52D58
          254417893A6211B5CBDE5E2F5C38E7083FD79147B8C3C823DC61E411EE30F208
          771879843B8CFF01FF1AD7954172FD090000000049454E44AE426082}
        mmHeight = 22225
        mmLeft = 248973
        mmTop = 529
        mmWidth = 35454
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Data Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 29633
        mmWidth = 28046
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'N'#186' NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 108480
        mmTop = 29633
        mmWidth = 32281
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Data Emissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 141818
        mmTop = 29633
        mmWidth = 23818
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = 'Peso Total NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 167482
        mmTop = 29633
        mmWidth = 26998
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 30956
        mmTop = 29633
        mmWidth = 76110
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label301'
        Border.mmPadding = 0
        Caption = 'Peso Total Faz.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 196321
        mmTop = 29633
        mmWidth = 29115
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label54'
        Border.mmPadding = 0
        Caption = 'Quebra KG(NF x FAZ)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 227278
        mmTop = 29633
        mmWidth = 33341
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label55'
        Border.mmPadding = 0
        Caption = 'Valor KG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 262203
        mmTop = 29633
        mmWidth = 20373
        BandType = 0
        LayerName = BandLayer5
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 1588
        mmTop = 0
        mmWidth = 28046
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'EMISSAO_NF'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 141818
        mmTop = 0
        mmWidth = 23818
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'NUMERO_NF'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 108480
        mmTop = 0
        mmWidth = 32281
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 793
        mmTop = 5025
        mmWidth = 283634
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'PESO_TOTAL_NF'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 167482
        mmTop = 0
        mmWidth = 26998
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'MINERAL'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 30956
        mmTop = 0
        mmWidth = 76110
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'PESO_TOTAL_NF'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 196321
        mmTop = 0
        mmWidth = 29115
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'QUEBRA_KG'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 227278
        mmTop = 0
        mmWidth = 33341
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'VALOR_KG_NF'
        DataPipeline = ppDBEstoqueEnt
        DisplayFormat = '$####0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 4763
        mmLeft = 262203
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = BandLayer5
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Field Technology Tecnologia em Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 5292
        mmWidth = 57679
        BandType = 8
        LayerName = BandLayer5
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 248973
        mmTop = 5292
        mmWidth = 16669
        BandType = 8
        LayerName = BandLayer5
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 269876
        mmTop = 5292
        mmWidth = 14552
        BandType = 8
        LayerName = BandLayer5
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape3'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 5
        mmTop = 265
        mmWidth = 284428
        BandType = 8
        LayerName = BandLayer5
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'PESO_FAZENDA'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 3704
        mmLeft = 43652
        mmTop = 265
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Total Entrada(kg) Fazenda.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 1585
        mmTop = 265
        mmWidth = 40482
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label56'
        Border.mmPadding = 0
        Caption = 'Total Entrada(kg) NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 71966
        mmTop = 265
        mmWidth = 30956
        BandType = 8
        LayerName = BandLayer5
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'PESO_TOTAL_NF'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 265
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label57'
        Border.mmPadding = 0
        Caption = 'Quebra Total(kg):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 132028
        mmTop = 265
        mmWidth = 25930
        BandType = 8
        LayerName = BandLayer5
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'QUEBRA_KG'
        DataPipeline = ppDBEstoqueEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 3704
        mmLeft = 159016
        mmTop = 264
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = 'Valor Total(kg):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 188910
        mmTop = 265
        mmWidth = 22754
        BandType = 8
        LayerName = BandLayer5
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'VALOR_TOTRAL_NF'
        DataPipeline = ppDBEstoqueEnt
        DisplayFormat = '$####0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 3704
        mmLeft = 212193
        mmTop = 265
        mmWidth = 25665
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label59'
        Border.mmPadding = 0
        Caption = '(M)Valor (kg):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 241036
        mmTop = 265
        mmWidth = 20108
        BandType = 8
        LayerName = BandLayer5
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'VALOR_KG_NF'
        DataPipeline = ppDBEstoqueEnt
        DisplayFormat = '$####0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBEstoqueEnt'
        mmHeight = 3704
        mmLeft = 262729
        mmTop = 265
        mmWidth = 18256
        BandType = 8
        LayerName = BandLayer5
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ReportPrevisao: TppReport
    AutoStop = False
    DataPipeline = DBPipelinePrevisao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 312
    Top = 240
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'DBPipelinePrevisao'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 5292
        mmLeft = 529
        mmTop = 24871
        mmWidth = 284481
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 524
        mmLeft = 530
        mmTop = 24074
        mmWidth = 284481
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Previs'#227'o de Fornecimento de Mineral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 529
        mmTop = 16933
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000005C0000
          005B0806000000FEEAE2E0000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000011
          E74944415478DAED9D09B44DD51FC77FEF793CB332F388A24C652C4545A1142A
          4334482945938A524A868C49835291CA4A9942664AA38C112A94908C791322E2
          4DF4DF9FEDEDB78EFBEE70EE74EEF55FEFBBD65BEBDC73EE3DFB9CEFDEFB37EF
          FD62FE53903C3886983CC29D451EE10E238F70879147B8C3082BE19F7FFEB91C
          3B764C68A25CB97272DD75D7057DCFF5EBD7CBAFBFFE2ACD9A35930B2FBCD049
          AE4282B0107EF0E041193F7EBC0C1A3428E75CBE7CF9E4E1871F96B7DF7E3BA8
          7B57AC5851121313E5C5175F9461C38639CF5890080BE190DABB776FB7D7D6AE
          5D2B8D1B370EF8DEF1F1F192919121CF3FFFBC8C1C39D2E3F7B66FDF2E050B16
          940B2EB8200CB4058E90139E9999295DBB769559B366E9CF032B5596235959F2
          7652A2D0D08D37DE284B972E0DF8FEC58A1593E3C78FCB80010364F8F0E1B9AE
          FFF2CB2F52BF7EFD9CCFB1B1B1B26EDD3A69D4A89143947A47C809CF52E4DE7B
          EFBD327DFA74FDF9CB5A7564677A9A0CDABB4752D53564EFF7DF7F1FF0FD8B16
          2D2AFFFEFBAF5BC2693B7FFEFCB97E53A74E1D59B66C99942E5DDA094EBD222C
          22E5B1C71E9377DF7D571FD750D33A4BB500E9E099679E913163C6047C6F6F84
          5BDB2DA7882F14132BBB33D2F5E7175E7841468C18E10CAB5E1016C27FF8E107
          69D1A2859C3C7932D7B55AB56AC9575F7D2509090901DDDB1BE14D9B3695356B
          D648C502056448E52A52AD60BCB4FC758BBED6AB572FADC86362629CE0D523C2
          6A165E72C925B263C70E7D8C024B4B3B33CAAB57AF2E8B172FD6D7FD8537C26F
          B8E106F9FAEBAF25561D772B53568A2BCB689CD21DA067CF9E9A70647A241176
          C7E7C48913DA8CAB56AD9A360BDF7BEF3D7DBE5EBD7A327BF66C4DBE3FF046F8
          8F3FFEE8D1025AB26489DC7CF3CDE17C555B70DCD3BCF3CE3BE5D34F3FD5C790
          BD61C306295EBCB8EDDF7B231C583BD5009DF1F8E38FEB59166944C4B5EFDEBD
          BB4C9E3C591F5F7DF5D55AA6172A54C8D66F7D110E060E1C98730D131453345A
          10B158CA3DF7DC2353A74ED5C7B8FC0B172ED464FA821DC2DF79E71D3DA2C19E
          3D7BA2CAF98968F0AA5BB76E3265CA147D8C7CFDF8E38F7DDACA76081F3B76AC
          F4E9D3471F6FDBB62D20E51C2E443C5AD8AE5D3B6DB180060D1AC8C68D1BCFBA
          8E22BCE28A2B723EBB239CCFA9A9A952B56A55FDD94A382EFEC5175F1CC9573C
          0B11271C74E8D041E6CD9BA78FB197274C98A08F210E62FBF6ED9B13A872251C
          5B9F9982F7BA68D122B9F2CA2BF308F785CD9B376B91F2D75F7F49F9F2E5B519
          0950A8AB57AFD6D605A15E64BD2BE149494952B97265EDD67FF4D14772DF7DF7
          3942389D4B5B3C0B838436ED3855514138B09A73E3C68DD34AAF65CB96F2EDB7
          DFCA79E79DA795EA35D75C938B704409363E7177F40181B370134EA4F2E5975F
          3EEB1CE1E79F7FFE592EBDF4D27383F0FEFDFBCBE8D1A3F5837FF2C92772D75D
          774525E1FBF6EDF368F5304B71B0CE09C2FBF5EB27AFBEFAAA76BD21FCEEBBEF
          F64AB8094641F845175DA443B653D4EFBA2A73339C568AD5E4EC51AE9CD42C58
          585E3DB04F9233B3F4E8463C9E13840F1932445E7AE9252950A080CC9D3B57DA
          B46923B72965BA4029D33265CB6AE7A85EDDBA5256BD646A4A8A8C7DEB2D79B2
          776F494B4F97CA952AE92CD3B2152BA4B9EA14EC7BEC7C90969121F16E42B681
          828EA443C1A4EA174BA3C2C5A4C3B6DFE4CFF4B4E825FCD4A953F2CA2BAFC867
          9F7D26F14A219E56A46DDAB4494E2872403535621314B1CBD7ACC9F94D83FAF5
          A5485C9CAC5CBF3EE75CB36BAF9554A534B76607C840DB5B6F954DEA3BFB0E1C
          D09FA1BA79EBD672ECC8119D294254317B028D56EEDDBB57AA54A9E2F6DA1D77
          DC213366CC883EC2274D9A243D7AF470BAD9B3F0FAEBAFE7881D7F40D8F9BBEF
          BECB759EB810914A4F9D611011C20FA8D1D7A44913F9FBEFBF75742F3D3D3DEC
          6D12AB412C593171E24479E8A1876CDF83996132593C77A952A5E4F0E1C35A69
          8F1A35CA5608216232FCE8D1A33AFF89123C7DFA74D8DB4319138FFF60FC78E9
          A714AE819DD7676074E9D2458F608032E79881C23BD099585776E018E184489F
          7DF65979FFFDF7E5C1071F74A2498F58B478B1DCD2AE9D3E468F74ECD8D1E377
          F164211B470718B203852384F3D037DD74932C5FBEDC6DBCC4696049DC72CB2D
          3A92488112DEAA2758633D0D1B36D4F1FB60E017E1543C0D1E3C586AD6ACA963
          DA76B335D8CAB72AEB815C27895ED762A083EA7A96B25C70EB83C1CE3FFE9004
          E5E6178C8FF7FA3D4C489E87FC2799273C4477A0FA009F00346FDE5CEB80FC41
          9A98B6097FEDB5D7742515293340C3F3E7CFB795B6FAE79F7FB45DBD6AD52A79
          F4D147B5F3E07A6FC8C64B0C06103752394333B36B62BC11CE08670050C3F2D3
          4F3FE5FA8E35748C82A47342910FB545F8175F7C91436C5C4C8C64597EB275EB
          562959B2A4B6ADDD0165821778FFFDF76B91F2C8238FE49432006A0509BF3255
          99B2C1E05FE5DE172D5E5C529393A5B472963CC13AE3EA2A678A67A01320142F
          96A0D4CA952BF577AF55B63ECF1D2AD822FCC9279F94B79467074655B950F6A4
          9D94C9A9C972F2B4FFE2DF95704CA93425E3B52769A9980A0499CAB129A0C409
          795363BEF922DC1B3C8DFE60E0937014DEEDB7DF9E1394D9D7A8B16C387E4C1E
          D9F587246664FADDA02BE18434219D5809A32DE81752F7431162555C7EF9E56E
          BF6387707ECB75BBE69EEDE7B333C289E211CD03D5942B7E42D9CD89D96E384A
          8769C75474170F669A62ABD261BCA8957053F48948C212B8EAAAAB827A99CD9B
          36495DF53C006F1631E68B702A067068F00B003E01490CC2C57613DB21271C58
          CB1B0CACC9025F30453A56C26BD6AA25DB7EFF5D1F9B18B82740048FEA6DC4A1
          98495480A79E7A4ADE78E30D9F84D3C96B2C319B70C32FB31037184B80D18CE6
          26C3E20E7C273EDB348320AC14AC13F29386F03F9409874D8E4205659592C35A
          39FFFCF3737294A79522C607CD523384DF22DE50DE787866E6D4A85143CFACDF
          7EFB4D5B51A6BCCE2EE198B61F7CF041CE08870E2296649BFCA997090BE10082
          8E1C3922952A55727BBD55AB56DAB1285CB8B07E78886174321388D6594738A9
          B1FDFBF787FCA500B38559E38B704FF05615100C42EE69FACAEB59096754524A
          1C0ECC56B67827A5ECDDC10EE19D3B779669D3A6495C5C5C489F2BE48433DD99
          A25691C234271CBA73E7CE5C560A4E10D7485D2122027E11D5D1B455A64C196D
          627AEB482BE115941E1A3674A8A4283B9C7BE04F14295244C7CDB176420DC782
          57949B41842BE1566C5CBB4EF62725CAE8316364B5F24AEDA061A3463241755A
          61653DD5C9B6505C4146DF74882BE151A5347950EA3DE8F140FB852989D2A410
          1F65EA8D7090A9DA2CAB46297AC20EB0E109427903EF40DC9AFA1760259CE2A1
          E953A7CA11F58CC18090C7F5D75FAF957EC084B76DDB562FD54001060A46164D
          105366BAFA227CB89ADE03070FF6AB0D728C78C39E80F99AA144DD0E65199134
          7095E1259435720A1A021C54BC2396150683AFF54B5E0927EF77203B37182AF8
          223C90150ABC288E13E69C152C0620635F589D275F8A294A76C6AE6BEF2FECCC
          36AF8463C6516059A24489801F02B9C974A3A4E177E5E478239CB845A0012C53
          93929C942CF317CCD766A151C2DD95C709C9AD951EC1B3B5125E5E29C6B14A69
          1FCB8E82060AEA62F0587D29DAA8529AC86D5F32D01D70C1B76CD9A2FFFA3FD7
          5FB6FEBE35E71A1DFEE1871FEA658C94CAA14BAC843769DAD4B6820E05C242F8
          EC99332556BD284E8F09CF0E534E04A15C5F220567E589279EF0AB3DE4265399
          753CAE204E83BB4F7CE4CD37DFD4F7B6128E878BDED0235C51819E6146335AED
          D4AB479C70EC5F1C1A4FF0453858B97CB974EED2459292937DB6671EDF9A0AB3
          82A94E2412024D3ED58E0C273345E7877AD55BC809677AE3CAA3C0B8B57960B4
          389FED100E280CA2B40DC23C01278B7648204078B24B0721D791DB6C82705CB5
          8F0E21F6628770228D9451B8F33409533073CB7A49723846388A8A1185ED0E8C
          4861DD0D32D62EE100AD8F07EA0E28BB4DEA7E654A97D665CEA4CCACC982BE7D
          FAC86B4A19A28439CFFA504A9FA953B4128E9243143120008385E5E58467D948
          C10A3A9F3A7544181D8DDD4D05594409F784D6AD5BCB975F7EE917E1AC8FF794
          E1C79E46749951D6B15327993B678E3E7EEEB9E77439313B4E98D5C7C4DE1113
          C04A388B6957D9509A904D228677B0C2BA8020A284B30673F7EEDD5AC46016B2
          2875D7AE5DB609275CCAF44FF620C7590B441581217CBE22BBBD22DDACC78408
          4402C081337525AE842754A8A03BE7A0F2443D01C78FECBDC973BAC297E31536
          C2A96CA284CD53D901B04B38262284A7A4A4B8BDCE9426F1CBF4A78072801ACD
          5B366FD61D7C8FB2C7A74E9BA6BF87538488B3AED10CC6F1393F5F9C2CAE555B
          96AAE71BBA7FAFDE218340D7B4ECF61C239C97A72A0965E70D760927E1C0FDBC
          294D62D6946B30835807843C4616CF983E5DD295D3466750EEE08A60082FAA4C
          DD1155AACA46A59726A79E190C8E138E52A454D7249AB118C80E119635357D94
          BA9198B04B38647ADB8006B01508991D1394B20B2BE158303C8FC9F8B8032205
          1D60E477B1D87C92FEDF69C9C8A6CE9FA2D090107EDB6DB7C982050BF4B15158
          5660BEA13489DAD9259CE27C8AF4BD81C27BEC6B7F6125DC9FF2358877DD21C3
          DF5AC3A008277C4B21243212F0F26675B115D64A276219A6C6C517581E4E07BA
          7A7CB44BB91D8E0C693A7F71E8D0214D3866A2B7523777C071C22C6410D13E83
          CD1F044CB80E06A9516B6C5F9678983A3C572087219C118EB8311D1429E028F1
          3C1471626B63C73B858008C77260641BFB15338C85ADAEE1512B4C9905568429
          318B1418E1C87FEC78EA2319ED4EC16FC209EE10F9637519803836F6F2056602
          E92C42BE8803EAF5C83F460A648018E1B56BD776B45D9F84A3BD29E6646519AB
          B408E86391009C0F448B5D58F7A4025817788CC8E4708398086B3619CD4F3FFD
          74D8DBF304AF841357209EE14EC611585AB16285DF0D22F75994144C863E5898
          A05724E09570EB22222B18959842F503AC7665C6A0381145D8E9C87516B012D3
          26D845F932B307571A8FB3B872602EBBEC3229A5CE19F3934224661B830265CC
          6BE09992146680102803DC0B2B8759C46C65D94BB075E86123DC6C3BDAB04851
          1954F90259A2E4DEC494241DD48730023FC1003209DF12F0C753A434AD42850A
          3A8C4A9999A9476CAB94321D5F4C7D8F681FC4E118B11A836822B634E7F0F6F0
          FA50E0286946321D89E988EE6056457AEF42AF849B52B466C54BC818E5CE4E51
          F27A5CD2011D7A8570C293A102230F6F14F79C11CA483769B9766DDAC842824F
          AA73CCCE9C66EF59941FA31AD3934E81687E43C00A820998997D54A2015E0927
          2DC536A22041C9BCBFB24B94D92C003737942F62D6DA4338AB7D91B1D6118E28
          89558ACFDBE606C6F3C431C1CE867093A98F167825FCCF3FFF74FBB0582CEDDB
          B70FE983F8227CA1223CC626E1E430211C1316B1154CD581A38403EC6D642B53
          179948713EF18350C31DE12601D1AA458B337527050BE6229CBA19B36EDEE42C
          79663C5AB3C6D2B5AE3DAA09770AEE08A7BC01027BF5EC2913B237AF71251C65
          C8222862E22424706418D978C2C6A2313B054503A29A7077B0B3AB1B40D977EA
          D449EB20143021D4071E7820D2AFF9FF4B38204A89E24717713F4AA323BDEC3C
          6A08B79A85A1221C60D3135C23BF0ABEF9E61BBD0547A410358413F7A6E4000F
          D2536904F09770802D0EE93841385AD4AB0492B80805A28270025AA6840190F6
          2239E06EED7D208403FC06E238808432A423E39D46C409D705954D9AE43A0F39
          9882AECB0403251C58F7C2C2369F33678EE3E225E2849B0221D0BB6245D99D9E
          260B0F9DA911C1E971B5F983211C58B77FA2A685E581C461B0D9A96509B7F918
          71C24DED618792A5A45FC50449CCC8924EDBCF1483BACBC6044B3860E6B04ACD
          DDBF4CA0A0C7ECDA1696F78D34E12640059A96384F929537BB33ED0C119CA790
          C78A50100E88340E1D3A541F5FA464FAA1CC4C399ABD23463842170611279C5A
          1577F94DAC0A2292A194E156980D8613F2E79779B5EAC8A49464199FFDFF2228
          1E62E547381071C201615564A7C902914D42AEBBDB5C2054849B5A9A92717132
          B5464D5974F8B0BC9378663D13E266E6CC996179D7A8201C50AE660887544F9B
          1898621C5FFF1ACC17AC8546F1D99BEE2050689714203B6484035143B85D5833
          3EC1AE85279238CBB25D130A9CAA31BCDE70E19C231C458A3D4D4A2E14B52D58
          254417893A6211B5CBDE5E2F5C38E7083FD79147B8C3C823DC61E411EE30F208
          771879843B8CFF01FF1AD7954172FD090000000049454E44AE426082}
        mmHeight = 22225
        mmLeft = 248180
        mmTop = 1058
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Qtde. Cab.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 184417
        mmTop = 25400
        mmWidth = 22229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Pasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 38102
        mmTop = 25399
        mmWidth = 59267
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Consumo kg Cab. Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 207174
        mmTop = 25400
        mmWidth = 39953
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Consumo Total kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 248711
        mmTop = 25399
        mmWidth = 35457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Qtde. Cab.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 1058
        mmTop = 25400
        mmWidth = 35459
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Ra'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 98161
        mmTop = 25400
        mmWidth = 44450
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4762
        mmLeft = 142346
        mmTop = 24871
        mmWidth = 42069
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PASTO'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 37838
        mmTop = 0
        mmWidth = 59531
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'QTDCAB'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 184421
        mmTop = 0
        mmWidth = 22230
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CONSUMOCAB'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 207176
        mmTop = 0
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CONSUMOTOTAL'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 248711
        mmTop = 0
        mmWidth = 35457
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 5292
        mmWidth = 283898
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 0
        mmWidth = 35723
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'RACA'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 97102
        mmTop = 0
        mmWidth = 45508
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'CATEGORIA_ATUAL'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 4763
        mmLeft = 142346
        mmTop = 0
        mmWidth = 42069
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = cl3DDkShadow
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 269
        mmWidth = 284481
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Field Technology Tecnologia em Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 5292
        mmWidth = 50006
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 246067
        mmTop = 5553
        mmWidth = 16669
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 269086
        mmTop = 5292
        mmWidth = 14552
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 790
        mmTop = 4497
        mmWidth = 284481
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'CONSUMOTOTAL'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 3703
        mmLeft = 159279
        mmTop = 265
        mmWidth = 35454
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'QTDCAB'
        DataPipeline = DBPipelinePrevisao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBPipelinePrevisao'
        mmHeight = 3703
        mmLeft = 100803
        mmTop = 529
        mmWidth = 22233
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Total. Cab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 82815
        mmTop = 265
        mmWidth = 16404
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Consumo Total kg.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 129118
        mmTop = 265
        mmWidth = 28575
        BandType = 8
        LayerName = Foreground
      end
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
  object DBPipelinePrevisao: TppDBPipeline
    DataSource = serviceDB.dsPrev
    UserName = 'DBPipelinePrevisao'
    Left = 312
    Top = 192
    object DBPipelinePrevisaoppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object DBPipelinePrevisaoppField2: TppField
      FieldAlias = 'PASTO'
      FieldName = 'PASTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object DBPipelinePrevisaoppField3: TppField
      FieldAlias = 'QTDCAB'
      FieldName = 'QTDCAB'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 2
    end
    object DBPipelinePrevisaoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONSUMOCAB'
      FieldName = 'CONSUMOCAB'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object DBPipelinePrevisaoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONSUMOTOTAL'
      FieldName = 'CONSUMOTOTAL'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object DBPipelinePrevisaoppField6: TppField
      FieldAlias = 'CATEGORIA_ATUAL'
      FieldName = 'CATEGORIA_ATUAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object DBPipelinePrevisaoppField7: TppField
      FieldAlias = 'RACA'
      FieldName = 'RACA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
  end
  object ppDB_REL_GEN_ATIVOS: TppDBPipeline
    DataSource = serviceDB.dsRelResumoAtivos
    UserName = 'DB_REL_GEN_ATIVOS'
    Left = 328
    Top = 320
  end
  object ppRepGenAtivos: TppReport
    AutoStop = False
    DataPipeline = ppDB_REL_GEN_ATIVOS
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 336
    Top = 384
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppImage6: TppImage
        DesignLayer = ppDesignLayer6
        UserName = 'Image6'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000005C
          0000005B0806000000FEEAE2E0000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EC200000EC20115284A8000
          0011AC49444154785EED9C097014D516864F80901048020408094B5804022220
          2010C0000AE1098262A9C8A23ECB12B034B2880B4F5C8012141050404B01CB87
          2C3E650B208A3B3CA32C22BB0101D9F77D091220F4BBFFC9BD4D67E899E999E9
          991EEAE5ABBAD5B76FF7F4F49CB9F7DC73CE3DDD119A808A0819C5E4B6881051
          24F0105324F0105324F01013D449F3ABAFBEA2F3E7CF13BE22313191DAB76F2F
          8FF8CF6FBFFD465BB76EA5F4F474AA59B3A66CBD8980C0EDE6F8F1E3DAC89123
          F147EAA578F1E2DA33CF3C23CFF09FA4A424BEDEF0E1C365CBCD455054CA679F
          7D46AFBDF69ADC2B203F3F9FA64E9D4A6BD6AC912DFE71F2E449DEE27A9EF8F3
          CF3F69DFBE7D722F7CB05DE057AE5CA1952B57CA3DA257AB56A3CCCA4914A1F6
          5F7D55D6FCA364C992BC2D56CCFCD6376EDC4811111154AF5E3D4A49492131B2
          68DDBA75F2A8F3D82E70FCD812254AC83DA23B63E3A8414C0C55906D972E5DE2
          ADBF8851296B3772F5EA556AD2A489DC2BE0DAB56BF4F8E38FD3891327648BB3
          D82E7008BB5CB972728F2873F72E1A7FF0201D17C2002D5AB4E06D30183870A0
          AC11254646528D92515CC7243B71E244AE3B4D5074F8A38F3E4AA54A95E2FA76
          D1A377E55DEFD55F7EF9251D147F403058BF7E3D6F9385DA1955BD06CDA85387
          F70174BFA7D1112A8222F056AD5AD1C58B17A98EE107474747F336272787CD43
          4C6A7653BA7469DE1EB97C99B2CF9DA545728205107638083C2866A191DCDC5C
          6DE7CE9D5CEFDFBF3F9B74288D1B37D676ECD8C1EDBE2084CA9F7FE5955764CB
          758405A45FDFB52C5BB64C9EE52C4117B82B3D7BF6D48570CB2DB76867CF9E95
          47ACE149E0C0F8A7AA326EDC38EDEFBFFF9667384BC8050E84D5A00BA34D9B36
          9A503FF28877BC091CC02952D75FBE7CB96C0D0F82A2C3BDF1C9279F509F3E7D
          B89E9D9D4D5DBA74A10B172EF0BE1D54AE5C59D688525353652D3C7044E060D6
          AC59D4B76F5FAEFFF4D34FF4F0C30FDB662BC3F952046AF7DB8D6302079F7EFA
          2975EDDA95EB087465646470DDC8DAB56B65CD3D6262A63D7BF6C8BDC2C0110B
          271C153858BA7429DD7FFFFD5C871D3D60C000AE83499326B109E9291C202643
          F624EFB8E30E5ABD7AB56C0D5F1C17381839722455A95285EB595959BC055F7C
          F105DBF3E3C78F67B56386B072F8335047DBB66D93ADC1071D25212181FD0B78
          B8623E94473C131602BFEDB6DBE8DE7BEFE5FA91234768CA94295C57CE12B6C6
          F88C1104A79457EBEE1CBB19366C1875EBD68D4E9D3A45797979F4DE7BEF5164
          64246DD9B2459EE19EB01038285BB62C6F2140F49C7065FFFEFDF4D65B6FC9BD
          EB205CFCE28B2FCA3DF7848DC0557C1B43D3CAF0349EA3D74D3E6775A85B65F1
          E2C5B246F46462228D4BA949899105230B7F8637C246E02A0E02B5A07A7B99B8
          38DE46962C49B1B21E23CFAB246D6DB42BD553B5460DDE56AC5891B720C5E665
          B89D3B77CA1A519BD838CA882F47A58BF9A0CA440F083957AF5ED5468F1EAD35
          6BD64C6B2D3CCD56CD9B6B31254BA22B72A95DAB96969E96A6EFA3DCDEA489D6
          569C676C4BBFF34EAD7E9D3A85DABA76EFAE554B4ED6F72345E9D8B9B3D6B265
          4BEDF6DB6FD7C68E1DAB1D387040DE89EFECDDBBB7D0F7190BC216DE7044E033
          66CC30BDE15096091326C8BBF18D0E1D3A985E0F7121E10BC8B3DCE348AADBA1
          4387282D2D8D4E9F3ECD0B1298E9830D2C996FBFFD56EE15F0D1471FD1534F3D
          25F7BCD3BB776F9A3B772ED771DF98DC61A9D4AE5D9BC68C1943D5AB57E7639E
          702CB710F6335CF03265CAF03258B0C11A28DCFCE91F7C402FFCEB5FB255744D
          0B3F1F1D03A187EFBEFB8EF7EFBEFB6EAEA3A3E037E0CF84756509083C144077
          E2EBA64D9B265B9C63C9D2A57C2F28F3E7CF97ADE62092297C04FD7C216C79C4
          3F422270DC747A7A3ADF30262EA7D9B46993969292C2F7939898285BCDE9DAB5
          AB2EECA64D9BCA56FFF1C92CC462EC830F3E48C3870F2F641E7903A1D7CB972F
          73BD75EBD6BC3572E2F871F630036597B8A74B16E683A4A4244A4E4EE6BA3194
          EBCA638F3DC66BB0A05DBB76B46AD52AAE07826581BFF3CE3B3C518821486FBE
          F9263568D080237C56888A8AD2759CF893796BE4DF3367D2F7DF7F2FF7FCE7BC
          F8631F93215F6FA8FB70174DC44238A29900BFFB871F7E60F73D60B89F7B4108
          561F56252222F43A4A4E4E8E76F4E8514D581EA605C776EDDAA5AB94A79F7E5A
          5EB580B56BD772FBBA75EB648BFF5C38778EAF755C7CA7278E1D3BA6B56AD58A
          CF6DD4A89126461FDFAB18657CAF6DDBB6E56328770A5BDF4E2C09FCB9E79ED3
          6F604C4A4D6D406265AD54B1C282B75A5C055EAD5A35AD62850ADA86F5EB658B
          FF5CCECBE3EF78E49147648B3946817B2A4D84B365375E550AE2CD467DDDB742
          45FA47D97254D6A6C81CE20FA5626228C24DEA9A2F2004007EFCF147CEB20D84
          E6CD9B077C0D332CD9E16FBFFD36BDFCF2CB5CAF1D1D4D1785DD7C584E828D1B
          372631EC78D5C54C1FC2FE85ADBA6CD9323A2E2647D1C3E9FDF7DFE76308C366
          666652F9F2E57972423E4B206CDEB4891A89FB011F7FFC313DF1C4135C7705F7
          D1BD7B779E04E3E2E2D8A1815F00E013B46CD992174254D8D756B89F5BC098DE
          A08A98E1E551EF74ECD8913F635429F55253F56B4D9E3C59B69A939F9FCF3118
          4FDC73CF3DFAF5060D1A245B6FC4A852B00D2596F502529063636369C3860DDC
          9B317363F5DD0C9C03CB04C03A3977EE9CDE83145053070F1C907B44A3468DE2
          2821F212717DF4C26BF9F9041FF4AA182158DB847A1342650F4F8D1C64C96264
          FDF1C71F6E57853C8195A2152B56E8F72764C219BA6DDAB4E1DE6F3B0572B7CE
          F9F3E735A177E5DE8DC013AB54A99256A3460D762E6AD6ACC95BF123B847197B
          78D5AA55F51E697779F6D967E5B7DC889549D353DE4B20F83C5321F6210425F7
          6E04F6B4F841BC8ABE77EF5EDABD7B376F95E36364F9F2E5B2663FED85A31208
          C87D44FAB3DDD81EBCC2709F3E7D7A219502553061C20412366EA14913E0A908
          1C83B562CC27F115A8157C17161F1015BCF5D65BE5911B314E9A49C2D31C3572
          241D13AA05D7C0CA1316437AF5EAC5CF25D90EF7F310D0A953271EAAAE76B891
          75AB566B598B16F1A204CEB5529A366BA6AD59B54ADBB26183BCCA8D883FB2D0
          84EBE4A4E9B18763486142C13FEEE1348F60C90C93E6D0A143793275EDE1AE5C
          11DF5949F4D23367CEC816CF20060D95E509FC06C4AD7BF4E8C1FBC61E2EE61A
          9A3B7B369D11F7180848E7E8D0A143A187114C81C0DDD1A54B172D262646AB20
          3C417F8B18E2BC15C39D7B94A71E0E468D18C1E7F952264D9A243F6D0E2282E5
          CA96D58445C2FBAE93667C5C9C5626365613F3935F45586F9AB09AB48C8C0CBE
          BE273C0A3CD9B0366857F12670B3CF782BB0F1C5DC21AF701D31F1F171B55EAA
          F2D4AD5829FE1431DAF8FA9EF0A8526059CC9C3993E2E3E3658BEF6022C37043
          841199519E540A52DD9A366D2AF77C03C9A1C8C83D7AE428652DCE226116EA93
          F03F85C70935D23923833D5BA34AA92C26C64962D23E2FEE3110F000303C56AF
          132D8B3D045899344F9F3E5DA8C7582DC205E7285F565696563FB57EA1635065
          C241E3850424E603630F4F6BDD9ADB4245E0112313E67DFE392D983F9F162D5C
          484B162FA6B973E6D0018357E90E789A481BF395458B16B1FD7FDF7DF751CEB6
          1CD95A004667FDFAF53956A39EF13482458B691F7E4813264E64F354FC29BCB8
          6C67BE7A21A4E06DA3418306857A986BF1A6C3C17F57ACD0C45037FDBC6B5118
          97C28C059EF19C3973B8AED653ADE8703CA67EEDDA353EDF4E6CEFE17FFDF517
          F724317BB339892D8ABB951533DAA6A7D3F26FBEE1D88D27E064018451CD42A9
          D0EB9784D3D54FA64220AA6915CC3BEE1E2F3F7CF8307BD3FE607BBA296CEE25
          4B96E8A96B9834313C91E36D25BB54D1A851235631988CCCC06477567C57C50A
          15F435CAA3478FCAA34443060FE6491493F085DC5C562B66131ADAFAF5EBC701
          3380F02CFE6884675DB371712F08B22124814E05BB7BECD8B1F2A845644F0F3A
          B051F17556548A02ABE4F88C59494848E0E53B458F071ED08FBDF4D24BDC8600
          946A9B32650AB701A34A696D71D2141D49FF0DC682A7E67CC1F61EAE98376F1E
          07B010C4C7F0DCB163873C620D844B3D3DB1ECAAA21E17BD79E18205BCD08110
          AE10044F7E008FB5089DCC7557F6EEDE4DB384E97B4278A2EE10CE1F2F28FFFC
          F3CFB2E53A1F8A0917A3C7F8D8B947A4E06D01CF42621D10977557ACF6709888
          08F39A5D0305E15EF43A3077EE5CAD56EDDAFAE3877D7AF7D6CF835384FB3212
          88E353AE7809ED97868DB4D7AB56D7C45FCE6DBD7AF59257F68E6D932602F958
          9A42BCC40E3022106574079C322CFD8D1831821DA65FB2B37934411743B7220A
          09A70D914395CE6C0757B46BB436F702EDC9BBC4D2F6155BC2B398147BF6ECC9
          C319E0F111244942602AA70FF6EDE6CD9BBD06AF1442FFD2E8D1A3E59E39780D
          D3A04183F4A094558C9E265EE384FB715D9132029582F5D76F84E504628B15A7
          3C21F8CB52743E2585723F0F1071F33CB450D4846544085C6BD7AE1D1FB7AA52
          DE78E30DFD9AEECAECD9B3E5D9BE615429BEA4AFC1A375BD075F730D031238E2
          CCDDBA75D3BFBCB7D09D66881EA5FFC0CCCC4CD9EA1DB8E488F4D516FAD958B0
          64D7B973676DDFBE7DF24CDF40D410D609EE072F59F085279F7C929706110515
          1EAE6CB58EDF02472F4162A61276DFBE7DE5911BC1E4A67A3832519D06D95EC8
          38C0FD20221A4AFC1238EC5FBC9440091BE90966E151232ACD02C372E3C68DB2
          D519D0C355080201AF50E2B3C0B15475D75D77E9C2466E9E157EFFFD777DE53E
          3535954788939C3C7952DBBA75ABDC0B1D5EAD14CCDE5F7FFD352D5CB8901A36
          6C4875EBD6658B0454106E35667CABC0F9305A28B02EF0D8463056C75D819B8E
          95785827CF3FFFBC6C750016BB1B90ED54A54A15BD371B0B324CFD01EE716464
          A4E9354355BCA9BF60E2B1871B1F2232825E89675C5C5F5967158C1804B8F08E
          41D8E97058B66FDFCE8BC10876E14505183D70A5B1981C171BCB8F87278836F5
          602A726330DA106CC222317E06B2B0B0288C90800A94E15A8856621461B4E269
          61F5AE164780C0DDA15E3BDAB474196D516A03AD5FA58299BD7CF9F25A7676B6
          3CCB7FE0BE0B81727DF0E0C17C6D7CA7100CB7A97CC4AE62523E27CF8B8F8FE7
          3604A690D78D951ED586B83710EA4F8B8A8AE236F147B2CB8FEF8179EA341E5D
          7BF43650466C932223294AA614230EAD62D18180F0AB5A2F55A150F45815DA55
          012A6CD593C82A468D363C91806BE033AA0DE0F3AA0D61548C207C0F468DD378
          14B87A0E66E5B9B3F4C0F61C9A7CE410EFA3DDEE371B8B3F5FD60A3F77AFB648
          EC5475E3D6B848A084ACB6C0DD2282537814B8517F1F34E40622E80E5D194AAC
          AF1715085C093D1C7AB5118F02AF55AB162FCE221885A7CF9A356BC693A57A83
          4FB041B61480FA42469619488550AB4288BB03E435429500ACE6841562688605
          43870EE5490EB11365B64D9F3E9DDBFAF7EBC7FB40E8676E53E9C43817CFF4A0
          4D393270CE8C0135C464C285B016B819AE02770772D85BB468C1E72237052F54
          08073CAA949B19D8E9C845815AC4C489383CD2A89D266C04EEBA466907983021
          744CF05821C222011E707592B013386C6B35E1D901DECC0921C30B05C29922E1
          2071DD11A46A7194A953A7EA131C0A9E0B3A7CF8B03C5A18AB3ADC15BC83565D
          3F3A3A5A9B376F9E3C125A1C17F8AFBFFEAA0BC258B0A2036BC3157F050E66CD
          9AA55F1FE10061F2CA23A1C371811B936B329393B56E09E5F57D61F3CBB3AE13
          88C081F1F54F48C3E8D1A307C7F7D3D2D242623E3A2E70F5E37B944FE07C8FF9
          75AF27839AADC6042A70B074E952D3056194810307CAB38283E39366A74E9D78
          BBF0D4491ABA7F1FBDB86F37EF03A42704036462BDF0C20B724F78D4D1D1142F
          0375EFBEFB2EA73F070BC7058EF7B0287E397B86765D2A48FE41BA1A127A82C5
          A64D9B785B455845FFA99B4ABD2B56E27DB060C10259B31FC7058E85059869C6
          97BFB46DDB965F84A3C2C3C14005B7FE165AED44FE552A66F00382FACE71A95A
          1C27373797170950CCAC1385D2BDC3860D932DFE614C348A8A88D0C45FCB7584
          0156AE5C29CFB29FB0717CA0AFB14880E2A9672BA7084B7381F0FAEBAFD3430F
          3DC4F53CD1CB113587F385F43A5F12F77DC596DCC25082E4CCD9B367D3902143
          38693F5090668C580B5C7FACE8ABD76A078B9B4EE0373B61A352FE5F28127888
          29127888291278882912784821FA1FDB790427746E835B0000000049454E44AE
          426082}
        mmHeight = 18256
        mmLeft = 261409
        mmTop = -6350
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 'Gerenciamento de Animais Ativos'
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
        mmLeft = -529
        mmTop = 4240
        mmWidth = 102923
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape13'
        Brush.Style = bsClear
        mmHeight = 4233
        mmLeft = 529
        mmTop = 0
        mmWidth = 283898
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'CATEGORIA'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 1324
        mmTop = 0
        mmWidth = 33618
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'RACA'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 35714
        mmTop = -1
        mmWidth = 23803
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'QTD_CAB'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 75411
        mmTop = 0
        mmWidth = 14812
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText39'
        Border.mmPadding = 0
        DataField = 'DATA_ENTRADA_MEDIA'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 60065
        mmTop = 0
        mmWidth = 14810
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'PESO_ENT'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 90754
        mmTop = -1
        mmWidth = 14282
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText401'
        Border.mmPadding = 0
        DataField = 'ARR_ENTRADA'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 105577
        mmTop = -1
        mmWidth = 9787
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'PESO_ATUAL'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 116158
        mmTop = 0
        mmWidth = 15617
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText43'
        Border.mmPadding = 0
        DataField = 'ARR_ATUAL'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 132296
        mmTop = 0
        mmWidth = 10845
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText44'
        Border.mmPadding = 0
        DataField = 'CONSUMO_ACUMULADO'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 143672
        mmTop = -1
        mmWidth = 17458
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText45'
        Border.mmPadding = 0
        DataField = 'CONSUMO_CAB_DIA'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 161665
        mmTop = 0
        mmWidth = 21426
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText46'
        Border.mmPadding = 0
        DataField = 'CUSTO_FIXO_ACUMULADO'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        DisplayFormat = '$####,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 183363
        mmTop = 265
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText47'
        Border.mmPadding = 0
        DataField = 'CUSTO_ALIMENTAR'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        DisplayFormat = '$####,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 232831
        mmTop = 265
        mmWidth = 25396
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'CUSTO_ALIM_CAB'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        DisplayFormat = '$####,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 259040
        mmTop = 265
        mmWidth = 25661
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText49'
        Border.mmPadding = 0
        DataField = 'CUSTO_FIXO_ACUMULADO'
        DataPipeline = ppDB_REL_GEN_ATIVOS
        DisplayFormat = '$####,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
        mmHeight = 4233
        mmLeft = 208503
        mmTop = 265
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'PASTO'
      DataPipeline = ppDB_REL_GEN_ATIVOS
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppShape11: TppShape
          DesignLayer = ppDesignLayer6
          UserName = 'Shape11'
          Brush.Color = clSilver
          mmHeight = 4232
          mmLeft = 531
          mmTop = 5026
          mmWidth = 283898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppShape12: TppShape
          DesignLayer = ppDesignLayer6
          UserName = 'Shape12'
          Brush.Color = clSkyBlue
          mmHeight = 4760
          mmLeft = 529
          mmTop = 1
          mmWidth = 283899
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText36: TppDBText
          DesignLayer = ppDesignLayer6
          UserName = 'DBText36'
          Border.mmPadding = 0
          DataField = 'PASTO'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3703
          mmLeft = 529
          mmTop = 530
          mmWidth = 283898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel61: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label61'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Categoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 1324
          mmTop = 5289
          mmWidth = 33618
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel63: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label63'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Ra'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 35712
          mmTop = 5289
          mmWidth = 24065
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel64: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label64'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Data Ent.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 60065
          mmTop = 5289
          mmWidth = 14810
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel65: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label65'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Qtde. Cab.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 75411
          mmTop = 5289
          mmWidth = 14806
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel66: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label66'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Peso Ent.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 90755
          mmTop = 5289
          mmWidth = 14285
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel67: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label67'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = '@ Ent'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 105577
          mmTop = 5289
          mmWidth = 9787
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel68: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label68'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Peso Proj.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 116158
          mmTop = 5289
          mmWidth = 15606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel69: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label69'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = '@ Proj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 132296
          mmTop = 5289
          mmWidth = 10845
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel70: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label70'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Cons. Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 143672
          mmTop = 5291
          mmWidth = 17458
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel71: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label71'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Cons. Cab/Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 161665
          mmTop = 5027
          mmWidth = 21426
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel72: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label72'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Custo Fixo Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 183363
          mmTop = 5292
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel73: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label73'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Custo Alim. Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 232831
          mmTop = 5292
          mmWidth = 25396
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel74: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label74'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Custo Alim. Cab.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 259028
          mmTop = 5292
          mmWidth = 25652
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel75: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label75'
          HyperlinkColor = clBlack
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Custo Fixo Cab.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3968
          mmLeft = 208503
          mmTop = 5292
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape20: TppShape
          DesignLayer = ppDesignLayer6
          UserName = 'Shape20'
          Brush.Style = bsClear
          Shape = stRoundRect
          mmHeight = 4760
          mmLeft = 75411
          mmTop = -2
          mmWidth = 209021
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc16: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc16'
          Border.mmPadding = 0
          DataField = 'QTD_CAB'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 75407
          mmTop = 793
          mmWidth = 14813
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc17'
          Border.mmPadding = 0
          DataField = 'PESO_ENT'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 90746
          mmTop = 529
          mmWidth = 14283
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc18: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc18'
          Border.mmPadding = 0
          DataField = 'ARR_ENTRADA'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 105563
          mmTop = 529
          mmWidth = 9778
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc19: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc19'
          Border.mmPadding = 0
          DataField = 'PESO_ATUAL'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 116141
          mmTop = 529
          mmWidth = 15608
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc20: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc20'
          Border.mmPadding = 0
          DataField = 'ARR_ATUAL'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 132284
          mmTop = 529
          mmWidth = 10838
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc21: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc201'
          Border.mmPadding = 0
          DataField = 'CONSUMO_ACUMULADO'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 143664
          mmTop = 528
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc22: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc202'
          Border.mmPadding = 0
          DataField = 'ARR_ATUAL'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 161652
          mmTop = 528
          mmWidth = 21438
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc23: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc23'
          Border.mmPadding = 0
          DataField = 'CUSTO_FIXO_ACUMULADO'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          DisplayFormat = '$####,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 183355
          mmTop = 525
          mmWidth = 24343
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc24: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc24'
          Border.mmPadding = 0
          DataField = 'CUSTO_FIXO_CAB'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          DisplayFormat = '$####,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 208757
          mmTop = 525
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc25: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc25'
          Border.mmPadding = 0
          DataField = 'CUSTO_ALIMENTAR'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          DisplayFormat = '$####,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 232832
          mmTop = 264
          mmWidth = 25403
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc26: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc26'
          Border.mmPadding = 0
          DataField = 'CUSTO_ALIM_CAB'
          DataPipeline = ppDB_REL_GEN_ATIVOS
          DisplayFormat = '$####,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDB_REL_GEN_ATIVOS'
          mmHeight = 3968
          mmLeft = 259029
          mmTop = 265
          mmWidth = 25403
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
end
