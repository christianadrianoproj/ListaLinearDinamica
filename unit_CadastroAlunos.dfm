object frm_CadastroAlunos: Tfrm_CadastroAlunos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Alunos'
  ClientHeight = 360
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 845
    Height = 47
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 521
    object btAdd: TBitBtn
      Left = 40
      Top = 8
      Width = 97
      Height = 29
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btAddClick
    end
    object btRetirar: TBitBtn
      Left = 160
      Top = 8
      Width = 97
      Height = 29
      Caption = 'Retiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btRetirarClick
    end
    object btResultado: TBitBtn
      Left = 285
      Top = 6
      Width = 97
      Height = 29
      Caption = 'Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btResultadoClick
    end
    object btSair: TBitBtn
      Left = 405
      Top = 8
      Width = 97
      Height = 29
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 313
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 521
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 43
      Height = 13
      Caption = 'Matr'#237'cula'
    end
    object Label2: TLabel
      Left = 40
      Top = 80
      Width = 27
      Height = 13
      Caption = 'Aluno'
    end
    object Label3: TLabel
      Left = 40
      Top = 120
      Width = 28
      Height = 13
      Caption = 'Curso'
    end
    object Label4: TLabel
      Left = 22
      Top = 158
      Width = 45
      Height = 13
      Caption = 'Semestre'
    end
    object Label5: TLabel
      Left = 7
      Top = 198
      Width = 59
      Height = 13
      Caption = 'Mensalidade'
    end
    object Label6: TLabel
      Left = 408
      Top = 8
      Width = 16
      Height = 13
      Caption = 'Fila'
    end
    object edMatricola: TEdit
      Left = 72
      Top = 32
      Width = 140
      Height = 21
      MaxLength = 20
      TabOrder = 0
      Text = 'edMatricola'
    end
    object edAluno: TEdit
      Left = 72
      Top = 72
      Width = 281
      Height = 21
      MaxLength = 100
      TabOrder = 1
      Text = 'edMatricola'
    end
    object edCurso: TEdit
      Left = 72
      Top = 112
      Width = 281
      Height = 21
      MaxLength = 100
      TabOrder = 2
      Text = 'edMatricola'
    end
    object spSemestre: TSpinEdit
      Left = 72
      Top = 152
      Width = 42
      Height = 22
      MaxValue = 9
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object mmValor: TMemo
      Left = 72
      Top = 195
      Width = 108
      Height = 21
      Alignment = taRightJustify
      Lines.Strings = (
        'mmValor')
      TabOrder = 4
    end
    object mmFila: TMemo
      Left = 408
      Top = 23
      Width = 421
      Height = 198
      Lines.Strings = (
        'mmFila')
      TabOrder = 5
    end
    object rgResultados: TRadioGroup
      Left = 52
      Top = 239
      Width = 777
      Height = 63
      Caption = '..: Resutado por :..'
      Columns = 6
      Items.Strings = (
        'Nome'
        'Curso'
        'Curso e Semestre'
        'Valor Mens. Curso'
        'Maior Mensalidade'
        'Mostrar Fila')
      TabOrder = 6
      OnClick = rgResultadosClick
    end
  end
end
