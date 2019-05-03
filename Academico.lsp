
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
	(if (null (car BD)) ;disciplina
		nil
		(if (eql (caar BD) DISCIPLINAS)
			(if (null (caddar BD))
				(cons PROFESSORES nil)
				nil
			)
		nil		
		) 
	nil
	)
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
			(cdaar (cdar BD)) ;pegar alunos da t1
			(if (eql TURMA 2)
			(cddadr (car BD))
			nil)
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

;(CAR (CDDDR (CDAAR (CDAR aluno2

(DEFUN PEGA_TURMA1 (BD)
	(cdar (cadar BD))
)

(DEFUN PEGA_TURMA2 (BD)
	(cadr (cadar BD))
)

(DEFUN CURSA? (ALUNO BD)
	(if (null (car BD))
	nil	
		(PEGA_TURMA1 BD)
		(if (eql ALUNO (CAR (PEGA_TURMA1 BD)))
		;CAR CDR DE PEGATURMA É SEMPRE O PROXIMO ALUNO	
	)
)
;(cadr (cdaar (cdar BD))) pega prox aluno de uma disc

(DEFUN MINISTRA? (PROFESSOR BD)

)


;(cddar (cons (cons 'd (cons nil 'p3))'primeiro))
;p3

;lista exemplo
