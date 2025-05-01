<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/Transform">
<xsl:template match="/class">
    <html>
        <body>
            <h1>Student Result</h1>
            <table border="1">
                <tr>
                    <th>Name</th>
                    <th>Roll no.</th>
                    <th>Marks</th>
                    <th>Result</th>
                </tr>

                <xsl:for-each select="student">
                <tr>
                    <td><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="roll"/></td>
                    <td>
                        <xsl:choose>
                        <xsl:when test="marks &gt; = 40"> Pass </xsl:when>
                        <xsl:otherwise> Fail </xsl:otherwise>
                        </xsl:choose>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
