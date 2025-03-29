<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Sitemap</title>
            <style>
                body { font-family: Arial, sans-serif; }
                table { border-collapse: collapse; width: 100%; }
                th, td { border: 1px solid black; padding: 8px; text-align: left; }
                th { background-color: #f2f2f2; }
            </style>
        </head>
        <body>
            <h2>Mapa do Site</h2>
            <table>
                <tr>
                    <th>URL</th>
                    <th>Última Modificação</th>
                    <th>Frequência de Mudança</th>
                    <th>Prioridade</th>
                </tr>
                <xsl:for-each select="urlset/url">
                <tr>
                    <td><xsl:value-of select="loc"/></td>
                    <td><xsl:value-of select="lastmod"/></td>
                    <td><xsl:value-of select="changefreq"/></td>
                    <td><xsl:value-of select="priority"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
