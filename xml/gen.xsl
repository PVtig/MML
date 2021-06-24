<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="OlRu"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Collection</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"></link>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
                <style>
                    h1 {
                        padding-top: 40px;
                        text-align:center; }
                    
                </style>
            </head>
            <body>

                <xsl:for-each select="list/band[title='Marilyn Manson']">
                    <xsl:variable name="path">
                        <xsl:value-of select="logo"/>
                    </xsl:variable>

                    <div class="card bg-dark text-white">
                        <img src="./img/{$path}" class="card-img" alt="..."></img>
                        <div class="card-img-overlay">
                            <h3 class="card-title">
                                <xsl:value-of select="title"/>
                            </h3>
                            <h5 class="card-title">
                                <xsl:value-of select="genres"/>
                            </h5>
                            <p class="card-text">
                                <xsl:value-of select="briefSummary"/>
                            </p>
                            <p class="card-text">
                                <xsl:value-of select="country"/>
                            </p>
                        </div>
                    </div>


                    <div class="container row" style="margin: 0 auto;">
                        <h1>Artists</h1>
                        <div class="row row-cols-1 row-cols-md-2 g-4">

                            <xsl:for-each select="structure/artist">

                                <div class="card mb-1 " style="max-width: 540px;">
                                    <div class="row g-4">

                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <xsl:value-of select="name"/>
                                                </h5>
                                                <p class="card-text">
                                                    <xsl:value-of select="country"/>
                                                </p>
                                                <p class="card-text">
                                                    <xsl:value-of select="dateOfBirth"/>
                                                </p>
                                                <p class="card-text">
                                                    <xsl:value-of select="singingVoice"/>
                                                </p>
                                                <p class="card-text">
                                                    <xsl:value-of select="instruments"/>
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                        <h1 >Discography</h1>
                    
                        <xsl:for-each select="discography/album">
                            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                                <div class="card-header">
                                    <xsl:value-of select="year"/>
                                </div>
                                <div class="card-body">year
                                    <h4 class="card-title">
                                        <xsl:value-of select="albumName"/>
                                    </h4>
                                    <h5 class="card-text">
                                        <xsl:value-of select="label"/>
                                    </h5>
                                    <p class="card-text">
                                        <p>
                                            <xsl:value-of select="songs/."/>
                                        </p>
                                    </p>
                                </div>
                            </div>

                        </xsl:for-each>
                    </div>

                </xsl:for-each>
                <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05); margin-top:10px;">
                    © 2021 production:
                    <a class="text-reset fw-bold" href="#">Olena Rudnyeva</a>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
