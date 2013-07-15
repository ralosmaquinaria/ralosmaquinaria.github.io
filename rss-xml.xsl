<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:atom="http://www.w3.org/2005/Atom"
>
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
      <html>
        <head>
          <title><xsl:value-of select="rss/channel/title"/></title>
          <!--<style type="text/css" media="screen"> @import "rss-xml-xsl.css?v=001";</style>-->
					<style type="text/css">
						@import url(rss-xml-xsl.css);
          </style>
        </head>
        <body>
          <div id="mainContainer">
            <div id="fixedMenuBgUl"></div>
            <div id="mCFixedToTop">
              <div id="mCFixedMenu" style="position: fixed;">
                  <div id="mCFixedMenuButtons">
                    <div id="Button01"><a href="index.htm" target="_top">Inicio</a></div>
                    <div id="Button02"><a href="mainFrameAboutUs.htm" target="_top">Conócenos</a></div>
                    <div id="Button03"><a href="mainFrameContact.htm" target="_top">Contactar</a></div>
                  </div>
              </div>
            </div>
            
            <div id="mCFixedToLeft">
              <div id="mCFixedLeftMenu">
                  <div id="mCFixedLeftMenuButtons">
                    <div id="Button01"><a href="maquinaria-Ultimas.htm" target="mainFrame" title="Últimas Novedades"><img src="assets/leftMenuButton1_Ultimas.gif" alt="Últimas Novedades" name="ultimas" width="72" height="29" border="0" /></a></div>
                    <div id="Button02"><a href="maquinaria-Ocasion.htm" target="mainFrame" title="Maquinaria de Ocasión"><img src="assets/leftMenuButton2_Ocasion.gif" alt="Maquinaria de Ocasión" name="maquinariaUsada" width="72" height="29" border="0" /></a></div>
                    <div id="Button03"><a href="maquinaria-Nueva.htm" target="mainFrame" title="Maquinaria Nueva"><img src="assets/leftMenuButton3_Nuevas.gif" alt="Maquinaria Nueva" name="maquinariaNueva" width="72" height="29" border="0" /></a></div>
                    <div id="Button04"><a href="sitemap.xml" target="mainFrame" title="Sitemap"><img src="assets/leftMenuButton4_Sitemap.gif" alt="Sitemap" name="sitemap" width="72" height="29" border="0" /></a></div>
                  </div>
              </div>
						</div>
            <!--style="border: 1px solid #000;"-->
            <div id="mainContent">
              <div class="divider4" style="min-height: 20px; position: relative; top: 0px;"></div>
              <div id="mainLogo"><a href="index.htm" target="_parent" title="Ir al Inicio"><img src="assets/logoRalos.gif" alt="Ir al Inicio" name="logoRalos" width="324" height="102" border="0" /></a></div>
              <div class="divider1"></div>
          
              <h1 style="text-decoration: none">RaLoS MAQUINARIA, Últimas Máquinas NUEVAS y USADAS para la Fabricación de Calzado</h1>
             
              <div class="divider1"></div>
                <p><span class="boldText">BIENVENIDO</span> al listado de novedades <span class="boldText">RaLoS</span>, desde donde podrás mantenerte informado acerca los últimos añadidos que, tanto en maquinaria nueva como usada, se van incorporando a nuestra página web. Recuerda que, si así lo prefieres, también puedes <a href="http://www.ralosmaquinaria.com/rss.xml" title="¡Suscríbete a las Novedades RaLoS!" target="_blank" class="boldText">SUSCRÍBETE</a> a nuestro canal de novedades para así recibir las notificaciones automáticamente.</p>
              <div class="divider4"></div>

              <div id="productContainer">
              
                <ul>
                	<li>
                    <xsl:for-each select="rss/channel/item">
                      <h2 style="text-decoration: none; margin-bottom: 12px"><a href="{link}" rel="bookmark"><xsl:value-of select="title"/></a></h2>
											<div class="liContainer">
                      
                        <!--<xsl:for-each select="//enclosure[starts-with(@type, 'image/jpeg')]">
                          <xsl:value-of select="@href"/>
                        </xsl:for-each>-->
                         
                        <xsl:if test="enclosure/@type = 'image/jpeg'">
                                <xsl:element name="img">
                                        <xsl:attribute name="src">
                                                <xsl:value-of select="enclosure/@url"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="style">float: none; heigt: 50%;</xsl:attribute>
                                </xsl:element>
                                <xsl:element name="br"/>
                        </xsl:if>
                        
                        <xsl:value-of select="description"/>
											</div>
                    </xsl:for-each>
                    <!--<xsl:apply-templates select="//atom:entry"/>-->
   								</li>
                </ul>
               
							</div>
						</div>
          
					</div>
          
          <div id="mainLeftShadow"></div>
          <div id="mainRightShadow"></div>
        </body>
      </html>
    </xsl:template>
  <!--<xsl:template match="atom:entry">
    <li>
			<h2 style="text-decoration: none; margin-bottom: 12px"><a><xsl:attribute name="href"><xsl:value-of select="atom:link/@href"/></xsl:attribute>
  <xsl:value-of select="atom:title/text()"/></a></h2>
         
			<div class="liContainer">
				<xsl:value-of select="atom:content" disable-output-escaping="yes"/>
			</div>
    </li>
  </xsl:template>-->
</xsl:stylesheet>
