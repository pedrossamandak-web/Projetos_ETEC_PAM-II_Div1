object dm: Tdm
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ETEC\Projetos_ETEC_PAM-II_Div2\bdlanchonete.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 112
    Top = 40
  end
  object usuario: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from usuarios;')
    Left = 112
    Top = 144
    object usuariousuid: TFDAutoIncField
      FieldName = 'usuid'
      Origin = 'usuid'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object usuariousunome: TWideMemoField
      FieldName = 'usunome'
      Origin = 'usunome'
      BlobType = ftWideMemo
    end
    object usuariousulogin: TWideMemoField
      FieldName = 'usulogin'
      Origin = 'usulogin'
      BlobType = ftWideMemo
    end
    object usuarioususenha: TWideMemoField
      FieldName = 'ususenha'
      Origin = 'ususenha'
      BlobType = ftWideMemo
    end
    object usuariousulogado: TBooleanField
      FieldName = 'usulogado'
      Origin = 'usulogado'
    end
  end
end
