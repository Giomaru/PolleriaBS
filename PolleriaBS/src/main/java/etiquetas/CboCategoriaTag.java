package etiquetas;

import java.util.ArrayList;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;
import mantenimiento.GestionCategoria;
import model.Categoria;


public class CboCategoriaTag extends TagSupport{
	
	@Override
	public int doStartTag() throws JspException {
		
		JspWriter out = pageContext.getOut();
		try {
			//obtener un listado de las categorias
			GestionCategoria gc = new GestionCategoria();
			ArrayList<Categoria> lista = gc.listado();
			
			//pasar el listado a las opciones del combo
			out.print("<option value='-1'>Seleccione</option>");
			
			for (Categoria c : lista) {
				out.print(
				String.format("<option value='%s'>%s</option>", c.getIdcategoria(),c.getNombreCategoria()));
				
			}
			
			
		} catch (Exception e) {
			System.out.println("Error en CboCategoriaTag");
		}
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		
		return EVAL_PAGE;
	}
	

}
