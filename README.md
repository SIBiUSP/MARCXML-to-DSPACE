MARCXML-to-DSPACE
=================

Script utilizado para converter registros em formato MARCXML exportado do Aleph para importação no DSPACE

Substituir no ARQUIVO.xml



//<collection xmlns="http://www.loc.gov/MARC21/slim" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd">
//<record xmlns="http://www.loc.gov/MARC21/slim" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd">

por 

//<collection>

//<record>
 
Então rodar:

saxonb-xslt -xsl:dedalustodublincore.xsl -o:records.xml -s:NOMEDOARQUIVOMARCXML.xml

./trataregistros.sh

Testar a importação:

./dspace import -t -a -e EMAIL -c HANDLE DA COLEÇÃO -s DIRETORIO DE ORIGEM -m MAPFILE (NOME) 

Importar definitivamente: 

./dspace import -a -e EMAIL -c HANDLE DA COLEÇÃO -s DIRETORIO DE ORIGEM -m MAPFILE (NOME)

Importar para o workflow:

./dspace import -w -a -e EMAIL -c HANDLE DA COLEÇÃO -s DIRETORIO DE ORIGEM -m MAPFILE (NOME)

== Autores == 

Jan Leduc de Lara

Tiago R. Marçal Murakami
