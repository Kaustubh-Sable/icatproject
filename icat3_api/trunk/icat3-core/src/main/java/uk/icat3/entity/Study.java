package uk.icat3.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.Marshaller;

import org.apache.log4j.Logger;

import uk.icat3.exceptions.BadParameterException;
import uk.icat3.exceptions.IcatInternalException;
import uk.icat3.exceptions.NoSuchObjectFoundException;

@Comment("A study which may be related to an investigation")
@SuppressWarnings("serial")
@Entity
@TableGenerator(name = "studyGenerator", pkColumnValue = "Study")
public class Study extends EntityBaseBean implements Serializable {

	public Long getManager() {
		return manager;
	}

	public void setManager(Long manager) {
		this.manager = manager;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	private final static Logger logger = Logger.getLogger(Study.class);

	@Temporal(TemporalType.TIMESTAMP)
	private Date startDate;

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "studyGenerator")
	private Long id;

	@Comment("**** What is this and do we need it. Perhaps we need a StudyParameter")
	private Long manager;

	@Comment("The name of the study")
	@Column(nullable = false)
	private String name;

	@Comment("A description of the study and its purpose")
	private String description;

	@Comment("**** This is very vague. Perhaps we need a StudyParameter")
	private String relatedMaterial;

	@Comment("**** Do we really want this?")
	@ManyToOne(fetch = FetchType.LAZY)
	private StudyStatus status;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "study")
	private List<StudyInvestigation> studyInvestigations;

	/* Needed for JPA */
	public Study() {
	}

	public void beforeMarshal(Marshaller source) {
		logger.trace("Marshalling Study for " + this.includes);

		if (!this.includes.contains(StudyInvestigation.class)) {
			this.studyInvestigations = null;
		}
		if (!this.includes.contains(StudyStatus.class)) {
			this.status = null;
		}
	}

	public Long getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	@Override
	public Object getPK() {
		return this.id;
	}

	public String getRelatedMaterial() {
		return this.relatedMaterial;
	}

	public StudyStatus getStatus() {
		return this.status;
	}

	public List<StudyInvestigation> getStudyInvestigations() {
		return this.studyInvestigations;
	}

	@Override
	public void preparePersist(String modId, EntityManager manager) throws NoSuchObjectFoundException,
			BadParameterException, IcatInternalException {
		super.preparePersist(modId, manager);
		this.id = null;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRelatedMaterial(String relatedMaterial) {
		this.relatedMaterial = relatedMaterial;
	}

	public void setStatus(StudyStatus status) {
		this.status = status;
	}

	public void setStudyInvestigations(List<StudyInvestigation> studyInvestigations) {
		this.studyInvestigations = studyInvestigations;
	}

	@Override
	public String toString() {
		return "Study[id=" + this.id + "]";
	}

}
