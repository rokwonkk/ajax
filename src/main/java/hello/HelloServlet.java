package hello;

import dto.Human;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;

import java.io.IOException;
import java.util.*;

// library가 필요함.
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("HttpServlet doGet");

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        System.out.println("id : " + id + " pw : " + pw);

        // DB에 접근 ( 가정 )

        // client에 전송
        JSONObject jsonObj = new JSONObject();

        // 1.String
        	String str = "안녕하세요";
        	jsonObj.put("str", str);	// json 생성

        // 2.list
	/*	List<Human> list = new ArrayList<Human>();
		list.add(new Human("aaa", "홍길동", "부산시"));
		list.add(new Human("bbb", "성춘향", "남원시"));
		list.add(new Human("ccc", "일지매", "서울시"));
		jsonObj.put("list", list);*/

        // 3. map
/*        String str = "하이";

        List<Human> list = new ArrayList<>();
        list.add(new Human("aaa", "홍길동", "부산시"));
        list.add(new Human("bbb", "성춘향", "남원시"));
        list.add(new Human("ccc", "일지매", "강릉시"));

        // HashMap 생성
        Map<String, Object> map = new HashMap<>();
        map.put("str", str);
        map.put("list", list);

        jsonObj.put("map", map);*/

        response.setContentType("application/x-json; charset=UTF-8");
        response.getWriter().print(jsonObj);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
