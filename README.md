# Loja de Informática – Projeto SQL

Este repositório contém os scripts SQL para criação e manipulação de dados em um banco relacional da **Loja de Informática**, utilizando **SQLiteStudio**.

##  Estrutura

- `loja_informatica.sql` → script único que inclui:
  - Criação das tabelas (`CREATE TABLE`)
  - Inserção de dados (`INSERT`)
  - Consultas (`SELECT`)
  - Atualizações e exclusões (`UPDATE` / `DELETE`)

*(Se preferir, você pode usar os quatro arquivos separados: `create_tables.sql`, `insert.sql`, `select.sql`, `update_delete.sql`.)*

##  Como executar no SQLiteStudio

1. Instale o [SQLiteStudio](https://sqlitestudio.pl).
2. Crie um novo banco chamado `loja_info.db`.
3. Vá em **File → Open SQL script** e selecione o arquivo `loja_informatica.sql`.
4. Clique em **Execute SQL (ícone de play)**.
5. O script vai:
   - Apagar tabelas antigas (se existirem)
   - Criar todas as tabelas
   - Inserir dados iniciais
   - Executar consultas de exemplo
   - Aplicar atualizações e exclusões

##  Conferindo os resultados

- No painel esquerdo, expanda **Tables** para ver as tabelas criadas:  
  `Cliente`, `Fornecedor`, `Produto`, `Venda`, `Item_Venda`, `Nota_Fiscal`.

- Clique com o botão direito em uma tabela → **Browse data** para visualizar os registros.

- Os resultados das consultas (`SELECT`) aparecem na aba **Result** abaixo do editor SQL.

##  Objetivos atendidos

- Criação de tabelas com integridade referencial
- Inserção de dados reais
- Consultas com filtros, ordenação e JOIN
- Atualizações e exclusões com condições
- Uso de ferramenta real (SQLiteStudio)
- Versionamento e compartilhamento via GitHub
