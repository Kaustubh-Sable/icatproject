package uk.icat3.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import javax.xml.bind.Marshaller;
import javax.xml.bind.annotation.XmlRootElement;

import org.apache.log4j.Logger;

import uk.icat3.exceptions.BadParameterException;
import uk.icat3.exceptions.IcatInternalException;
import uk.icat3.exceptions.NoSuchObjectFoundException;

@Comment("An investigation or experiment")
@SuppressWarnings("serial")
@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "NAME",
		"VISIT_ID", "FACILITY_CYCLE_ID", "INSTRUMENT_ID" }) })
@XmlRootElement
@TableGenerator(name = "investigationGenerator", pkColumnValue = "Investigation")
public class Investigation extends EntityBaseBean implements Serializable {

	private static Logger logger = Logger.getLogger(Investigation.class);

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<Dataset> datasets = new ArrayList<Dataset>();

	@Comment("The Digital Object Identifier associated with this investigation")
	private String doi;

	@Temporal(TemporalType.TIMESTAMP)
	private Date endDate;

	@JoinColumn(nullable = false)
	@ManyToOne
	private Facility facility;

	@JoinColumn(name = "FACILITY_CYCLE_ID")
	@ManyToOne
	private FacilityCycle facilityCycle;

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "investigationGenerator")
	private Long id;

	@JoinColumn(name = "INSTRUMENT_ID")
	@ManyToOne
	private Instrument instrument;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<InvestigationUser> investigationUsers = new ArrayList<InvestigationUser>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<Keyword> keywords = new ArrayList<Keyword>();

	@Comment("A short name for the investigation")
	@Column(name = "NAME", nullable = false)
	private String name;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<InvestigationParameter> parameters = new ArrayList<InvestigationParameter>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<Publication> publications = new ArrayList<Publication>();

	@Comment("When the data will be made freely available")
	@Temporal(TemporalType.TIMESTAMP)
	private Date releaseDate;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<Sample> samples = new ArrayList<Sample>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<Shift> shifts = new ArrayList<Shift>();

	@Temporal(TemporalType.TIMESTAMP)
	private Date startDate;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "investigation")
	private List<StudyInvestigation> studyInvestigations = new ArrayList<StudyInvestigation>();

	@Comment("Summary or abstract")
	@Column(length = 4000)
	private String summary;

	@Comment("Full title of the investigation")
	@Column(nullable = false)
	private String title;

	@JoinColumn(nullable = false)
	@ManyToOne
	private InvestigationType type;

	@Comment("Identifier for the visit to which this investigation is related")
	@Column(name = "VISIT_ID")
	private String visitId;

	/* Needed for JPA */
	public Investigation() {
	}

	public void beforeMarshal(Marshaller source) {
		logger.trace("Marshalling Investigation for " + includes);
		if (!this.includes.contains(FacilityCycle.class)) {
			this.facilityCycle = null;
		}
		if (!this.includes.contains(Publication.class)) {
			this.publications = null;
		}
		if (!this.includes.contains(Sample.class)) {
			this.samples = null;
		}
		if (!this.includes.contains(Dataset.class)) {
			this.datasets = null;
		}
		if (!this.includes.contains(Shift.class)) {
			this.shifts = null;
		}
		if (!this.includes.contains(Keyword.class)) {
			this.keywords = null;
		}
		if (!this.includes.contains(StudyInvestigation.class)) {
			this.studyInvestigations = null;
		}
		if (!this.includes.contains(InvestigationUser.class)) {
			this.investigationUsers = null;
		}
		if (!this.includes.contains(InvestigationParameter.class)) {
			this.parameters = null;
		}
		if (!this.includes.contains(InvestigationType.class)) {
			this.type = null;
		}
	}

	public List<Dataset> getDatasets() {
		return datasets;
	}

	public String getDoi() {
		return doi;
	}

	public Date getEndDate() {
		return endDate;
	}

	public Facility getFacility() {
		return facility;
	}

	public FacilityCycle getFacilityCycle() {
		return this.facilityCycle;
	}

	public Long getId() {
		return this.id;
	}

	public Instrument getInstrument() {
		return instrument;
	}

	public List<InvestigationUser> getInvestigationUsers() {
		return investigationUsers;
	}

	public List<Keyword> getKeywords() {
		return keywords;
	}

	public String getName() {
		return name;
	}

	public List<InvestigationParameter> getParameters() {
		return parameters;
	}

	@Override
	public Object getPK() {
		return id;
	}

	public List<Publication> getPublications() {
		return publications;
	}

	public Date getReleaseDate() {
		return this.releaseDate;
	}

	public List<Sample> getSamples() {
		return samples;
	}

	public List<Shift> getShifts() {
		return shifts;
	}

	public Date getStartDate() {
		return startDate;
	}

	public List<StudyInvestigation> getStudyInvestigations() {
		return studyInvestigations;
	}

	public String getSummary() {
		return summary;
	}

	public String getTitle() {
		return this.title;
	}

	public InvestigationType getType() {
		return type;
	}

	public String getVisitId() {
		return this.visitId;
	}

	public void preparePersist(String modId, EntityManager manager)
			throws NoSuchObjectFoundException, BadParameterException,
			IcatInternalException {
		super.preparePersist(modId, manager);
		id = null;
		for (Dataset dataset : datasets) {
			dataset.preparePersist(modId, manager);
			dataset.setInvestigation(this); // Set back ref
		}
		for (InvestigationParameter investigationParameter : parameters) {
			investigationParameter.preparePersist(modId, manager);
			investigationParameter.setInvestigation(this); // Set back ref
		}
		for (Sample sample : samples) {
			sample.preparePersist(modId, manager);
			sample.setInvestigation(this); // Set back ref
		}
	}

	public void setDatasets(List<Dataset> datasets) {
		this.datasets = datasets;
	}

	public void setDoi(String doi) {
		this.doi = doi;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public void setFacility(Facility facility) {
		this.facility = facility;
	}

	public void setFacilityCycle(FacilityCycle facilityCycle) {
		this.facilityCycle = facilityCycle;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setInstrument(Instrument instrument) {
		this.instrument = instrument;
	}

	public void setInvestigationUsers(List<InvestigationUser> investigationUsers) {
		this.investigationUsers = investigationUsers;
	}

	public void setKeywords(List<Keyword> keywords) {
		this.keywords = keywords;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setParameters(List<InvestigationParameter> parameters) {
		this.parameters = parameters;
	}

	public void setPublications(List<Publication> publications) {
		this.publications = publications;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public void setSamples(List<Sample> samples) {
		this.samples = samples;
	}

	public void setShifts(List<Shift> shifts) {
		this.shifts = shifts;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public void setStudyInvestigations(
			List<StudyInvestigation> studyInvestigations) {
		this.studyInvestigations = studyInvestigations;
	}

	// TODO restore as needed
	// public void isValid(EntityManager manager, boolean deepValidation) throws
	// ValidationException,
	// IcatInternalException {
	// super.isValid(manager, deepValidation);
	//
	// if (deepValidation) {
	//
	// if (this.instrument != null) {
	// // this.instrument.isValid(manager);
	// // check instrument is correct.
	// // check investigation type is correct.
	// Instrument instrument = manager.find(Instrument.class, this.instrument);
	// if (instrument == null)
	// throw new ValidationException(this.instrument +
	// " is not a valid instrument.");
	// }
	//
	// if (this.type != null) {
	// // this.invType.isValid(manager);
	//
	// // check investigation type is correct.
	// InvestigationType investigationType =
	// manager.find(InvestigationType.class,
	// this.type.getName());
	// if (investigationType == null)
	// throw new ValidationException(this.type +
	// " is not a valid investigation type.");
	// }
	//
	// // check all datasets now
	//
	// for (Dataset dataset : datasets) {
	// dataset.isValid(manager);
	// }
	//
	// }
	// }

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setType(InvestigationType type) {
		this.type = type;
	}

	public void setVisitId(String visitId) {
		this.visitId = visitId;
	}

	@Override
	public String toString() {
		return "Investigation[id=" + id + "]";
	}

}
