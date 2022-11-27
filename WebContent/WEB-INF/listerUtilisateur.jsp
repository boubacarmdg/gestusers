
<%@include file="header.jsp" %>

 <main class="bg-white-300 flex-1 p-3 overflow-hidden">

      
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">

                        <!-- card -->

                        <div class="rounded overflow-hidden shadow bg-white mx-2 w-full">
                            <div class="px-6 py-2 border-b border-light-grey">
                                <div class="font-bold text-xl">Liste des utilisateurs</div>
                            </div>
                          
                            <c:choose>
								<c:when test="${ empty utilisateurs }">
								<p class="p-3 font-bold text-md"> La liste des utilisateurs est vide !</p>
			
								</c:when>
								<c:otherwise>
                            <div class="table-responsive">
                                <table class="table text-grey-darkest">
                                    <thead class="bg-grey-dark text-white text-normal">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Prénom</th>
                                        <th scope="col">Nom</th>
                                        <th scope="col">Login</th>
                                        <th scope="col">Password</th>
                                        <th scope="col">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody class="pt-2">
                                     
                                   	<c:forEach var="utilisateur" items="${ utilisateurs }">
					<tr class="p-2">
						<td><c:out value="${ utilisateur.id }"/> </td>
						<td><c:out value="${ utilisateur.prenom }"/> </td>
						<td><c:out value="${ utilisateur.nom }"/> </td>
						<td><c:out value="${ utilisateur.login }"/> </td>
						<td><c:out value="${ utilisateur.password }"/> </td>
						<td><a class="bg-teal-500 text-white p-2 rounded-full hover:bg-teal-600" href="update?id=${ utilisateur.id } ">Modifier</a>
						<a class="bg-red-500 text-white mt-4 p-2 rounded-full hover:bg-red-600" href="delete?id=${ utilisateur.id } " onclick="return confirm('Etes-vous sûr ?')">Supprimer</a>
						</td>
					</tr>
				</c:forEach>

                                    </tbody>
                                </table>
                                </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                     

                    </div>
                    

                    
            </main>
            
  