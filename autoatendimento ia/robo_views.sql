# View da tabela cliente
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_clientes_ordenados` AS
    SELECT 
        `cliente`.`idCliente` AS `idCliente`,
        `cliente`.`nomeCliente` AS `nomeCliente`,
        `cliente`.`enderecoCliente` AS `cepCliente`,
        `cliente`.`data_nascCliente` AS `data_nascCliente`,
        TIMESTAMPDIFF(YEAR,
            `cliente`.`data_nascCliente`,
            CURDATE()) AS `idadeCliente`,
        `cliente`.`generoCliente` AS `generoCliente`
    FROM
        `cliente`
    ORDER BY `cliente`.`nomeCliente`;


# View da tabela colaborador
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_colaboradores_ativos` AS
    SELECT 
        `colaborador`.`idColaborador` AS `idColaborador`,
        `colaborador`.`nomeColaborador` AS `nomeColaborador`,
        `colaborador`.`cargoColaborador` AS `cargoColaborador`,
        `colaborador`.`telefoneColaborador` AS `telefoneColaborador`,
        `colaborador`.`crmColaborador` AS `crmColaborador`
    FROM
        `colaborador`
    WHERE
        `colaborador`.`statusColaborador` = 1;


# View da tabela consulta
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_proximas_consultas` AS
    SELECT 
        `c`.`idConsulta` AS `idConsulta`,
        `c`.`dataConsulta` AS `dataConsulta`,
        `p`.`nomeCliente` AS `nomePaciente`,
        `m`.`nomeColaborador` AS `nomeMedico`,
        `c`.`localConsulta` AS `localConsulta`
    FROM
        ((`consulta` `c`
        JOIN `cliente` `p` ON (`c`.`idPaciente` = `p`.`idCliente`))
        JOIN `colaborador` `m` ON (`c`.`idMedico` = `m`.`idColaborador`))
    WHERE
        `c`.`dataConsulta` >= CURDATE();


# View da tabela unidade_saude
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_unidades_lista_limpa` AS
    SELECT 
        `unidade_saude`.`idUnidade_saude` AS `idUnidade_saude`,
        `unidade_saude`.`nomeUnidade_saude` AS `nomeUnidade_saude`,
        `unidade_saude`.`enderecoUnidade_saude` AS `enderecoUnidade_saude`,
        `unidade_saude`.`numero_loteUnidade_saude` AS `numero_loteUnidade_saude`
    FROM
        `unidade_saude`
    ORDER BY `unidade_saude`.`nomeUnidade_saude`;
