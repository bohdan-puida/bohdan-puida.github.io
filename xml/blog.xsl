<?xml version="1.0" encoding="UTF-8" ?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <body style='font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14pt;background-color: #e5ebef;'>
    <section style="background-color:#fff;max-width: 760px;margin: 40pt auto; padding: 20pt;">
      <h1 style="text-align: center;">Blog</h1>

      <xsl:for-each select="blog/post">
        <hr/>
        <article>
          <h2><xsl:value-of select="title"/></h2>
          <p>
            <span style="font-weight: bold;">
              <xsl:value-of select="author/full_name"/>
            </span>
            <span style="color: #657786;">
              <em style="margin: 10px;">
                <xsl:value-of select="author/email"/>
              </em>

              <xsl:value-of select="date"/>
              <span style="margin: 5px;"/>

              <xsl:value-of select="time"/>
            </span>
          </p>
          <p>
            <xsl:value-of select="body"/>
          </p>

          <section>

            <xsl:for-each select='file[@type="image"]'>
              <figure style="max-width: 30%;max-height:30%;margin:1.5%;display: inline-block;">
                <img style="max-width: 100%;max-height:100%;">

                  <xsl:attribute name="src"><xsl:value-of select="./@src"/></xsl:attribute>
                </img>
              </figure>
            </xsl:for-each>
          </section>

          <xsl:for-each select="tag">
            <span style="background: #0e9bc1;border-radius: 5px;padding: 5px;margin-right: 5px;color: white;">
              #<xsl:value-of select="."/>
            </span>
          </xsl:for-each>
          <section style="margin-left: 10px;">
            <p style="font-weight: bold;color: #123fa7;">Comments:</p>

            <xsl:for-each select="comment">
              <p>
                <span style="font-weight: bold;">
                  <xsl:value-of select="author/full_name"/>
                </span>
                <span style="color: #657786;">
                  <em style="margin: 10px;">
                    <xsl:value-of select="author/email"/>
                  </em>

                  <xsl:value-of select="date"/>
                  <span style="margin: 5px;"/>

                  <xsl:value-of select="time"/>
                </span>
              </p>
              <p>
                <xsl:value-of select="body"/>
              </p>
            </xsl:for-each>
          </section>

          <br/>
        </article>
      </xsl:for-each>
    </section>
  </body>
</html>
