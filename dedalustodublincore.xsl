<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes" version="1.0" encoding="UTF-8"/>

<xsl:template match="/collection/record">
		<record>
			<dublin_core schema="dc">
				<dcvalue element="contributor" qualifier="none" language="pt_BR">UNIVERSIDADE DE SÃO PAULO</dcvalue>
				<dcvalue element="rights" qualifier="none" language="pt_BR">restrictedAccess</dcvalue>
				<dcvalue element="contributor" qualifier="author" language="pt_BR"><xsl:value-of select="datafield[@tag='100']/subfield[@code='a']" /></dcvalue>
				<xsl:for-each select="datafield[@tag='700']/subfield[@code='a']">
					<dcvalue element="contributor" qualifier="author" language="pt_BR"><xsl:value-of select="." /></dcvalue>
				</xsl:for-each>
				<dcvalue element="title" qualifier="none" language="pt_BR"><xsl:value-of select="datafield[@tag='245']/subfield[@code='a']" /><xsl:if test="datafield[@tag='245']/subfield[@code='b']">: <xsl:value-of select="datafield[@tag='245']/subfield[@code='b']" /></xsl:if></dcvalue>
				<dcvalue element="publisher" qualifier="city" language="pt_BR"><xsl:value-of select="datafield[@tag='260']/subfield[@code='a']" /></dcvalue>
				<dcvalue element="publisher" qualifier="" language="pt_BR"><xsl:value-of select="datafield[@tag='260']/subfield[@code='b']" /></dcvalue>
				<dcvalue element="date" qualifier="issued" language="pt_BR"><xsl:value-of select="datafield[@tag='260']/subfield[@code='c']" /></dcvalue>
				<xsl:if test="datafield[@tag='242']">
					<dcvalue element="title" qualifier="alternative" language="pt_BR"><xsl:value-of select="datafield[@tag='242']/subfield[@code='a']" /></dcvalue>
				</xsl:if>
				<dcvalue element="language" qualifier="iso" language="pt_BR"><xsl:value-of select="datafield[@tag='041']/subfield[@code='a']" /></dcvalue>
				<xsl:for-each select="datafield[@tag='650']/subfield[@code='a']">
					<dcvalue element="subject" qualifier="vcusp" language="pt_BR"><xsl:value-of select="." /></dcvalue>
				</xsl:for-each>
				<dcvalue element="relation" qualifier="ispartof" language="pt_BR"><xsl:value-of select="datafield[@tag='773']/subfield[@code='t']" /></dcvalue>
				<dcvalue element="identifier" qualifier="citation" language="pt_BR"><xsl:value-of select="datafield[@tag='773']/subfield[@code='t']" />,<xsl:value-of select="datafield[@tag='773']/subfield[@code='d']" />,<xsl:value-of select="datafield[@tag='773']/subfield[@code='h']" /></dcvalue>
				<xsl:if test="datafield[@tag='520']/subfield[@code='a']">
					<dcvalue element="description" qualifier="abstract" language="pt_BR"><xsl:value-of select="datafield[@tag='520']/subfield[@code='a']" /></dcvalue>
				</xsl:if>
				<xsl:if test="datafield[@tag='940']/subfield[@code='a']">
					<dcvalue element="description" qualifier="abstract" language="pt_BR"><xsl:value-of select="datafield[@tag='940']/subfield[@code='a']" /></dcvalue>
				</xsl:if>
				<xsl:choose>
					<xsl:when test="datafield[@tag='945']/subfield[@code='c']='01'"><dcvalue element="type" qualifier="" language="pt_BR">article</dcvalue></xsl:when>
				</xsl:choose>
				<xsl:for-each select="datafield[@tag='856']">
					<xsl:choose>
						<xsl:when test="subfield[@code='3']='Documento Completo'">
							<dcvalue element="identifier" qualifier="url" language="pt_BR"><xsl:value-of select="subfield[@code='u']" /></dcvalue>
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
				<xsl:for-each select="datafield[@tag='856']">
					<xsl:choose>
						<xsl:when test="subfield[@code='3']='Documento completo'">
							<dcvalue element="identifier" qualifier="url" language="pt_BR"><xsl:value-of select="subfield[@code='u']" /></dcvalue>
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
				<xsl:choose>
						<xsl:when test="datafield[@tag='024']/subfield[@code='2']='DOI'">
							<dcvalue element="identifier" qualifier="doi" language="pt_BR"><xsl:value-of select="datafield[@tag='024']/subfield[@code='a']" /></dcvalue>
						</xsl:when>
				</xsl:choose>
				<xsl:for-each select="datafield[@tag='022']/subfield[@code='a']">
					<dcvalue element="identifier" qualifier="issn" language="pt_BR"><xsl:value-of select="." /></dcvalue>
				</xsl:for-each>
			</dublin_core>
			<dublin_core schema="usp">
				<xsl:for-each select="datafield[@tag='946']">
					<dcvalue element="autor" qualifier="" language="pt_BR"><xsl:value-of select="subfield[@code='a']" />::<xsl:value-of select="subfield[@code='b']" /></dcvalue>
					<dcvalue element="mapeamento" qualifier="" language="pt_BR"><xsl:value-of select="subfield[@code='e']" />::<xsl:value-of select="subfield[@code='g']" /></dcvalue>
				</xsl:for-each>
				<xsl:if test="datafield[@tag='100']/subfield[@code='8']">
					<dcvalue element="autor" qualifier="externo" language="pt_BR"><xsl:value-of select="datafield[@tag='100']/subfield[@code='a']" />; <xsl:value-of select="datafield[@tag='100']/subfield[@code='8']" /></dcvalue>
				</xsl:if>
				<xsl:for-each select="datafield[@tag='700']">
					<xsl:if test="subfield[@code='8']">
						<dcvalue element="autor" qualifier="externo" language="pt_BR"><xsl:value-of select="subfield[@code='a']" />; <xsl:value-of select="subfield[@code='8']" /></dcvalue>
					</xsl:if>
				</xsl:for-each>
				<dcvalue element="origem" qualifier="none" language="pt_BR">DEDALUS</dcvalue>
				<dcvalue element="internacionalizacao" qualifier="none" language="pt_BR"><xsl:value-of select="datafield[@tag='945']/subfield[@code='l']" /></dcvalue>
				<xsl:choose>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='bl'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Brasil</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='xxu'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Estados Unidos</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='xxk'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Reino Unido</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='gw'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Alemanha</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='si'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Singapura</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='ne'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Países Baixos</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='ru'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Rússia</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='fr'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">França</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='sz'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Suiça</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='mx'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">México</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='xxc'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Canadá</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='ja'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Japão</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='enk'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Inglaterra</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='ii'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Índia</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='my'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Malásia</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='pl'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Polônia</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='it'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Itália</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='ie'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Irlanda</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='ua'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Egito</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='xr'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">República Checa</dcvalue></xsl:when>
					<xsl:when test="datafield[@tag='044']/subfield[@code='a']='xx'"><dcvalue element="publisher" qualifier="pais" language="pt_BR">Sem local, desconhecido ou não determinado</dcvalue></xsl:when>
					<xsl:otherwise><dcvalue element="publisher" qualifier="pais" language="pt_BR"><xsl:value-of select="datafield[@tag='044']/subfield[@code='a']" /></dcvalue></xsl:otherwise>
				</xsl:choose>
				<xsl:for-each select="datafield[@tag='510']">
					<xsl:if test="subfield[@code='a']">
					<dcvalue element="indexacao" qualifier="" language="pt_BR">
						<xsl:analyze-string select="subfield[@code='a']" regex="(Indexado no )(.*)">
							<xsl:matching-substring>
								<xsl:value-of select="regex-group(2)"/>
							</xsl:matching-substring>
							<xsl:non-matching-substring>
								<xsl:value-of select="."/>
							</xsl:non-matching-substring>
						</xsl:analyze-string>
					</dcvalue>
					</xsl:if>
				</xsl:for-each>
				<xsl:if test="datafield[@tag='100']/subfield[@code='8']">
					<dcvalue element="colaboracao" qualifier="externa" language="pt_BR"><xsl:value-of select="datafield[@tag='100']/subfield[@code='8']" /></dcvalue>
				</xsl:if>
				<xsl:for-each select="datafield[@tag='700']">
					<xsl:if test="subfield[@code='8']">
						<dcvalue element="colaboracao" qualifier="externa" language="pt_BR"><xsl:value-of select="subfield[@code='8']" /></dcvalue>
					</xsl:if>
				</xsl:for-each>
				<xsl:for-each select="datafield[@tag='590']/subfield[@code='n']">
					<dcvalue element="grupopesquisa" qualifier="" language="pt_BR"><xsl:value-of select="." /></dcvalue>
				</xsl:for-each>
				<dcvalue element="fatordeimpacto" qualifier="" language="pt_BR"><xsl:value-of select="datafield[@tag='590']/subfield[@code='m']" /></dcvalue>
			</dublin_core>
		</record>
</xsl:template>
</xsl:stylesheet>
