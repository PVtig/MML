<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>


    <xsl:template match="/">

        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="title" page-height="297mm" page-width="210mm" margin="1cm">
                    <fo:region-body/>
                    <fo:region-before extent="1.5cm"/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="rest" page-height="297mm" page-width="210mm" margin="1cm">
                    <fo:region-body/>
                    <fo:region-before extent="1.5cm"/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="portrait" page-height="297mm" page-width="210mm" margin="1cm">
                    <fo:region-body/>
                    <fo:region-before extent="1.5cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="title">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="30px" space-before="5cm" font-weight="bold" text-align="center">
                        Semestrálna práca z predmetu 4IZ238
                    </fo:block>

                    <fo:block font-size="30px" font-weight="bold" space-before="1cm" text-align="center" margin-top="40%">
                        Katalóg CD list
                    </fo:block>
                    <fo:block font-size="30px" font-weight="bold" space-before="1cm" text-align="center">
                        Olena Rudnyeva
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
            <fo:page-sequence master-reference="rest">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="30px" space-before="5cm" font-weight="bold" text-align="center">
                        Semestrálna práca z predmetu 4IZ238
                    </fo:block>

                    <fo:block font-size="15px" font-weight="bold" space-before="1cm"  margin-top="40%" text-align="center">
                        Popis__________________________________________________________________3
                    </fo:block>
                    <fo:block font-size="15px" font-weight="bold" space-before="1cm" text-align="center">
                        Doplněk__________________________________________________________________4
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
            
            <fo:page-sequence master-reference="portrait">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:for-each select="info/chapter">
                    <fo:block font-size="30px" space-before="3.5cm" font-weight="bold" text-align="center">
                        <xsl:value-of select="title"/>
                    </fo:block>

                    <fo:block  space-before="1cm" text-align="center" margin-top="5%">
                        <xsl:value-of select="text"/>
                    </fo:block>
                    <fo:block font-size="20px" font-weight="bold" space-before="1cm" text-align="center">
                        <xsl:value-of select="code"/>
                    </fo:block>
                </xsl:for-each>
                </fo:flow>
            </fo:page-sequence>
        
        </fo:root>

    </xsl:template>
  </xsl:stylesheet>
