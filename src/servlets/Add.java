package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Utilisateur;
import dao.UtilisateurDao;
import forms.AddUserForm;

/**
 * Servlet implementation class Add
 */
@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String VUE_AJOUTER_UTILISATEUR = "/WEB-INF/ajouterUtilisateur.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(VUE_AJOUTER_UTILISATEUR);
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AddUserForm form = new AddUserForm(request);
		if(form.ajouter()) {
			response.sendRedirect("list");
		} else {
			request.setAttribute("utilisateur", form.getUtilisateur());
			request.setAttribute("errors", form.getErrors());
			request.setAttribute("status", form.isStatus());
			request.setAttribute("statusMessage", form.getStatusMessage());
			getServletContext().getRequestDispatcher(VUE_AJOUTER_UTILISATEUR).forward(request, response);
		}
		
		
	}

}
