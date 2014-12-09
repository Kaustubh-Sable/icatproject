package org.icatproject.core.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.xml.bind.annotation.XmlRootElement;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.StringField;
import org.icatproject.core.IcatException;
import org.icatproject.core.manager.GateKeeper;

@Comment("A parameter associated with an investigation")
@SuppressWarnings("serial")
@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "INVESTIGATION_ID",
		"PARAMETER_TYPE_ID" }) })
@XmlRootElement
public class InvestigationParameter extends Parameter implements Serializable {

	@Comment("The associated investigation")
	@JoinColumn(name = "INVESTIGATION_ID", nullable = false)
	@ManyToOne
	private Investigation investigation;

	/* Needed for JPA */
	public InvestigationParameter() {
	}

	public Investigation getInvestigation() {
		return this.investigation;
	}

	@Override
	public void preparePersist(String modId, EntityManager manager, GateKeeper gateKeeper,
			boolean rootUser) throws IcatException {
		super.preparePersist(modId, manager, gateKeeper, rootUser);
		this.id = null;
		if (type == null) {
			throw new IcatException(IcatException.IcatExceptionType.VALIDATION,
					"Type of parameter is not set");
		}
		if (!type.isApplicableToInvestigation()) {
			throw new IcatException(IcatException.IcatExceptionType.VALIDATION,
					"Parameter of type " + type.getName()
							+ " is not applicable to an Investigation");
		}
	}

	public void setInvestigation(Investigation investigation) {
		this.investigation = investigation;
	}

	@Override
	public Document getDoc() {
		Document doc = super.getDoc();
		doc.add(new StringField("investigation", "Investigation:" + investigation.id, Store.YES));
		return doc;
	}
}