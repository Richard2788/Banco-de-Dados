-- Criação da View 'alunos'
CREATE OR REPLACE VIEW `alunos` AS 
SELECT 
  `idAluno`,
  `nomeAluno`,
  `cpfAluno`,
  `telAluno`,
  `enderecoAluno`,
  `data_nascAluno`,
  `nome_resAluno`
FROM `aluno`;