package cn.gov.model.common.dto;

import lombok.Getter;

/**
 * @Description:
 * @Author: gaoshuai
 * @Date: 2019/7/27 14:46
 */
@Getter
public class DatabaseResult {
    private String message;

    DatabaseResult(String message) {
        this.message = message;
    }

    /**
     * @param rows 受影响行数
     */
    public static DatabaseResult result(int rows) {
        if (rows > 0) {
            return new DatabaseResult("操作成功！");
        } else {
            return new DatabaseResult("操作失败！");
        }
    }


}
