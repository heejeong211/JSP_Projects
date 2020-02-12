package edu.bit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ECommand {
	void execute(HttpServletRequest request, HttpServletResponse response);
}
