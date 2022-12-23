unit unit_CadastroAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, Vcl.Mask, EstruturaListaLinearDinamica;

type
  Tfrm_CadastroAlunos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btAdd: TBitBtn;
    btRetirar: TBitBtn;
    btResultado: TBitBtn;
    btSair: TBitBtn;
    Label1: TLabel;
    edMatricola: TEdit;
    Label2: TLabel;
    edAluno: TEdit;
    Label3: TLabel;
    edCurso: TEdit;
    Label4: TLabel;
    spSemestre: TSpinEdit;
    Label5: TLabel;
    mmValor: TMemo;
    mmFila: TMemo;
    Label6: TLabel;
    rgResultados: TRadioGroup;
    procedure btSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btRetirarClick(Sender: TObject);
    procedure btResultadoClick(Sender: TObject);
    procedure rgResultadosClick(Sender: TObject);
  private
    Controle: TEstruturaAlunos;

    procedure limparTela;
    function ValidarDados:Boolean;
    procedure inserir;
    procedure retirar;
    procedure carregarLista;
    procedure liberarLista;

    procedure buscarNome(sNome:String);
    procedure buscarCurso(sCurso: String);
    procedure buscarCursoSemestre(sCurso: String; iSemestre:Integer);
    procedure buscarValorCurso(sCurso: String);
    procedure buscarMaiorMensalidade;
  public
  end;

var
  frm_CadastroAlunos: Tfrm_CadastroAlunos;

implementation

{$R *.dfm}

procedure Tfrm_CadastroAlunos.btAddClick(Sender: TObject);
begin
     inserir;
end;

procedure Tfrm_CadastroAlunos.btResultadoClick(Sender: TObject);
begin
    case (rgResultados.ItemIndex) of
       0: buscarNome(edAluno.Text);
       1: buscarCurso(edCurso.Text);
       2: buscarCursoSemestre(edCurso.Text, StrToInt(spSemestre.Text));
       3: buscarValorCurso(edCurso.Text);
       4: buscarMaiorMensalidade;
       5: carregarLista;
    end;
end;

procedure Tfrm_CadastroAlunos.rgResultadosClick(Sender: TObject);
begin
     if (rgResultados.ItemIndex = 4) then
       buscarMaiorMensalidade
     else
     if (rgResultados.ItemIndex = 5) then
       carregarLista;
end;

procedure Tfrm_CadastroAlunos.btRetirarClick(Sender: TObject);
begin
     retirar;
     carregarLista;
end;

procedure Tfrm_CadastroAlunos.btSairClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure Tfrm_CadastroAlunos.buscarCurso(sCurso: String);
Begin
  mmFila.Clear;
  mmFila.Lines.AddStrings(Controle.pesquisaCurso(sCurso));
  if mmFila.Lines.Count < 1 then
    ShowMessage('Elemento n�o foi encontrado');
end;

procedure Tfrm_CadastroAlunos.buscarMaiorMensalidade;
begin
  mmFila.Clear;
  mmFila.Lines.AddStrings(Controle.getAlunoComMaiorMensalidade());
end;

procedure Tfrm_CadastroAlunos.buscarValorCurso(sCurso: String);
var
  valor: Real;
begin
  mmFila.Clear;
  valor := Controle.getTotalMensalidadePorCurso(sCurso);
  if (valor = 0) then
    ShowMessage('Elemento n�o foi encontrado')
  else
    mmFila.Text := 'Valor de Mensalidades do curso ' + sCurso + ': ' + FormatFloat('###,##0.00', valor);
end;

procedure Tfrm_CadastroAlunos.buscarCursoSemestre(sCurso: String;  iSemestre: Integer);
begin
  mmFila.Clear;
  mmFila.Lines.AddStrings(Controle.pesquisaCursoSemestre(sCurso, iSemestre));
  if mmFila.Lines.Count < 1 then
     ShowMessage('Elemento n�o foi encontrado');
end;

procedure Tfrm_CadastroAlunos.buscarNome(sNome: String);
begin
  mmFila.Clear;
  mmFila.Lines.AddStrings(Controle.pesquisaNome(sNome));
  if mmFila.Lines.Count < 1 then
     ShowMessage('Elemento n�o foi encontrado');
end;

procedure Tfrm_CadastroAlunos.FormActivate(Sender: TObject);
begin
  limparTela;
  mmFila.Clear;
  edMatricola.SetFocus;
end;

procedure Tfrm_CadastroAlunos.FormCreate(Sender: TObject);
begin
  Controle := TEstruturaAlunos.Create();
end;

procedure Tfrm_CadastroAlunos.FormDestroy(Sender: TObject);
begin
  liberarLista;
end;

procedure Tfrm_CadastroAlunos.inserir;
begin
  if (not ValidarDados) then
    exit;

  Controle.IncluiAluno(edAluno.Text, StrToIntDef(edMatricola.Text,0), edCurso.Text, spSemestre.Value, StrToFloatDef(mmValor.Lines.Text,0));
  mmFila.Clear;
  mmFila.Lines.AddStrings(Controle.carregarAlunos);
  limparTela;
  edMatricola.SetFocus;
end;

procedure Tfrm_CadastroAlunos.carregarLista;
begin
  mmFila.Clear;
  mmFila.Lines.AddStrings(Controle.carregarAlunos);
end;

procedure Tfrm_CadastroAlunos.retirar;
begin
  Controle.RemoveAluno(StrToIntDef(edMatricola.Text,0));
end;

procedure Tfrm_CadastroAlunos.liberarLista;
begin
  Controle.RemoveTodosAlunos();
end;

procedure Tfrm_CadastroAlunos.limparTela;
begin
  edMatricola.Clear;
  edAluno.Clear;
  edCurso.Clear;
  spSemestre.Text := '1';
  mmValor.Clear;
end;

function Tfrm_CadastroAlunos.ValidarDados: Boolean;
begin
  result := true;

  if (edMatricola.Text = '') then
   begin
        ShowMessage('Informe a matr�cula!');
        edMatricola.SetFocus;
        result := false;
        exit;
   end;

  if (edAluno.Text = '') then
   begin
        ShowMessage('Informe o aluno!');
        edAluno.SetFocus;
        result := false;
        exit;
   end;

  if (edCurso.Text = '') then
   begin
        ShowMessage('Informe o curso!');
        edCurso.SetFocus;
        result := false;
        exit;
   end;

  if (spSemestre.Text = '') then
   begin
        ShowMessage('Informe o semestre!');
        spSemestre.SetFocus;
        result := false;
        exit;
   end;

  if (mmValor.Text = '') then
   begin
        ShowMessage('Informe o valor!');
        mmValor.SetFocus;
        result := false;
        exit;
   end;

  try
    StrToFloat(mmValor.Text);
  except
       on e:Exception do
         begin
              ShowMessage('Informe um valor correto!');
              mmValor.SetFocus;
              result := false;
              exit;
         end;
  end;
end;

end.
