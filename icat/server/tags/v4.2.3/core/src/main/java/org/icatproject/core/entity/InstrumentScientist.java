package org.icatproject.core.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.icatproject.core.IcatException;

@Comment("Relationship between an ICAT user as an instrument scientist and the instrument")
@SuppressWarnings("serial")
@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "USER_ID", "INSTRUMENT_ID" }) })
public class InstrumentScientist extends EntityBaseBean implements Serializable {

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Instrument getInstrument() {
		return instrument;
	}

	public void setInstrument(Instrument instrument) {
		this.instrument = instrument;
	}

	@JoinColumn(name = "INSTRUMENT_ID", nullable = false)
	@ManyToOne(fetch = FetchType.LAZY)
	private Instrument instrument;

	@JoinColumn(name = "USER_ID", nullable = false)
	@ManyToOne(fetch = FetchType.LAZY)
	private User user;

	/* Needed for JPA */
	public InstrumentScientist() {
	}

	@Override
	public String toString() {
		return "InstrumentScientist[id=" + id + "]";
	}

	@Override
	public void preparePersist(String modId, EntityManager manager) throws IcatException {
		super.preparePersist(modId, manager);
		this.id = null;
	}

}
