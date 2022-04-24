library(ggplot2)

populacao = Bruno_Gabriel_dos_Santos_Costa_estimativas_dou_2021_xlsx

Estados = populacao$`ESTIMATIVAS DA POPULAÇÃO RESIDENTE NO BRASIL E UNIDADES DA FEDERAÇÃO COM DATA DE REFERÊNCIA EM 1º DE JULHO DE 2021`
PopulacaoTotal =((populacao$...3))

ApenasEstados = c(Estados[3:9], Estados[11:19], Estados[21:24], Estados[26:28], Estados[30:33])
PopulacaoDosEstados = c(PopulacaoTotal[3:9], PopulacaoTotal[11:19], PopulacaoTotal[21:24], PopulacaoTotal[26:28], PopulacaoTotal[30:33])

NovoDf = data.frame(ApenasEstados,PopulacaoDosEstados)

ggplot(NovoDf, aes(x= ApenasEstados, y= PopulacaoDosEstados)) +
  geom_bar(stat="identity", fill="blue") + coord_flip()

PopulacaoNordeste = populacao$...3[11:19]

EstadosNordeste = Estados[11:19]
df = data.frame(EstadosNordeste, PopulacaoNordeste)

ggplot(df, aes(x= EstadosNordeste, y= PopulacaoNordeste)) +
  geom_bar(stat="identity", fill="blue") + coord_flip()

MediaNordeste = mean(PopulacaoNordeste)
MediaNordeste

MedianaNordeste = median(PopulacaoNordeste)
MedianaNordeste

DesvioNordeste = sd(PopulacaoNordeste)
DesvioNordeste


Regioes = c(Estados[2],Estados[10], Estados[20],Estados[25],Estados[29])

PopulacaoRegioes = c(PopulacaoTotal[2],PopulacaoTotal[10], PopulacaoTotal[20],PopulacaoTotal[25],PopulacaoTotal[29])

Dataframe = data.frame(Regioes,PopulacaoRegioes)

ggplot(Dataframe, aes(x= Regioes, y= PopulacaoRegioes)) +
  geom_bar(stat="identity", fill="blue") + coord_flip()



ggplot(Dataframe, aes(x="", y=PopulacaoRegioes, fill=Regioes)) +
  geom_bar(stat="identity", width=1, color = "White") +
  coord_polar("y", start=0) + theme_void()

