object dm: Tdm
  Height = 900
  Width = 1200
  PixelsPerInch = 120
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://127.0.0.1/Projetos_ETEC_PWEB-III_Div1/api'
    Params = <>
    SynchronizedEvents = False
    Left = 320
    Top = 12
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 320
    Top = 86
  end
  object RESTResponse1: TRESTResponse
    Left = 320
    Top = 160
  end
  object RRDSAusuarios: TRESTResponseDataSetAdapter
    Dataset = usuarios
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 320
    Top = 240
  end
  object usuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 314
    object usuariosid: TIntegerField
      FieldName = 'id'
    end
    object usuariosnome: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object usuariosusuario: TStringField
      FieldName = 'usuario'
      Size = 150
    end
    object usuarioslogado: TIntegerField
      FieldName = 'logado'
    end
  end
end
