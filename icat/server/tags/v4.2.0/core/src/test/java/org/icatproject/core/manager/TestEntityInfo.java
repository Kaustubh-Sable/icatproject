package org.icatproject.core.manager;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.icatproject.core.IcatException;
import org.icatproject.core.entity.Dataset;
import org.icatproject.core.entity.EntityBaseBean;
import org.icatproject.core.entity.Investigation;
import org.icatproject.core.entity.InvestigationUser;
import org.icatproject.core.entity.Job;
import org.icatproject.core.entity.Keyword;
import org.icatproject.core.entity.NotificationRequest;
import org.icatproject.core.entity.ParameterType;
import org.icatproject.core.entity.User;
import org.icatproject.core.manager.EntityInfoHandler.Relationship;
import org.junit.Test;

public class TestEntityInfo {

	private static EntityInfoHandler eiHandler = EntityInfoHandler.getInstance();

	@Test(expected = IcatException.class)
	public void testBadname() throws Exception {
		eiHandler.getEntityInfo("Fred");
	}

	@Test
	public void testSimplePKS() throws Exception {
		testPKS(Investigation.class);
		testPKS(Dataset.class);
		testPKS(Keyword.class);
		testPKS(InvestigationUser.class);
		testPKS(User.class);
		testPKS(Job.class);
	}
	
	@Test
	public void testEnums() throws Exception {
		testEnum(Investigation.class);
		testEnum(ParameterType.class, "valueType");
		testEnum(NotificationRequest.class, "destType");
	}

	private void testEnum(Class<? extends EntityBaseBean> klass, String... enumNames) throws Exception {
		Map<String, Field> result = eiHandler.getEnums(klass);
		assertEquals(klass.getSimpleName() + " enums",  enumNames.length, result.size());
		for (String enumName: enumNames) { 
		assertTrue(klass.getSimpleName() + " enum ", result.containsKey(enumName));
		}
		
	}

	@Test
	public void testConstraints() throws Exception {
		testConstraint(Investigation.class, "name", "visitId", "facilityCycle", "instrument");
		testConstraint(Dataset.class, "sample", "investigation", "name", "type");
		testConstraint(Keyword.class, "name", "investigation");
		testConstraint(InvestigationUser.class, "user", "investigation");
		testConstraint(User.class, "name");
		testConstraint(Job.class);
	}

	private void testConstraint(Class<? extends EntityBaseBean> klass, String... name)
			throws Exception {
		List<List<Field>> results = eiHandler.getConstraintFields(klass);
		if (name.length == 0) {
			assertEquals("One", 0, results.size());
		} else {
			assertFalse("One", 0 == results.size());
			List<Field> result = results.get(0);
			assertEquals(klass.getSimpleName() + " count", name.length, result.size());

			int i = 0;
			for (Field re : result) {
				assertEquals(klass.getSimpleName() + " value " + i, name[i++], re.getName());
			}
		}
	}

	private void testPKS(Class<? extends EntityBaseBean> klass) throws Exception {
		String result = eiHandler.getKeyFor(klass).getName();
		assertEquals(klass.getSimpleName() + " value ", "id", result);
	}

	@Test
	public void testRels() throws Exception {

		testRel(Investigation.class, "Instrument by instrument one",
				"Keyword by keywords many cascaded", "Sample by samples many cascaded",
				"StudyInvestigation by studyInvestigations many cascaded",
				"Shift by shifts many cascaded", "Dataset by datasets many cascaded",
				"Publication by publications many cascaded",
				"InvestigationUser by investigationUsers many cascaded",
				"FacilityCycle by facilityCycle one", "InvestigationType by type one",
				"Facility by facility one", "InvestigationParameter by parameters many cascaded");

		testRel(Dataset.class, "InputDataset by inputDatasets many cascaded",
				"DatasetParameter by parameters many cascaded",
				"Investigation by investigation one", "Datafile by datafiles many cascaded",
				"OutputDataset by outputDatasets many cascaded", "DatasetType by type one",
				"Sample by sample one");

		testRel(Keyword.class, "Investigation by investigation one");

		testRel(InvestigationUser.class, "Investigation by investigation one", "User by user one");

		testRel(User.class, "InvestigationUser by investigationUsers many cascaded",
				"UserGroup by userGroups many cascaded",
				"InstrumentScientist by instrumentScientists many cascaded",
				"Study by studies many cascaded");

		testRel(Job.class, "InputDataset by inputDatasets many cascaded",
				"InputDatafile by inputDatafiles many cascaded",
				"OutputDatafile by outputDatafiles many cascaded",
				"Application by application one", "OutputDataset by outputDatasets many cascaded");
	}

	private void testRel(Class<? extends EntityBaseBean> klass, String... rels) throws Exception {
		Set<Relationship> results = eiHandler.getRelatedEntities(klass);
		Set<String> rStrings = new HashSet<String>();
		for (Relationship rel : results) {
			rStrings.add(rel.toString());
		}
//		System.out.println(results);
		assertEquals(klass.getSimpleName() + " count", rels.length, results.size());
		for (String rel : rels) {
			assertTrue(klass.getSimpleName() + " value " + rel, rStrings.contains(rel));
		}
	}

	@Test
	public void testOnes() throws Exception {

		testOne(Investigation.class, "Instrument", "FacilityCycle", "InvestigationType", "Facility");

		testOne(Dataset.class, "Investigation", "DatasetType", "Sample");

		testOne(Keyword.class, "Investigation");

		testOne(InvestigationUser.class, "Investigation", "User");

		testOne(User.class);

		testOne(Job.class, "Application");
	}

	private void testOne(Class<? extends EntityBaseBean> klass, String... rels) throws Exception {
		Set<Relationship> results = eiHandler.getOnes(klass);
		Set<String> rStrings = new HashSet<String>();
		for (Relationship rel : results) {
			rStrings.add(rel.getBean().getSimpleName());
		}
		// System.out.println(results);
		assertEquals(klass.getSimpleName() + " count", rels.length, results.size());
		for (String rel : rels) {
			assertTrue(klass.getSimpleName() + " value " + rel, rStrings.contains(rel));
		}
	}

	@Test
	public void notNullableFields() throws Exception {
		testNNF(Investigation.class, "name", "title", "facility", "name");
		testNNF(Dataset.class, "type", "name");
		testNNF(Keyword.class, "name", "investigation");
		testNNF(InvestigationUser.class, "investigation", "user");
		testNNF(User.class, "name");
		testNNF(ParameterType.class, "valueType", "name", "facility");
		testNNF(Job.class, "application");
	}

	private void testNNF(Class<? extends EntityBaseBean> klass, String... nnfs) throws Exception {
		List<Field> results = eiHandler.getNotNullableFields(klass);
		Set<String> rStrings = new HashSet<String>();
		for (Field field : results) {
			rStrings.add(field.getName());
		}
		assertEquals(klass.getSimpleName() + " count", nnfs.length, results.size());

		for (String nnf : nnfs) {
			assertTrue(klass.getSimpleName() + " value " + nnf, rStrings.contains(nnf));
		}
	}

	@Test
	public void stringFields() throws Exception {
		testSF(Investigation.class, "visitId 255", "summary 4000", "name 255", "title 255",
				"doi 255");
		testSF(Dataset.class, "name 255", "description 255", "location 255", "doi 255");
		testSF(Keyword.class, "name 255");
		testSF(InvestigationUser.class, "role 255");
		testSF(User.class, "name 255", "fullName 255");
		testSF(ParameterType.class, "description 255", "unitsFullName 255", "units 255", "name 255");
		testSF(Job.class);

	}

	private void testSF(Class<? extends EntityBaseBean> klass, String... sfs) throws Exception {
		Map<Field, Integer> results = eiHandler.getStringFields(klass);
		Set<String> rStrings = new HashSet<String>();
		for (Entry<Field, Integer> entry : results.entrySet()) {
			rStrings.add(entry.getKey().getName() + " " + entry.getValue());
		}
		assertEquals(klass.getSimpleName() + " count", sfs.length, results.size());

		for (String sf : sfs) {
			assertTrue(klass.getSimpleName() + " value " + sf, rStrings.contains(sf));
		}
	}

	@Test
	public void getters() throws Exception {
		testGetters(Investigation.class, 21);
		testGetters(Dataset.class, 15);
		testGetters(Keyword.class, 3);
		testGetters(InvestigationUser.class, 4);
		testGetters(User.class, 7);
		testGetters(ParameterType.class, 20);
		testGetters(Job.class, 6);
	}

	private void testGetters(Class<? extends EntityBaseBean> klass, int count) throws Exception {
		Map<Field, Method> results = eiHandler.getGetters(klass);
		assertEquals(klass.getSimpleName() + " count", count, results.size());
		for (Entry<Field, Method> entry : results.entrySet()) {
			String cap = entry.getKey().getName();
			cap = Character.toUpperCase(cap.charAt(0)) + cap.substring(1);
			String m = entry.getValue().getName();
			assertTrue(klass.getSimpleName() + " value ",
					m.equals("get" + cap) || m.equals("is" + cap));
		}

	}

	@Test
	public void setters() throws Exception {
		testSetters(Investigation.class, 12);
		testSetters(Dataset.class, 10);
		testSetters(Keyword.class, 2);
		testSetters(InvestigationUser.class, 3);
		testSetters(User.class, 2);
		testSetters(ParameterType.class, 14);
		testSetters(Job.class, 1);
	}

	private void testSetters(Class<? extends EntityBaseBean> klass, int count) throws Exception {
		Map<Field, Method> results = eiHandler.getSettersForUpdate(klass);
		assertEquals(klass.getSimpleName() + " count", count, results.size());
		for (Entry<Field, Method> entry : results.entrySet()) {
			String cap = entry.getKey().getName();
			cap = Character.toUpperCase(cap.charAt(0)) + cap.substring(1);
			String m = entry.getValue().getName();
			assertTrue(klass.getSimpleName() + " value ", m.equals("set" + cap));
		}
	}

}
