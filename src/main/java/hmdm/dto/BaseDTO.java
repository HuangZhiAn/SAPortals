package hmdm.dto;

import java.io.Serializable;
import java.util.Date;
public class BaseDTO implements Serializable{

	private static final long serialVersionUID = 1L;

	private Character enable_flag;

	private Long created_by;

	private Date creation_date;

	private Long last_updated_by;

	private Date last_updated_date;

	private Integer version;

	public BaseDTO() {
	}

	public Character getEnable_flag() {
		return enable_flag;
	}

	public void setEnable_flag(Character enable_flag) {
		this.enable_flag = enable_flag;
	}

	public Long getCreated_by() {
		return created_by;
	}

	public void setCreated_by(Long created_by) {
		this.created_by = created_by;
	}

	public Date getCreation_date() {
		return creation_date;
	}

	public void setCreation_date(Date creation_date) {
		this.creation_date = creation_date;
	}

	public Long getLast_updated_by() {
		return last_updated_by;
	}

	public void setLast_updated_by(Long last_updated_by) {
		this.last_updated_by = last_updated_by;
	}

	public Date getLast_updated_date() {
		return last_updated_date;
	}

	public void setLast_updated_date(Date last_updated_date) {
		this.last_updated_date = last_updated_date;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((created_by == null) ? 0 : created_by.hashCode());
		result = prime * result + ((creation_date == null) ? 0 : creation_date.hashCode());
		result = prime * result + ((enable_flag == null) ? 0 : enable_flag.hashCode());
		result = prime * result + ((last_updated_by == null) ? 0 : last_updated_by.hashCode());
		result = prime * result + ((last_updated_date == null) ? 0 : last_updated_date.hashCode());
		result = prime * result + ((version == null) ? 0 : version.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BaseDTO other = (BaseDTO) obj;
		if (created_by == null) {
			if (other.created_by != null)
				return false;
		} else if (!created_by.equals(other.created_by))
			return false;
		if (creation_date == null) {
			if (other.creation_date != null)
				return false;
		} else if (!creation_date.equals(other.creation_date))
			return false;
		if (enable_flag == null) {
			if (other.enable_flag != null)
				return false;
		} else if (!enable_flag.equals(other.enable_flag))
			return false;
		if (last_updated_by == null) {
			if (other.last_updated_by != null)
				return false;
		} else if (!last_updated_by.equals(other.last_updated_by))
			return false;
		if (last_updated_date == null) {
			if (other.last_updated_date != null)
				return false;
		} else if (!last_updated_date.equals(other.last_updated_date))
			return false;
		if (version == null) {
			if (other.version != null)
				return false;
		} else if (!version.equals(other.version))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BaseDTO [enable_flag=" + enable_flag + ", created_by=" + created_by + ", creation_date=" + creation_date
				+ ", last_updated_by=" + last_updated_by + ", last_updated_date=" + last_updated_date + ", version="
				+ version + "]";
	}
}
