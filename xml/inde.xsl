<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="OlRu"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:template match="/">

        <html lang="en">
            <head>
                <title>Collection</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"></link>

            </head>
            <body>
                <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #e3f2fd;">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">My CD Collection</a>
                      
                    </div>
                </nav>
                <div class="container row " style="margin: 0 auto;">
                    <div class="row row-cols-1 row-cols-md-3 g-4">
                        <xsl:for-each select="list/band">
                            <xsl:variable name="path">
                                <xsl:value-of select="logo"/>
                            </xsl:variable>
                            <div class="col">
                                <div class="card">

                                    <img src="./img/{$path}" class="card-img-top" alt="..."></img>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <xsl:value-of select="title"/>
                                        </h5>
                                        <h6 class="card-title">
                                            <xsl:value-of select="genres"/>
                                        </h6>
                                        <p class="card-text">
                                            <xsl:value-of select="briefSummary"/>
                                        </p>
                                        <xsl:variable name="bandView">
                                            <xsl:value-of select="title"/>
                                        </xsl:variable>

                                        <a href="{$bandView}.html" class="btn btn-primary">View</a>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05); margin-top:10px;">
                    © 2021 production:
                    <a class="text-reset fw-bold" href="#">Olena Rudnyeva</a>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet> 
