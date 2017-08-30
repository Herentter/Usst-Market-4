package cn.usst.market.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.usst.market.annotation.MethodLog;
import cn.usst.market.po.Chat;
import cn.usst.market.po.ChatVo;
import cn.usst.market.po.Company;
import cn.usst.market.po.Page;
import cn.usst.market.po.Pager;
import cn.usst.market.po.Teacher;
import cn.usst.market.service.ChatService;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.TeacherService;

@Controller
public class ChatController {
	@Autowired
	private ChatService chatService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("/chatMessage.do")
	@MethodLog(description="发送消息操作")
	public @ResponseBody Chat insertMessage(HttpServletRequest request,Chat chat){
		Teacher tea = (Teacher) request.getSession().getAttribute("teacher");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		chat.setSendDate(sdf.format(date));
		chat.setSender(tea.getName());
		chat.setCompetitionId(1);
		chatService.insertMessage(chat);
		System.out.println();
		return chat;
	}
	
	@RequestMapping("/findCompany.do")
	public @ResponseBody List<Company> findCompanyName(){
		List<Company> companyList = new ArrayList<Company>();
		companyList = companyService.showCompanyByCompetitionId(1);
		return companyList;
	}
	
	/*@RequestMapping("/chatRecord.do")
	public @ResponseBody List<Chat> selectAllChatByCompetitionId(){
		List<Chat> chatList = new ArrayList<Chat>();
		chatList = chatService.selectAllChatByCompetitionId(1);
		return chatList;
	}*/
	
	@RequestMapping("/chatRecord.do")
	@MethodLog(description="查询聊天记录操作")
	public @ResponseBody Pager selectChatByPage(HttpServletRequest request){
		String pageNow=request.getParameter("pageNowChat");
		Page page = null;
		List<Chat> chatList = new ArrayList<Chat>();
		Chat chat = new Chat();
		chat.setCompetitionId(1);
		ChatVo chatVo = new ChatVo();
		chatVo.setChat(chat);
		int count = chatService.getChatCount(1);
		
		if(pageNow != null&&!pageNow.equals("")){
			page = new Page(count, Integer.parseInt(pageNow));
			chatVo.setStartPos(page.getStartPos());
			chatVo.setPageSize(10);
			chatList = chatService.selectChatByPage(chatVo);
	    } else {  
	        page = new Page(count, 1); 
	        chatVo.setStartPos(page.getStartPos());
	        chatVo.setPageSize(10);
	        chatList = chatService.selectChatByPage(chatVo);
	    }  
		Pager pager = new Pager();
		pager.setCurrentPage(page.getPageNow());
		pager.setTotalRecord(count);
		pager.setDataList(chatList);
		return pager;
	}
}
