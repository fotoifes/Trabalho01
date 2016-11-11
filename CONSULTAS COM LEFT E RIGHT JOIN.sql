Select login_pessoa.Login as login_da_pessoa, id_pessoa,tipo_pessoa,usuario_empresa.Avaliacao,usuario_empresa.id_pessoa_emp
from login_pessoa
Right join usuario_empresa
on (usuario_empresa.id_pessoa_us = login_pessoa.id_pessoa);

Select login_pessoa.Login as login_da_empresa, id_pessoa,tipo_pessoa,empresa_usuario.Avaliacao,empresa_usuario.id_pessoa_us
from login_pessoa
Right join empresa_usuario
on (empresa_usuario.id_pessoa_emp = login_pessoa.id_pessoa);

Select login_pessoa.Login as login_da_pessoa,usuario_empresa.Avaliacao,usuario_empresa.id_pessoa_emp
from login_pessoa
left join usuario_empresa
on (usuario_empresa.id_pessoa_us = login_pessoa.id_pessoa);

Select id_pessoa,tipo_pessoa,empresa_usuario.Avaliacao,empresa_usuario.id_pessoa_us
from login_pessoa
left join empresa_usuario
on (empresa_usuario.id_pessoa_emp = login_pessoa.id_pessoa);