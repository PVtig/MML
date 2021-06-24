<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:template match="/">

        <html lang="en">

            <head>

                <title>DocHTML</title>

                <style type="text/css">
                    body { margin: 0; }
                    #footer {
                        position: fixed; /* Фиксированное положение */
                        left: 0; bottom: 0; /* Левый нижний угол */
                        padding: 10px; /* Поля вокруг текста */
                        background: #39b54a; /* Цвет фона */
                        color: #fff; /* Цвет текста */
                        width: 100%; /* Ширина слоя */
                        text-align: center
                       }
                    #header {
                     height: 80px; /* Высота слоя */
                     background: #FEDFC0; border-bottom: 2px solid #7B5427;
                     text-align: center
                    }
                    #link {
                        margin: 0, auto;
                        text-align: center;
                    }
                    #title {
                        margin: 0, auto;
                        padding-top: 50px;
                        text-align: center;
                    }
                    #text {
                        margin: 0, auto;
                        width:80%;
                        padding-top: 10px;
                        text-align: center;
                        padding-left: 10%;
                    }
                    #header h1 { padding: 20px; margin: 0; }
                    
                </style>
            </head>

            <body>
                <xsl:for-each select="info">

                    <div id="header">
                        <h1 >
                            <xsl:value-of select="title" text-align="center"/>
                        </h1>
                    </div>

                    <div id="title">
                        <h4>
                            <xsl:value-of select="preface/title"/>
                        </h4>
                    </div>
                    <div id="text">
                        <p>
                            <xsl:value-of select="preface/para"/>
                        </p>
                    </div>
                    

                </xsl:for-each>

                <xsl:for-each select="info/chapter">
                <div id="title">
                    <h4>
                        <xsl:value-of select="title"/>
                    </h4>
                </div>
                <div id="text">
                    <p>
                        <xsl:value-of select="text"/>
                    </p>
                </div>
                    <xsl:variable name="code">
                        <xsl:value-of select="code"/>
                    </xsl:variable>

                    <div id="link">
                        <a href="{$code}">View</a>
                    </div>

                </xsl:for-each>
                <div id="footer">
                    <xsl:value-of select="info/author/firstname"/>
_
                    <xsl:value-of select="info/author/surname"/>
                    
                        _<xsl:value-of select="author/email"/>

                </div>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>