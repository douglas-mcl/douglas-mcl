programa {
  funcao inicio() {

    cadeia nome_cand[5]
    inteiro votos[5]
    inteiro voto, maior_voto
    inteiro cont, voto_nulo
    caracter  resp

  
//configurando urna
para(inteiro i=0; i<5;i++){
	se(i == 0){
		nome_cand[i] = "BRANCO"
		}
	senao se(i>0){
	
    escreva("\nDigite o nome do ",i,"° candidato: ")
    leia(nome_cand[i])

	}
}
// LIMPANDO A TELA E INICIALIZANDO VARIAVEIS RESP E CONT
limpa()
resp = 'S'
cont = 0

// APRESENTAÇÃO DO MENU
escreva("\nVOTAÇÃO 2024! DEUS É FIEL.")
enquanto(resp == 'S'){
escreva("\nINICIANDO VOTAÇÃO")
para(inteiro i=0; i<5; i++){
  escreva("\nVote ",i," PARA VOTAR: ",nome_cand[i])

}
// RECEBENDO VOTOS DO ELEITOR
escreva("\nINFORME SEU VOTO: ")
leia(voto)
//CONDIÇÃO PARA VOTOS VALIDOS OU NULOS.
se (voto<0 ou voto>4){
  escreva("\nVOTO NULO!")
}
senao 
  se(voto>0 ou voto<4){
    votos[voto] = votos[voto] +1 

}

// PERGUNTAR SE HAVERÁ OUTRO VOTAÇÃO
escreva("\nREALIZAR UMA NOVA VOTAÇÃO?[S/N]")
leia(resp)
cont = cont+1
limpa()
}
// LOOP PARA SABER MAIOR VOTO
maior_voto = 0
para(inteiro i=0; i<4; i++){
	se (votos[i] <= votos[i+1]){
		maior_voto = votos[i]
		}
	senao{
		maior_voto = votos[i]
		}
	}
// PARA SABER SE HOUVE EMPATE
logico empate = falso
para(inteiro x=0; x<3; x++){
para (inteiro i = 1; i < 4; i++){
	se (votos[x] == votos[i+1]){
		empate = verdadeiro
		}
	senao {empate = falso}
	}
}
//CONTABILIZANDO VOTOS NULOS
	voto_nulo = cont - (votos[0]+votos[1]+votos[2]+votos[3]+votos[4])
//CONDIÇÃO PARA EXIBIR SE FOI EMPATE OU O VENCEDOR
	se(empate == verdadeiro){
		escreva("EMPATE!!!")
		}
	senao se(empate == falso){
		escreva("CANDIDATO ELEITO ",nome_cand[maior_voto]," COM O TOTAL DE VOTOS: ",votos[maior_voto])
		
		}

//EXIBIR RESULTADO DA ELEIÇÃO
para(inteiro i=0; i<5; i++){
	escreva("\nVOTOS ",nome_cand[i]," TEVE: ",votos[i])
	}
escreva("\nVOTO NULOS: ",voto_nulo)
escreva("\nTOTAL DE ELEITORES: ",cont)
escreva("\nDEUS É FIEL!")


  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1113; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome_cand, 4, 11, 9}-{votos, 5, 12, 5}-{maior_voto, 6, 18, 10}-{cont, 7, 12, 4}-{empate, 66, 7, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */