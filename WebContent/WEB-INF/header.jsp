<%@page import="beans.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keywords" content="tailwind,tailwindcss,tailwind css,css,starter template,free template,admin templates, admin template, admin dashboard, free tailwind templates, tailwind example">
    <!-- Css -->
    <link rel="stylesheet" href="https://technext.github.io/admin/dist/styles.css">
    <link rel="stylesheet" href="https://technext.github.io/admin/dist/all.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i" rel="stylesheet">
    <title>Gestion des utilisateurs</title>
</head>

<body>
<!--Container -->
<div class="mx-auto bg-grey-400">
    <!--Screen-->
    <div class="min-h-screen flex flex-col">
        <!--Header Section Starts Here-->
        <header class="bg-nav">
            <div class="flex justify-between">
                <div class="p-1 mx-3 inline-flex items-center">
                    <i class="fas fa-bars pr-2 text-white" onclick="sidebarToggle()"></i>
                    <h1 class="text-white p-2">Gestion des utilisateurs</h1>
                </div>
   
            </div>
        </header>
        <!--/Header-->

        <div class="flex flex-1">
            <!--Sidebar-->
            <aside id="sidebar" class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block">
     <c:choose>
	    <c:when test="${sessionScope.session != null}">
                <ul class="list-reset flex flex-col">
                        <li class=" w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="list"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                          
                            Accueil
                           
                        </a>
                    </li>
                    <li class=" w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="list"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                          
                            Lister les utlisateurs
                           
                        </a>
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="add"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                         
                            Ajouter un utilisateur
                          
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="logout"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline ">
                           
                            Déconnexion
                            
                        </a>
                    </li>
                  </c:when>
                  <c:otherwise>
                    <ul class="list-reset flex flex-col">
                   <li class="w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="auth"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            
                            Connexion
                           
                        </a>
                    </li>
                  </c:otherwise> 
                  
                  </c:choose>
                  
                   
                </ul>

            </aside>
            <!--/Sidebar-->
            
    <%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenue admin dans la gestion utilisateurs</title>
<link href="<c:url value='/css/all.css'/>" rel="stylesheet">
</head>
<body>

<div class="topnav">
	<p id="title">
	Gestion utilisateurs
	</p>

    
     <c:choose>
	    <c:when test="${sessionScope.session != null}">
		  <a href="list">Lister les utilisateur</a>
		  <a href="add">Ajouter un utilisateur</a>
	      <a href="logout">Déconnexion</a>
    	</c:when>
    	<c:otherwise>
     	  <a href="auth">Connexion</a>
    	</c:otherwise>
    </c:choose>
</div> --%>