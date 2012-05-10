package uk.icat3.parser;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;

import uk.icat3.entity.EntityBaseBean;
import uk.icat3.exceptions.BadParameterException;
import uk.icat3.exceptions.IcatInternalException;

public class TestSearchQuery {

	private void testGood(List<Token> tokens, List<String> res, String top) throws ParserException,
			IcatInternalException, BadParameterException {
		Input input = new Input(tokens);
		SearchQuery sq = new SearchQuery(input);
		assertNull(input.peek(0));

		Set<String> relatedEntityNames = new HashSet<String>();
		for (Class<? extends EntityBaseBean> bean : sq.getRelatedEntities()) {
			relatedEntityNames.add(bean.getSimpleName());
		}
		
		System.out.println(sq.getIncludes());

		assertEquals("Related entities", new HashSet<String>(res), relatedEntityNames);
	}

	@Test
	public void testGood1() throws Exception {
		List<Token> tokens = Tokenizer.getTokens("Dataset INCLUDE Datafile, 1 [id = 5]");
		List<String> el = Collections.emptyList();
		testGood(tokens, el, "Dataset");
	}

	@Test
	public void testGood2() throws Exception {
		List<Token> tokens = Tokenizer.getTokens("Dataset INCLUDE 1 [id != 5]");
		List<String> el = Collections.emptyList();
		testGood(tokens, el, "Dataset");
	}

	@Test
	public void testGood3() throws Exception {
		List<Token> tokens = Tokenizer.getTokens("Dataset INCLUDE Datafile [id != 53]");
		List<String> el = Collections.emptyList();
		testGood(tokens, el, "Dataset");
	}

	@Test
	public void testGood4() throws Exception {
		List<Token> tokens = Tokenizer.getTokens("Dataset [id != 573]");
		List<String> el = Collections.emptyList();
		testGood(tokens, el, "Dataset");
	}
}