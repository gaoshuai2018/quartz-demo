package cn.gov.model.controller;

import cn.gov.model.common.dto.CommonResultDto;
import cn.gov.model.common.dto.DatabaseResult;
import cn.gov.model.domain.Job;
import cn.gov.model.service.IJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @description:
 * @author: gaoshuai
 * @date: 2019/7/27 14:27
 */
@Controller
@RequestMapping("/job")
public class JobController {

    @Autowired
    private IJobService jobService;

    /**
     * 任务调度状态修改
     */
    @PostMapping("/changeStatus")
    @ResponseBody
    public CommonResultDto changeStatus(Job job) {
        return new CommonResultDto(DatabaseResult.result(jobService.changeStatus(job)));
    }
}
