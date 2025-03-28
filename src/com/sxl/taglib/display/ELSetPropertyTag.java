package com.sxl.taglib.display;


import javax.servlet.jsp.JspException;

import org.displaytag.tags.SetPropertyTag;
import org.displaytag.tags.el.ExpressionEvaluator;



public class ELSetPropertyTag extends SetPropertyTag
{

    /**
     * D1597A17A6.
     */
    private static final long serialVersionUID = 899149338534L;

    /**
     * Expression for the "name" tag attribute.
     */
    private String nameExpr;

    /**
     * Expression for the "value" tag attribute.
     */
    private String valueExpr;

    /**
     * @see org.displaytag.tags.SetPropertyTag#setName(java.lang.String)
     */
    public void setName(String value)
    {
        nameExpr = value;
    }

    /**
     * @see org.displaytag.tags.SetPropertyTag#setValue(java.lang.String)
     */
    public void setValue(String value)
    {
        valueExpr = value;
        try{
            //this.valueExpr = new String(value.getBytes("GBK"),"ISO-8859-1");
          }catch(Exception e){
            this.valueExpr = value;
          }
          super.setValue(this.valueExpr);

    }

    /**
     * @see javax.servlet.jsp.tagext.Tag#doStartTag()
     */
    public int doStartTag() throws JspException
    {
        evaluateExpressions();
        return super.doStartTag();
    }

    /**
     * Evaluates the expressions for all the given attributes and pass results up to the parent tag.
     * @throws JspException for exceptions occurred during evaluation.
     */
    private void evaluateExpressions() throws JspException
    {
        ExpressionEvaluator eval = new ExpressionEvaluator(this, pageContext);

        super.setName(eval.evalString("name", nameExpr)); //$NON-NLS-1$

        if (valueExpr != null)
        {
            super.setValue(eval.evalString("value", valueExpr)); //$NON-NLS-1$
        }
    }

    /**
     * @see javax.servlet.jsp.tagext.Tag#release()
     */
    public void release()
    {
        super.release();
        this.nameExpr = null;
        this.valueExpr = null;
    }

}
