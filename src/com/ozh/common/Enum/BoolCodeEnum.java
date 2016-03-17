package com.ozh.common.Enum;

import com.ozh.common.entity.ICodeEnum;

/**
 * Created by ozh on 2016/3/2.
 */
public enum BoolCodeEnum implements ICodeEnum {

    /**
     * 是
     */
    YES("Y"),
    /**
     * 否
     */
    NO("N");

    private String code;

    private BoolCodeEnum(String code) {
        this.code = code;
    }

    public static BoolCodeEnum fromCode(String code) {
        for (BoolCodeEnum boolCodeEnum : BoolCodeEnum.values()) {
            if (boolCodeEnum.code.equals(code)) {
                return boolCodeEnum;
            }
        }
        return null;
    }

    public static BoolCodeEnum fromValue(boolean value) {
        if (value) {
            return YES;
        }
        return NO;
    }


    public static String toCode(boolean value) {
        if (value) {
            return YES.toCode();
        }
        return NO.toCode();
    }

    public String toCode() {
        return code;
    }

    public boolean boolValue() {
        return this.ordinal() == 0;
    }

    public static int toOrdinal(String v){
        return BoolCodeEnum.fromCode(v).ordinal();
    }
}
