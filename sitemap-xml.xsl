<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
	xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
      <title>RaLoS MAQUINARIA - XML Sitemap</title>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <style type="text/css">
				html {
					width: 100%;
					height: 100%;
					margin: 0px;
					padding: 0px;
					_overflow-x: hidden;
					
					scrollbar-face-color: ##999999;
				}
			
				body {
					/*font-family: Helvetica, Arial, sans-serif;
					font-size: 75%;
					color: #333;
					background-color: #eeeeee;*/
					
					font-family: Helvetica, sans-serif, Arial, Verdana, Tahoma;
					font-size: 12px;
					color: #333;
					text-align: center;
					line-height: 1.2;
					margin: 0px;
					padding: 0px;
					width: 100%;
					height: 100%;
					
					background-color: #eeeeee;
					background-attachment: fixed;
					background-repeat: repeat-y;
					background-position: left top;
					background-image: url(assets/logo001Semitransp.gif);
					
					background-attachment: fixed;
					background-image: url(assets/logo001Semitransp.png); /*Distancia desde arriba hasta la flecha: 874px*/
					_background-image: url(assets/logo001Semitransp.gif);
					background-position: left -100px;
					background-repeat: no-repeat;

				}
				table {
					border: none;
					border-collapse: collapse;
				}
				
				.sitemapMenu tr.odd { background-color: #f7f7f7 }
				.sitemapmenu tbody tr:hover { background-color: #ddf4df }
				.sitemapMenu tbody tr:hover td, .sitemap tbody tr:hover td a { color: #060 }
				
				.sitemapContent tr.odd { background-color: #f7f7f7 }
				.sitemapContent tbody tr:hover { background-color: #ddf4df }
				.sitemapContent tbody tr:hover td, .sitemap tbody tr:hover td a { color: #060 }
				
				a { color: #333;  text-decoration: none }
				.intro p { color:#060 }
				a:hover {  text-decoration: underline; 	color:#690 }
				table { font-size:1.1em; width:100% }
				th { font-size:1.1em; text-align:center; padding:5px }
				thead th { background-color:#ccffcc; border-right: 1px solid #99cc99; border-bottom: 1px solid #99cc99; border-top: 1px solid #99cc99 }
				tbody tr { border-bottom: 1px dotted #CCC; padding:5px 0 }
			</style>
		</head>

		<body>
      <div id="content">
      	<div style="height: 18px; width: 50%; margin: 0 auto; padding: 0; visibility: hidden;"></div>
        
        <h1>RaLoS MAQUINARIA - XML Sitemap</h1>

        <table class="sitemapMenu" cellpadding="4">
          <thead>
            <tr>
            	<xsl:for-each select="sitemap:urlset/sitemap:url">
                <xsl:variable name="itemURL">
                  <xsl:value-of select="sitemap:loc"/>
                </xsl:variable>
              
                <xsl:if test="position() &lt; 8 ">
                	<th>
                    <xsl:if test="position() = 1 ">
                      <a href="{$itemURL}" target="_top">INICIO</a>
                    </xsl:if>
                    
                    <xsl:if test="position() = 2 ">
                      <a href="{$itemURL}">PÁG. PRINCIPAL</a>
                    </xsl:if>
                        
                    <xsl:if test="position() = 3 ">
                      <a href="{$itemURL}">CONÓCENOS</a>
                    </xsl:if>
                    
                    <xsl:if test="position() = 4 ">
                      <a href="{$itemURL}">CONTACTAR</a>
                    </xsl:if>
                  
                    <xsl:if test="position() = 5 ">
                      <a href="{$itemURL}" style="text-decoration:blink">NOVEDADES</a>
                    </xsl:if>
                  
                    <xsl:if test="position() = 6 ">
                      <a href="{$itemURL}">MAQ. USADA</a>
                    </xsl:if>
                    
                    <xsl:if test="position() = 7 ">
                      <a href="{$itemURL}">MAQ. NUEVA</a>
                    </xsl:if>
                  
									</th>
                </xsl:if>
                
            </xsl:for-each>
            </tr>
          </thead>
          
          <tbody>
            <tr>
              <td colspan="7" align="center" height="36">
         				<!--<h2>LISTADO COMPLETO DE MAQUINARIA</h2>-->
              </td>
            </tr>
          </tbody>
        </table>
         
        <table class="sitemapContent" cellpadding="4">
          <thead>
            <tr>
              <th width="100%">LISTADO COMPLETO DE MAQUINAS (A~Z)</th>
              <!--<th width="50%">URL DE LA PÁGINA</th>-->
            </tr>
          </thead>
          
          <tbody>
            <xsl:for-each select="sitemap:urlset/sitemap:url">
            
              <xsl:variable name="itemURL">
                <xsl:value-of select="sitemap:loc"/>
              </xsl:variable>
              
                <!--<xsl:if test="position() &lt; 8 ">
                    <a href="{$itemURL}"><b><xsl:value-of select="sitemap:loc"/></b></a>
                </xsl:if>-->
                
                <!--<xsl:if test="position() = 8 ">
                  <center><b>LISTADO COMPLETO DE MÁQUINARIA</b></center>
                </xsl:if>-->
                
                <xsl:if test="position() &gt; 8 ">
                  <tr>
                    <td align="center">
                      <xsl:if test="image:image != 'false'">
                        <xsl:for-each select="image:image">
                          <a href="{$itemURL}"><b><xsl:value-of select="image:title"/></b></a>
                        </xsl:for-each>
  
                        <!--<ul>
                          <xsl:apply-templates select="image:image">
                            <xsl:sort select="image:title" order="ascending"/>
                          </xsl:apply-templates>
                        </ul>-->
                      </xsl:if>
                    </td>
                    
                    <!--<td>
                      <xsl:value-of select="$itemURL"/>
                    </td>-->
                  </tr>
                </xsl:if>
                
            </xsl:for-each>
          </tbody>
        </table>
        
        <div class="intro">
          <p>El sitemap contiene actuamente: <strong><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></strong> URLs.</p>
        </div>
        
      	<div style="height: 56px; width: 50%; margin: 0 auto; padding: 0; visibility: hidden;"></div>
   	 </div>
   </body>
	</html>
  </xsl:template>
</xsl:stylesheet>
