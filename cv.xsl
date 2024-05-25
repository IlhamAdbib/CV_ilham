<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:cv="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>CV Ilham ADBIB</title>
                <style>
                    
                    @import url("https://cdn.jsdelivr.net/npm/flag-icon-css/css/flag-icon.min.css");
                    @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css");
                        
                </style>
                <link rel="stylesheet" href="styles.css"/>
                <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
            </head>
            <body>
                
                <div class="resume">
                    <div class="resume_left">
                        <div class="resume_profile">
                            <img src="pic1.jpg"  alt="profile image"/>
                        </div>
                        <div class="resume_content">
                            <div class="resume_item resume_info">
                                <div class="title">
                                    <p class="bold">Contact</p>
                                </div>
                                <ul>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-home"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/adresse"/> <br />  <xsl:value-of select="cv/entete/nationalite"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-code-branch"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/git"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/mail"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-phone"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/telephone"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fab fa-linkedin"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/linkedin"/>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="resume_item resume_skills">
                                <div class="title">
                                    <p class="bold">Compétences</p>
                                </div>
                                <ul>
                                    <xsl:for-each select="cv/competences/competence">
                                        <li>
                                            <div class="skill_name ">
                                                <xsl:value-of select="titre"/>
                                            </div>
                                            <div class="skill_description">
                                                <xsl:value-of select="description"/>
                                            </div>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            
                            
                            
                            <div class="resume_item resume_languages">
                                <div class="title">
                                    <p class="bold">LANGUES</p>
                                </div>
                                <ul>
                                    <xsl:for-each select="cv/langues/langue">
                                        <li>
                                            <div class="data">
                                                <p class="semi-bold">
                                                    <xsl:value-of select="intitule"/>
                                                    <xsl:text>: </xsl:text>
                                                    <xsl:value-of select="niveau"/>
                                                </p>
                                            </div>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                    
                    
                    
                    
                    <div class="resume_right">
                        <div class="resume_item resume_about">
                            <div class="title">
                                <p class="bold"><xsl:value-of select="cv/entete/nom"/></p>
                            </div>
                            <p class="about"><xsl:value-of select="cv/entete/about"/></p>
                        </div>
                      
                        <div class="resume_item resume_education">
                            <div class="title">
                                <p class="bold">Education</p>
                            </div>
                            <ul>
                                <xsl:for-each select="cv/formations/diplome">
                                    <li>
                                        <div class="date"><xsl:value-of select="annee"/></div> 
                                        <div class="info">
                                            <p><xsl:value-of select="intitule"/></p>
                                            <p class="semi-bold"><xsl:value-of select="branche"/></p> 
                                            
                                        </div>
                                    </li>
                                    
                                </xsl:for-each>
                            </ul>
                        </div>
                        <div class="resume_item resume_work">
                            <div class="title">
                                <p class="bold">EXPÉRIENCE PROFESSIONNELLE</p>
                            </div>
                            <xsl:for-each select="cv/stages/stage">
                                <ul>
                                    <li>
                                        <div class="date"><xsl:value-of select="date"/></div> 
                                        <div class="info">
                                            <p class="semi-bold"><xsl:value-of select="titre"/>.</p> 
                                            <p><xsl:value-of select="description"/></p>
                                        </div>
                                    </li>
                                </ul>
                            </xsl:for-each>
                            
                        </div>
                        <div class="resume_item resume_projects">
                            <div class="title">
                                <p class="bold">PROJETS</p>
                            </div>
                            <ul>
                                <xsl:for-each select="cv/projects/project">
                                    <li>
                                        <div class="date"><xsl:value-of select="datee"/></div>
                                        <div class="info">
                                            <p class="semi-bold"><xsl:value-of select="title"/>.</p>
                                            <p><xsl:value-of select="contenu"/></p>
                                        </div>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                        
                        
                        
                    </div>
                </div>
                
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>