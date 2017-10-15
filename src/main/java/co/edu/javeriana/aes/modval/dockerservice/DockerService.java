package co.edu.javeriana.aes.modval.dockerservice;

import javax.ejb.Stateless;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
@Stateless
public class DockerService {
	
	@WebMethod
	public Integer sum(@WebParam(name="number1")Integer number1,@WebParam(name="number2")Integer number2) {
		return number1+number2;
	}
}
