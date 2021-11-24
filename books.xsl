<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>

<style>

    body {
      background-color: silver;
    }

    h2{
      text-align: center;
      color: #1E90FF;
      font-family: 'Crimson Text', serif;
    }

    #customers {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      border: 2px solid black;
      width: 100%;
    }

    #customers td, #customers th {
      border: 1px solid #ddd;
      padding: 8px;
    }

    #customers th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: black;
      color: #1E90FF;
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    }

    #customers tr:nth-child(even){background-color: #f2f2f2;   font-family: 'Crimson Text', serif;;}

    #customers tr:nth-child(odd){background-color: #DCDCDC;   font-family: 'Crimson Text', serif; }

    #customers tr:hover {background-color: 	#E0FFFF;}


</style>
  <link href="https://fonts.googleapis.com/css?family=Crimson+Text|Graduate|Lobster|Quicksand" rel="stylesheet"/>
</head>
  <body>
  <h2>My Book Collection</h2>
  <table id="customers" >
    <tr >
      <th>author</th>
      <th>title</th>
      <th>genre</th>
      <th>price</th>
      <th>publish_date</th>
      <th>description</th>
    </tr>
        <xsl:for-each select="catalog/book[title]">
    <tr>
      <td><xsl:value-of select="author"/></td>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="genre"/></td>
      <td><xsl:value-of select="price"/></td>
      <td><xsl:value-of select="publish_date"/></td>
      <td><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>