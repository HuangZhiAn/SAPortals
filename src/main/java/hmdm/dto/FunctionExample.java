package hmdm.dto;

import java.util.ArrayList;
import java.util.List;

public class FunctionExample {
    /**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	protected String orderByClause;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	protected boolean distinct;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public FunctionExample() {
		oredCriteria = new ArrayList<Criteria>();
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public boolean isDistinct() {
		return distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public Criteria or() {
		Criteria criteria = createCriteriaInternal();
		oredCriteria.add(criteria);
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public void clear() {
		oredCriteria.clear();
		orderByClause = null;
		distinct = false;
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	protected abstract static class GeneratedCriteria {
		protected List<Criterion> criteria;

		protected GeneratedCriteria() {
			super();
			criteria = new ArrayList<Criterion>();
		}

		public boolean isValid() {
			return criteria.size() > 0;
		}

		public List<Criterion> getAllCriteria() {
			return criteria;
		}

		public List<Criterion> getCriteria() {
			return criteria;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			criteria.add(new Criterion(condition));
		}

		protected void addCriterion(String condition, Object value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value));
		}

		protected void addCriterion(String condition, Object value1, Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value1, value2));
		}

		public Criteria andFunctionIdIsNull() {
			addCriterion("function_id is null");
			return (Criteria) this;
		}

		public Criteria andFunctionIdIsNotNull() {
			addCriterion("function_id is not null");
			return (Criteria) this;
		}

		public Criteria andFunctionIdEqualTo(Long value) {
			addCriterion("function_id =", value, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdNotEqualTo(Long value) {
			addCriterion("function_id <>", value, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdGreaterThan(Long value) {
			addCriterion("function_id >", value, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdGreaterThanOrEqualTo(Long value) {
			addCriterion("function_id >=", value, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdLessThan(Long value) {
			addCriterion("function_id <", value, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdLessThanOrEqualTo(Long value) {
			addCriterion("function_id <=", value, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdIn(List<Long> values) {
			addCriterion("function_id in", values, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdNotIn(List<Long> values) {
			addCriterion("function_id not in", values, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdBetween(Long value1, Long value2) {
			addCriterion("function_id between", value1, value2, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionIdNotBetween(Long value1, Long value2) {
			addCriterion("function_id not between", value1, value2, "functionId");
			return (Criteria) this;
		}

		public Criteria andFunctionNameIsNull() {
			addCriterion("function_name is null");
			return (Criteria) this;
		}

		public Criteria andFunctionNameIsNotNull() {
			addCriterion("function_name is not null");
			return (Criteria) this;
		}

		public Criteria andFunctionNameEqualTo(String value) {
			addCriterion("function_name =", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameNotEqualTo(String value) {
			addCriterion("function_name <>", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameGreaterThan(String value) {
			addCriterion("function_name >", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameGreaterThanOrEqualTo(String value) {
			addCriterion("function_name >=", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameLessThan(String value) {
			addCriterion("function_name <", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameLessThanOrEqualTo(String value) {
			addCriterion("function_name <=", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameLike(String value) {
			addCriterion("function_name like", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameNotLike(String value) {
			addCriterion("function_name not like", value, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameIn(List<String> values) {
			addCriterion("function_name in", values, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameNotIn(List<String> values) {
			addCriterion("function_name not in", values, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameBetween(String value1, String value2) {
			addCriterion("function_name between", value1, value2, "functionName");
			return (Criteria) this;
		}

		public Criteria andFunctionNameNotBetween(String value1, String value2) {
			addCriterion("function_name not between", value1, value2, "functionName");
			return (Criteria) this;
		}

		public Criteria andProductIdIsNull() {
			addCriterion("product_id is null");
			return (Criteria) this;
		}

		public Criteria andProductIdIsNotNull() {
			addCriterion("product_id is not null");
			return (Criteria) this;
		}

		public Criteria andProductIdEqualTo(Long value) {
			addCriterion("product_id =", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdNotEqualTo(Long value) {
			addCriterion("product_id <>", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdGreaterThan(Long value) {
			addCriterion("product_id >", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdGreaterThanOrEqualTo(Long value) {
			addCriterion("product_id >=", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdLessThan(Long value) {
			addCriterion("product_id <", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdLessThanOrEqualTo(Long value) {
			addCriterion("product_id <=", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdIn(List<Long> values) {
			addCriterion("product_id in", values, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdNotIn(List<Long> values) {
			addCriterion("product_id not in", values, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdBetween(Long value1, Long value2) {
			addCriterion("product_id between", value1, value2, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdNotBetween(Long value1, Long value2) {
			addCriterion("product_id not between", value1, value2, "productId");
			return (Criteria) this;
		}
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table hmdm_pt_product_function
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	public static class Criterion {
		private String condition;
		private Object value;
		private Object secondValue;
		private boolean noValue;
		private boolean singleValue;
		private boolean betweenValue;
		private boolean listValue;
		private String typeHandler;

		public String getCondition() {
			return condition;
		}

		public Object getValue() {
			return value;
		}

		public Object getSecondValue() {
			return secondValue;
		}

		public boolean isNoValue() {
			return noValue;
		}

		public boolean isSingleValue() {
			return singleValue;
		}

		public boolean isBetweenValue() {
			return betweenValue;
		}

		public boolean isListValue() {
			return listValue;
		}

		public String getTypeHandler() {
			return typeHandler;
		}

		protected Criterion(String condition) {
			super();
			this.condition = condition;
			this.typeHandler = null;
			this.noValue = true;
		}

		protected Criterion(String condition, Object value, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.typeHandler = typeHandler;
			if (value instanceof List<?>) {
				this.listValue = true;
			} else {
				this.singleValue = true;
			}
		}

		protected Criterion(String condition, Object value) {
			this(condition, value, null);
		}

		protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.secondValue = secondValue;
			this.typeHandler = typeHandler;
			this.betweenValue = true;
		}

		protected Criterion(String condition, Object value, Object secondValue) {
			this(condition, value, secondValue, null);
		}
	}

	/**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table hmdm_pt_product_function
     *
     * @mbg.generated do_not_delete_during_merge Wed Aug 09 11:39:48 GMT+08:00 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }
}