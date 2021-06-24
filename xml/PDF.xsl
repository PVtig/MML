<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0"
    xpath-default-namespace="OlRu">

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
                <fo:simple-page-master master-name="A4-portrait" page-height="297mm" page-width="210mm" margin="1cm">
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


            <fo:page-sequence master-reference="rest" font-family="Arial">

                <fo:flow flow-name="xsl-region-body">

                    <fo:block break-before="page" font-weight="bold" font-size="30px" space-after="1cm" text-align="center">
                            Obsah
                    </fo:block>

                    <fo:table table-layout="fixed" width="100%" border-collapse="separate" border="0.06cm solid black" margin-top="50px">
                        <fo:table-column column-width="20%"/>
                        <fo:table-column column-width="20%"/>
                        <fo:table-column column-width="20%"/>
                        <fo:table-column column-width="40%" />


                        <fo:table-body >
                            <fo:table-row border="0.03cm solid black" margin-left="100px">

                                <fo:table-cell  >

                                    <xsl:for-each select="list/band">
                                        <fo:block text-align="center" margin-top="10px">
                                            <xsl:value-of select="title"/>
                                        </fo:block>
                                    </xsl:for-each>

                                </fo:table-cell>

                                <fo:table-cell>

                                    <xsl:for-each select="list/band">
                                        <fo:block text-align="center" margin-top="10px">
                                            <xsl:value-of select="genres"/>
                                        </fo:block>
                                    </xsl:for-each>

                                </fo:table-cell>

                                <fo:table-cell >

                                    <xsl:for-each select="list/band">
                                        <fo:block text-align="center" margin-top="10px">
                                            <xsl:value-of select="country"/>
                                        </fo:block>
                                    </xsl:for-each>

                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>



                </fo:flow>
            </fo:page-sequence>

            <fo:page-sequence master-reference="A4-portrait">
                <fo:flow flow-name="xsl-region-body">

                    <xsl:apply-templates select="list/band"/>

                </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>

    <xsl:template match="list/band">

        <fo:block font-size="30px" font-weight="bold" space-before="1cm" text-align="center" margin-top="50px">
            <xsl:value-of select="title"/>
        </fo:block>

        <fo:block font-size="20px" font-weight="bold" space-before="1cm" text-align="center">
            <xsl:value-of select="country"/>
        </fo:block>

        <fo:block font-size="20px" font-weight="bold" space-before="1cm" text-align="center">
            <xsl:value-of select="genres"/>
        </fo:block>

        <fo:block margin-top="40px">
            <xsl:variable name="path">
                <xsl:value-of select="logo"/>
            </xsl:variable>

            <fo:external-graphic src="./img/{$path}" float="left" content-height="scale-to-fit" height="2.00in" content-width="4.00in" scaling="non-uniform"/>

        </fo:block>




        <fo:block margin-top="20px">
            <xsl:value-of select="briefSummary"/>
        </fo:block>

        <fo:table table-layout="fixed" width="100%" border-collapse="separate" border="0.06cm solid black" margin-top="50px">
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="20%"/>
            <fo:table-body>
                <xsl:apply-templates select="structure/artist"/>
            </fo:table-body>
        </fo:table>

        <fo:table table-layout="fixed" width="100%" border-collapse="separate" border="0.06cm solid black" margin-top="50px">
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="30%"/>
            <fo:table-column column-width="30%"/>
            <fo:table-body>
                <xsl:apply-templates select="discography/album"/>
            </fo:table-body>
        </fo:table>

    </xsl:template>

    <xsl:template match="structure/artist">
        <fo:table-row border="0.03cm solid black">
            <fo:table-cell border="0.03cm solid black">
                <fo:block  >
                    <xsl:value-of select="name"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="country"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="dateOfBirth" />
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="singingVoice"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="instruments"/>
                </fo:block>
            </fo:table-cell>

        </fo:table-row>

    </xsl:template>

    <xsl:template match="discography/album">
        <fo:table-row>
            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="albumName"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="year"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black">
                <fo:block >
                    <xsl:value-of select="label"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black" text-align="center">
                <fo:block >
                    <xsl:value-of select="songs"/>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>

    </xsl:template>

    <xsl:template match="list">
        <fo:table-row>
            <fo:table-cell border="0.03cm solid black">
                <fo:block font-size="30px" font-weight="bold" space-before="1cm" text-align="center">
                    <xsl:value-of select="title"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black">
                <fo:block font-size="20px" font-weight="bold" space-before="1cm" text-align="center">
                    <xsl:value-of select="country"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell border="0.03cm solid black">
                <fo:block font-size="20px" font-weight="bold" space-before="1cm" text-align="center">
                    <xsl:value-of select="genres"/>
                </fo:block>
            </fo:table-cell>

        </fo:table-row>

    </xsl:template>

</xsl:stylesheet>