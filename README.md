### Repositório para os arquivos de script do primeiro projeto do bootcamp Linux Experience da DIO.me

O shell script **iac1.sh** cria uma estrutura de diretórios, grupos e usuários, associando usuários a grupos específicos e atribuindo permissões dos diretórios criados a grupos específicos.

##### Diretórios:

|      /publico       | /adm                                 | /ven                                 | /sec                                 |
| :-----------------: | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| Disponível p/ todos | Acessível somente pelo grupo GRP_ADM | Acessível somente pelo grupo GRP_VEN | Acessível somente pelo grupo GRP_SEC |

##### Grupos e Usuários:

| GRP_ADM | GRP_VEN    | GRP_SEC  |
| ------- | ---------- | -------- |
| carlos  | debora     | josefina |
| maria   | sebastiana | amanda   |
| joao    | roberto    | rogerio  |

> **Obs.: O arquivo senhas.txt possui o nome dos usuários, onde embaixo de cada nome há sua respectiva senha que foi gerada de forma aleatória.**
