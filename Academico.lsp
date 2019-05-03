
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
	nil
	(cons (cdr (car (car (cdr (car BD))))) (ALUNOS? (cdr BD))))

)


(DEFUN PROFESSORES? (BD)
(if (null (car BD))
	nil
	(cons (cddar BD) (PROFESSORES? (cdr BD))))


)



(DEFUN DISCIPLINAS? (BD)
(if (null (car BD))
	nil
	(cons (caar BD) (DISCIPLINAS? (cdr BD))))

	
)

(DEFUN MATRICULADOS? (DISCIPLINA TURMA BD)
(if (null (car BD))
	nil
	(if (eql DISCIPLINA (caar BD))
		(if (eql TURMA 1)
			(cdaar (cdar BD)) 
			(if (eql TURMA 2)
			(cddadr (car BD))
				'TURMA 'INVALIDA)
		)
	(MATRICULADOS? DISCIPLINA TURMA (cdr BD)))
)
)

(DEFUN VINCULADOS? (DISCIPLINA BD) 
(if (null (car BD))
	nil
	(if (eql DISCIPLINA (caar BD))
		(cddar BD)
		(VINCULADOS? DISCIPLINA (cdr BD))
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
