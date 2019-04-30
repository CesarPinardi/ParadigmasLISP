
;ESTRUTURA:
;PROFESSORES, ALUNOS, DISCIPLINAS, TURMA

;DISCIPLINAS CONTEM ALUNOS

;CAAR BD = DISCIPLINA
;N É, CDR+RECURSAO = PROX

;INSERIR ALGUEM NO FIM DA LISTA

;REMOVER ELEMENTO DUPLICADO

;NAO COMECAR POR MATRICULA

;COMECAR CRIANDO A ESTRUTURA, COMECAR PELAS CONSULTAS

;2 TURMAS

;professores vinculados a disciplinas

(DEFUN MATRICULAR (ALUNOS DISCIPLINAS TURMA BD)
)


(DEFUN CANCELAR-MATRICULA (ALUNOS DISCIPLINAS TURMA BD)
)


(DEFUN VINCULAR (PROFESSORES DISCIPLINAS BD)
)


(DEFUN REMOVER-VINCULO (PROFESSORES DISCIPLINAS BD)
)


(DEFUN ALUNOS? (BD)

(if (null (car BD))
	(cdr BD)
	(cdr (car (car (cdr (car BD))))))

)


(DEFUN PROFESSORES? (BD)

(if (null (car BD))
	(cddar BD)
	(PROFESSORES? (cdr BD))

)
)


(DEFUN DISCIPLINAS? (BD)
(cdr (caar BD))
;(if (null (cdr BD))
	;nil
	;(DISCIPLINAS? (cdr BD)))

	
)

(DEFUN MATRICULADOS? (DISCIPLINA TURMA BD)

(if (= DISCIPLINA (caar BD))
	(if (= TURMA (car (car (car (cdr (car BD))))))
		(cdr (car (car (cdr (car BD)))))
		(if (= TURMA (car (car (cdr (car (cdr (car BD)))))))
		(cdr (car (cdr (car (cdr (car BD)))))))
	)
)
)


(DEFUN CURSA? (ALUNO BD)

)


(DEFUN MINISTRA? (PROFESSOR BD)

)


;(cddar (cons (cons 'd (cons nil 'p3))'primeiro))
;p3

;lista exemplo
