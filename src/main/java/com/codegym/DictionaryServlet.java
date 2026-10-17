
package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/translate")
public class DictionaryServlet extends HttpServlet {

    private final Map<String, String> dictionary = new HashMap<>();

    @Override
    public void init() {
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển sách");
        dictionary.put("computer", "Máy tính");
        dictionary.put("student", "Sinh viên");
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String word = request.getParameter("word");
        String key = word == null ? "" : word.trim().toLowerCase();

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang='vi'>");
            out.println("<head><meta charset='UTF-8'>");
            out.println("<title>Kết quả tra cứu</title></head>");
            out.println("<body style='font-family:Arial;text-align:center;margin-top:80px'>");
            out.println("<h2>Từ điển Anh - Việt</h2>");

            if (key.isEmpty()) {
                out.println("<p>Vui lòng nhập từ cần tìm.</p>");
            } else if (dictionary.containsKey(key)) {
                out.println("<p>Từ tiếng Anh: " + word + "</p>");
                out.println("<p>Nghĩa tiếng Việt: "
                        + dictionary.get(key) + "</p>");
            } else {
                out.println("<p>Không tìm thấy từ: " + word + "</p>");
            }

            out.println("<p><a href='index.jsp'>Quay lại</a></p>");
            out.println("</body></html>");
        }
    }
}
