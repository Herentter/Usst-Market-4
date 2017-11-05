package cn.usst.market.controller;

import javax.servlet.http.HttpServletRequest;

import cn.usst.market.mapper.FinalCheckMapper;
import cn.usst.market.po.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class TestController {

    @Autowired
    private FinalCheckMapper finalCheckMapper;

    @RequestMapping("/testSelect.do")
    public String test(HttpServletRequest reuqest) {
        String select = reuqest.getParameter("select");
        reuqest.getSession().setAttribute("select", select);
        return "test1";
    }

    @RequestMapping("/testSalary.do")
    public String test1(HttpServletRequest reuqest) {
        String welfare = reuqest.getParameter("welfare");
        reuqest.getSession().setAttribute("welfare", welfare);
        return "testSalesSalary";
    }

    /**
     * 最终检查
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/finalCheck.do")
    public String test2(Model model, HttpServletRequest request) {
        //存储检查信息的实体类
        FinalCheck finalCheck = new FinalCheck();
        //定义一个标志变量,表示决策是否存在异常
        boolean flag = true;
        System.out.println("------------------检查开始----------------------");
        int companyId = (int) request.getSession().getAttribute("companyId");
        int quarter = Integer.parseInt(request.getParameter("quarter"));
        Company company = finalCheckMapper.selectCompanyById(companyId);
        if (company != null) {
            String name = company.getName();
            if (name == null || "".equals(name.trim().toString())) {
                finalCheck.setCompanyName("抱歉，未能找到您公司的名称，快去给您的公司起个响亮的名字吧");
                flag = false;
            }
        } else {
            flag = false;
        }

        //检查目标策略
        StrategyPojo strategyPojo = finalCheckMapper.selectStrategyByCompanyId(companyId, quarter);
        if (strategyPojo != null) {
            if (strategyPojo.getMainPro() == null || strategyPojo.getMinorPro() == null) {
                finalCheck.setStrategyInfo("您还没有设计您公司的产品类型");
                flag = false;
            } else if (strategyPojo.getService() == null || "".equals(strategyPojo.getService())) {
                finalCheck.setStrategyInfo("您的公司还没有服务宗旨，这是一个很重要的决策，请慎重决定");
                flag = false;
            } else if (strategyPojo.getStrategyId() == null) {
                finalCheck.setStrategyInfo("您的公司还没有制定任何策略方向，这有可能影响您公司的进一步发展");
                flag = false;
            }
        } else {
            flag = false;
        }
        //检查人力资源
        //检查人力资源下的职位分配
        List<PositionPojo> positionPojos = finalCheckMapper.selectPositionByCompanyId(companyId);
        if (positionPojos == null) {
            finalCheck.setPositionInfo("您还没有为您的公司分配职位");
            flag = false;
        }
        //检查人力资源下的团队规则
        RulePojo rulePojo = finalCheckMapper.selectRulesByCompanyId(companyId, quarter);
        if (rulePojo == null || rulePojo.getRuleId() == null) {
            finalCheck.setRuleInfo("您还没有为您的公司建立一个有效的团队规则");
            flag = false;
        }
        //检查销售渠道
        List<MarketPojo> marketPojos = finalCheckMapper.selectMarketInfoByCompanyId(companyId, quarter);
        if (marketPojos != null) {
            for (MarketPojo marketPojo : marketPojos) {
                if (marketPojo.getMarketId() == null) {
                    finalCheck.setMarketInfo("您还没有创建实体或网络销售中心");
                    flag = false;
                }
            }
        } else {
            flag = false;
        }
        //检查生产制造
        //检查产品信息
        List<ProductPojo> productPojos = finalCheckMapper.selectProductByCompanyId(companyId, quarter);
        if (productPojos != null) {
            for (ProductPojo productPojo : productPojos) {
                if (productPojo.getName() == null || productPojo.getDetail() == null) {
                    finalCheck.setProductInfo("您的公司还没有设计任何产品");
                }
            }
        } else {
            flag = false;
        }
        //检查固定产能
        CapacityPojo capacityPojo = finalCheckMapper.selectCapacityByCompanyId(companyId,quarter);
        if (capacityPojo == null) {
            finalCheck.setCapacityInfo("您的公司还没有设置产能");
            flag = false;
        }
        //检查财务
        //检查公司持股信息
        StockPojo stockPojo = finalCheckMapper.selectStockByCompanyId(companyId,quarter);
        if (stockPojo == null) {
            finalCheck.setCapacityInfo("您的公司还没有持股信息");
            flag = false;
        }
        //检查定期存款
        DepositPojo depositPojo = finalCheckMapper.selectDepositByCompanyId(companyId,quarter);
        if (depositPojo == null) {
            finalCheck.setCapacityInfo("您的公司还没有存取款信息");
            flag = false;
        }
        model.addAttribute("flag", flag);
        if (flag) {
            model.addAttribute("finalCheck", "没有重大决策失误");
            //检查已通过，在提交再检查
            request.getSession().setAttribute("pass", true);
        } else {
            model.addAttribute("finalCheck", finalCheck);
            request.getSession().setAttribute("pass", false);
        }
        System.out.println("------------------检查结束----------------------");
        return "testFinalCheck";
    }

    @RequestMapping("/finalSubmit.do")
    public String finalSubmit(HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        String currentTime = df.format(new Date());
        int companyId = (int) request.getSession().getAttribute("companyId");
        Boolean b = (Boolean) request.getSession().getAttribute("pass");
        if (b) {
            finalCheckMapper.updateCompanyQuaterTime(companyId, currentTime);
            return "finalSubmit1";
        } else {
            return "finalSubmit2";
        }
    }
}
