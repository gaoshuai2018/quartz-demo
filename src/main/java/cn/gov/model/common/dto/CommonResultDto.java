package cn.gov.model.common.dto;

import lombok.Setter;

/**
 * @Description:
 * @Author: gaoshuai
 * @Date: 2019/7/27 14:33
 */
@Setter
public class CommonResultDto<T> {

    private T data;
    private int code;
    private String message;

    public CommonResultDto() {
    }

    public CommonResultDto code(int code) {
        this.setCode(code);
        return this;
    }

    public CommonResultDto data(T data) {
        this.setData(data);
        return this;
    }

    public CommonResultDto msg(String msg) {
        this.setMessage(msg);
        return this;
    }

    public CommonResultDto(DatabaseResult databaseResult) {
        this.setMessage(databaseResult.getMessage());
    }

}
