package org.xtext.example.mydsl.tests

import org.eclipse.xtext.testing.AbstractLanguageServerTest
import org.junit.jupiter.api.Test

abstract class AbstractTestLangLanguageServerTest extends AbstractLanguageServerTest {
    
    new() {
        super("mydsl")
    }
    
}

class CompletionTest extends AbstractTestLangLanguageServerTest {
   
    @Test
    def void testCompletion_01() {
        testCompletion [
            model = ''
            expectedCompletionItems = '''
				package -> package [[0, 0] .. [0, 0]]
				type -> type [[0, 0] .. [0, 0]]
				Sample Snippet -> type ${1|A,B,C|} {
				                
				            } [[0, 0] .. [0, 0]]
			'''
        ]
    }
}
