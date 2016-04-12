package php;

class Tokens
{
	/**
	 * Syntax: abstract
	 * Reference: <a href="language.oop5.abstract.php">Class Abstraction</a> (available since PHP 5.0.0)
	 */
	static var T_ABSTRACT(default, null) : Int;
	
	/**
	 * Syntax: &=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_AND_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: array()
	 * Reference: <span><a href="function.array.php">array()</a></span>, <a href="language.types.array.php#language.types.array.syntax">array syntax</a>
	 */
	static var T_ARRAY(default, null) : Int;
	
	/**
	 * Syntax: (array)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_ARRAY_CAST(default, null) : Int;
	
	/**
	 * Syntax: as
	 * Reference: <a href="control-structures.foreach.php">foreach</a>
	 */
	static var T_AS(default, null) : Int;
	
	/**
	 * Syntax:
	 * Reference: anything below ASCII 32 except \t (0x09), \n (0x0a) and \r (0x0d)
	 */
	static var T_BAD_CHARACTER(default, null) : Int;

	/**
	 * Syntax: &&
	 * Reference: <a href="language.operators.logical.php">logical operators</a>
	 */
	static var T_BOOLEAN_AND(default, null) : Int;

	/**
	 * Syntax: ||
	 * Reference: <a href="language.operators.logical.php">logical operators</a>
	 */
	static var T_BOOLEAN_OR(default, null) : Int;
	
	/**
	 * Syntax: (bool) or (boolean)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_BOOL_CAST(default, null) : Int;
	
	/**
	 * Syntax: break
	 * Reference: <a href="control-structures.break.php">break</a>
	 */
	static var T_BREAK(default, null) : Int;
	
	/**
	 * Syntax: callable
	 * Reference: <a href="language.types.callable.php">callable</a>
	 */
	static var T_CALLABLE(default, null) : Int;
	
	/**
	 * Syntax: case
	 * Reference: <a href="control-structures.switch.php">switch</a>
	 */
	static var T_CASE(default, null) : Int;
	
	/**
	 * Syntax: catch
	 * Reference: <a href="language.exceptions.php">Exceptions</a> (available since PHP 5.0.0)
	 */
	static var T_CATCH(default, null) : Int;

	/**
	 * Reference: not used anymore
	 */
	static var T_CHARACTER(default, null) : Int;

	/**
	 * Syntax: class
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_CLASS(default, null) : Int;
	
	/**
	 * Syntax: __CLASS__
	 * Reference: <a href="language.constants.predefined.php">magic constants</a>
	 */
	static var T_CLASS_C(default, null) : Int;
	
	/**
	 * Syntax: clone
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_CLONE(default, null) : Int;
	
	/**
	 * Syntax: ?> or %>
	 * Reference: <a href="language.basic-syntax.phpmode.php">escaping from HTML</a>
	 */
	static var T_CLOSE_TAG(default, null) : Int;
	
	/**
	 * Syntax: // or #, and /*
	 * Reference: <a href="language.basic-syntax.comments.php">comments</a>
	 */
	static var T_COMMENT(default, null) : Int;
	
	/**
	 * Syntax: .=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_CONCAT_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: const
	 * Reference: <a href="language.constants.php">class constants</a>
	 */
	static var T_CONST(default, null) : Int;
	
	/**
	 * Syntax: "foo" or 'bar'
	 * Reference: <a href="language.types.string.php#language.types.string.syntax">string syntax</a>
	 */
	static var T_CONSTANT_ENCAPSED_STRING(default, null) : Int;
	
	/**
	 * Syntax: continue
	 * Reference: <a href="control-structures.continue.php">continue</a>
	 */
	static var T_CONTINUE(default, null) : Int;
	
	/**
	 * Syntax: {$
	 * Reference: <a href="language.types.string.php#language.types.string.parsing.complex">complex variable parsed syntax</a>
	 */
	static var T_CURLY_OPEN(default, null) : Int;
	
	/**
	 * Syntax: --
	 * Reference: <a href="language.operators.increment.php">incrementing/decrementing operators</a>
	 */
	static var T_DEC(default, null) : Int;
	
	/**
	 * Syntax: declare
	 * Reference: <a href="control-structures.declare.php">declare</a>
	 */
	static var T_DECLARE(default, null) : Int;
	
	/**
	 * Syntax: default
	 * Reference: <a href="control-structures.switch.php">switch</a>
	 */
	static var T_DEFAULT(default, null) : Int;
	
	/**
	 * Syntax: __DIR__
	 * Reference: <a href="language.constants.predefined.php">magic constants</a>
	 * (available since PHP 5.3.0)
	 */
	static var T_DIR(default, null) : Int;
	
	/**
	 * Syntax: /=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_DIV_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: 0.12, etc.
	 * Reference: <a href="language.types.float.php">floating point numbers</a>
	 */
	static var T_DNUMBER(default, null) : Int;
	
	/**
	 * Syntax: /**
	 * Reference: <a href="language.basic-syntax.comments.php">PHPDoc style comments</a>
	 */
	static var T_DOC_COMMENT(default, null) : Int;
	
	/**
	 * Syntax: do
	 * Reference: <a href="control-structures.do.while.php">do..while</a>
	 */
	static var T_DO(default, null) : Int;
	
	/**
	 * Syntax: ${
	 * Reference: <a href="language.types.string.php#language.types.string.parsing.complex">complex variable parsed syntax</a>
	 */
	static var T_DOLLAR_OPEN_CURLY_BRACES(default, null) : Int;
	
	/**
	 * Syntax: =>
	 * Reference: <a href="language.types.array.php#language.types.array.syntax">array syntax</a>
	 */
	static var T_DOUBLE_ARROW(default, null) : Int;
	
	/**
	 * Syntax: (real), (double) or (float)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_DOUBLE_CAST(default, null) : Int;
	
	/**
	 * Syntax: ::
	 * Reference: see <strong><code>T_PAAMAYIM_NEKUDOTAYIM</code></strong> below
	 */
	static var T_DOUBLE_COLON(default, null) : Int;
	
	/**
	 * Syntax: echo
	 * Reference: <span><a href="function.echo.php">echo</a></span>
	 */
	static var T_ECHO(default, null) : Int;
	
	/**
	 * Syntax: ...
	 * Reference: <a href="functions.arguments.php#functions.variable-arg-list.new">function arguments</a>
	 * (available since PHP 5.6.0)
	 */
	static var T_ELLIPSIS(default, null) : Int;
	
	/**
	 * Syntax: else
	 * Reference: <a href="control-structures.else.php">else</a>
	 */
	static var T_ELSE(default, null) : Int;
	
	/**
	 * Syntax: elseif
	 * Reference: <a href="control-structures.elseif.php">elseif</a>
	 */
	static var T_ELSEIF(default, null) : Int;
	
	/**
	 * Syntax: empty
	 * Reference: <span><a href="function.empty.php">empty()</a></span>
	 */
	static var T_EMPTY(default, null) : Int;
	
	/**
	 * Syntax: " $a"
	 * Reference: <a href="language.types.string.php#language.types.string.parsing">constant part of
	string with variables</a>
	 */
	static var T_ENCAPSED_AND_WHITESPACE(default, null) : Int;
	
	/**
	 * Syntax: enddeclare
	 * Reference: <a href="control-structures.declare.php">declare</a>, <a href="control-structures.alternative-syntax.php">alternative syntax</a>
	 */
	static var T_ENDDECLARE(default, null) : Int;
	
	/**
	 * Syntax: endfor
	 * Reference: <a href="control-structures.for.php">for</a>, <a href="control-structures.alternative-syntax.php">alternative syntax</a>
	 */
	static var T_ENDFOR(default, null) : Int;
	
	/**
	 * Syntax: endforeach
	 * Reference: <a href="control-structures.foreach.php">foreach</a>, <a href="control-structures.alternative-syntax.php">alternative syntax</a>
	 */
	static var T_ENDFOREACH(default, null) : Int;
	
	/**
	 * Syntax: endif
	 * Reference: <a href="control-structures.if.php">if</a>, <a href="control-structures.alternative-syntax.php">alternative syntax</a>
	 */
	static var T_ENDIF(default, null) : Int;
	
	/**
	 * Syntax: endswitch
	 * Reference: <a href="control-structures.switch.php">switch</a>, <a href="control-structures.alternative-syntax.php">alternative syntax</a>
	 */
	static var T_ENDSWITCH(default, null) : Int;
	
	/**
	 * Syntax: endwhile
	 * Reference: <a href="control-structures.while.php">while</a>, <a href="control-structures.alternative-syntax.php">alternative syntax</a>
	 */
	static var T_ENDWHILE(default, null) : Int;
	
	/**
	 * Reference: <a href="language.types.string.php#language.types.string.syntax.heredoc">heredoc syntax</a>
	 */
	static var T_END_HEREDOC(default, null) : Int;

	/**
	 * Syntax: eval()
	 * Reference: <span><a href="function.eval.php">eval()</a></span>
	 */
	static var T_EVAL(default, null) : Int;
	
	/**
	 * Syntax: exit or die
	 * Reference: <span><a href="function.exit.php">exit()</a></span>, <span><a href="function.die.php">die()</a></span>
	 */
	static var T_EXIT(default, null) : Int;
	
	/**
	 * Syntax: extends
	 * Reference: <a href="language.oop5.basic.php#language.oop5.basic.extends">extends</a>, <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_EXTENDS(default, null) : Int;
	
	/**
	 * Syntax: __FILE__
	 * Reference: <a href="language.constants.predefined.php">magic constants</a>
	 */
	static var T_FILE(default, null) : Int;
	
	/**
	 * Syntax: final
	 * Reference: <a href="language.oop5.final.php">Final Keyword</a>
	 */
	static var T_FINAL(default, null) : Int;
	
	/**
	 * Syntax: finally
	 * Reference: <a href="language.exceptions.php">Exceptions</a> (available since PHP 5.5.0)
	 */
	static var T_FINALLY(default, null) : Int;
	
	/**
	 * Syntax: for
	 * Reference: <a href="control-structures.for.php">for</a>
	 */
	static var T_FOR(default, null) : Int;
	
	/**
	 * Syntax: foreach
	 * Reference: <a href="control-structures.foreach.php">foreach</a>
	 */
	static var T_FOREACH(default, null) : Int;
	
	/**
	 * Syntax: function or cfunction
	 * Reference: <a href="language.functions.php">functions</a>
	 */
	static var T_FUNCTION(default, null) : Int;
	
	/**
	 * Syntax: __FUNCTION__
	 * Reference: <a href="language.constants.predefined.php">magic constants</a>
	 */
	static var T_FUNC_C(default, null) : Int;
	
	/**
	 * Syntax: global
	 * Reference: <a href="language.variables.scope.php">variable scope</a>
	 */
	static var T_GLOBAL(default, null) : Int;
	
	/**
	 * Syntax: goto
	 * Reference: <a href="control-structures.goto.php"> (available since PHP 5.3.0)</a>
	 */
	static var T_GOTO(default, null) : Int;
	
	/**
	 * Syntax: __halt_compiler()
	 * Reference: <a href="function.halt-compiler.php">__halt_compiler</a> (available since PHP 5.1.0)
	 */
	static var T_HALT_COMPILER(default, null) : Int;
	
	/**
	 * Syntax: if
	 * Reference: <a href="control-structures.if.php">if</a>
	 */
	static var T_IF(default, null) : Int;
	
	/**
	 * Syntax: implements
	 * Reference: <a href="language.oop5.interfaces.php">Object Interfaces</a>
	 */
	static var T_IMPLEMENTS(default, null) : Int;
	
	/**
	 * Syntax: ++
	 * Reference: <a href="language.operators.increment.php">incrementing/decrementing operators</a>
	 */
	static var T_INC(default, null) : Int;
	
	/**
	 * Syntax: include()
	 * Reference: <span><a href="function.include.php">include</a></span>
	 */
	static var T_INCLUDE(default, null) : Int;
	
	/**
	 * Syntax: include_once()
	 * Reference: <span><a href="function.include-once.php">include_once</a></span>
	 */
	static var T_INCLUDE_ONCE(default, null) : Int;
	
	/**
	 * Syntax: 
	 * Reference: <a href="language.basic-syntax.phpmode.php">text outside PHP</a>
	 */
	static var T_INLINE_HTML(default, null) : Int;

	/**
	 * Syntax: instanceof
	 * Reference: <a href="language.operators.type.php">type operators</a>
	 */
	static var T_INSTANCEOF(default, null) : Int;
	
	/**
	 * Syntax: insteadof
	 * Reference: <a href="language.oop5.traits.php">Traits</a> (available since PHP 5.4.0)
	 */
	static var T_INSTEADOF(default, null) : Int;
	
	/**
	 * Syntax: (int) or (integer)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_INT_CAST(default, null) : Int;
	
	/**
	 * Syntax: interface
	 * Reference: <a href="language.oop5.interfaces.php">Object Interfaces</a>
	 */
	static var T_INTERFACE(default, null) : Int;
	
	/**
	 * Syntax: isset()
	 * Reference: <span><a href="function.isset.php">isset()</a></span>
	 */
	static var T_ISSET(default, null) : Int;
	
	/**
	 * Syntax: ==
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 */
	static var T_IS_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: >=
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 */
	static var T_IS_GREATER_OR_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: ===
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 */
	static var T_IS_IDENTICAL(default, null) : Int;
	
	/**
	 * Syntax: != or <>
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 */
	static var T_IS_NOT_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: !==
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 */
	static var T_IS_NOT_IDENTICAL(default, null) : Int;
	
	/**
	 * Syntax: <=
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 */
	static var T_IS_SMALLER_OR_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: <=>
	 * Reference: <a href="language.operators.comparison.php">comparison operators</a>
	 * (available since PHP 7.0.0)
	 */
	static var T_SPACESHIP(default, null) : Int;
	
	/**
	 * Syntax: __LINE__
	 * Reference: <a href="language.constants.predefined.php">magic constants</a>
	 */
	static var T_LINE(default, null) : Int;
	
	/**
	 * Syntax: list()
	 * Reference: <span><a href="function.list.php">list()</a></span>
	 */
	static var T_LIST(default, null) : Int;
	
	/**
	 * Syntax: 123, 012, 0x1ac, etc.
	 * Reference: <a href="language.types.integer.php">integers</a>
	 */
	static var T_LNUMBER(default, null) : Int;
	
	/**
	 * Syntax: and
	 * Reference: <a href="language.operators.logical.php">logical operators</a>
	 */
	static var T_LOGICAL_AND(default, null) : Int;
	
	/**
	 * Syntax: or
	 * Reference: <a href="language.operators.logical.php">logical operators</a>
	 */
	static var T_LOGICAL_OR(default, null) : Int;
	
	/**
	 * Syntax: xor
	 * Reference: <a href="language.operators.logical.php">logical operators</a>
	 */
	static var T_LOGICAL_XOR(default, null) : Int;
	
	/**
	 * Syntax: __METHOD__
	 * Reference: <a href="language.constants.predefined.php">magic constants</a>
	 */
	static var T_METHOD_C(default, null) : Int;
	
	/**
	 * Syntax: -=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_MINUS_EQUAL(default, null) : Int;

	/**
	 * Syntax: %=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_MOD_EQUAL(default, null) : Int;

	/**
	 * Syntax: *=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_MUL_EQUAL(default, null) : Int;

	/**
	 * Syntax: namespace
	 * Reference: <a href="language.namespaces.php">namespaces</a> (available since PHP 5.3.0)
	 */
	static var T_NAMESPACE(default, null) : Int;

	/**
	 * Syntax: __NAMESPACE__
	 * Reference: <a href="language.namespaces.php">namespaces</a>
	 * (available since PHP 5.3.0)
	 */
	static var T_NS_C(default, null) : Int;

	/**
	 * Syntax: \
	 * Reference: <a href="language.namespaces.php">namespaces</a>
	 * (available since PHP 5.3.0)
	 */
	static var T_NS_SEPARATOR(default, null) : Int;

	/**
	 * Syntax: new
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_NEW(default, null) : Int;

	/**
	 * Syntax: "$a[0]"
	 * Reference: <a href="language.types.string.php#language.types.string.parsing">numeric array index inside string</a>
	 */
	static var T_NUM_STRING(default, null) : Int;

	/**
	 * Syntax: (object)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_OBJECT_CAST(default, null) : Int;
	
	/**
	 * Syntax: ->
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_OBJECT_OPERATOR(default, null) : Int;

	/**
	 * Syntax: <?php, <? or <%
	 * Reference: <a href="language.basic-syntax.phpmode.php">escaping from HTML</a>
	 */
	static var T_OPEN_TAG(default, null) : Int;

	/**
	 * Syntax: <?= or <%=
	 * Reference: <a href="language.basic-syntax.phpmode.php">escaping	from HTML</a>
	 */
	static var T_OPEN_TAG_WITH_ECHO(default, null) : Int;

	/**
	 * Syntax: |=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_OR_EQUAL(default, null) : Int;

	/**
	 * Syntax: ::
	 * Reference: <a href="language.oop5.paamayim-nekudotayim.php">::</a>. Also defined as
	 * <strong><code>T_DOUBLE_COLON</code></strong>.
	 */
	static var T_PAAMAYIM_NEKUDOTAYIM(default, null) : Int;

	/**
	 * Syntax: +=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_PLUS_EQUAL(default, null) : Int;

	/**
	 * Syntax: **
	 * Reference: <a href="language.operators.arithmetic.php">arithmetic operators</a>
	 * (available since PHP 5.6.0)
	 */
	static var T_POW(default, null) : Int;

	/**
	 * Syntax: **=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 * (available since PHP 5.6.0)
	 */
	static var T_POW_EQUAL(default, null) : Int;

	/**
	 * Syntax: print()
	 * Reference: <span><a href="function.print.php">print</a></span>
	 */
	static var T_PRINT(default, null) : Int;

	/**
	 * Syntax: private
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_PRIVATE(default, null) : Int;

	/**
	 * Syntax: public
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_PUBLIC(default, null) : Int;

	/**
	 * Syntax: protected
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_PROTECTED(default, null) : Int;

	/**
	 * Syntax: require()
	 * Reference: <span><a href="function.require.php">require</a></span>
	 */
	static var T_REQUIRE(default, null) : Int;

	/**
	 * Syntax: require_once()
	 * Reference: <span><a href="function.require-once.php">require_once</a></span>
	 */
	static var T_REQUIRE_ONCE(default, null) : Int;

	/**
	 * Syntax: return
	 * Reference: <a href="functions.returning-values.php">returning values</a>
	 */
	static var T_RETURN(default, null) : Int;

	/**
	 * Syntax: <<
	 * Reference: <a href="language.operators.bitwise.php">bitwise operators</a>
	 */
	static var T_SL(default, null) : Int;

	/**
	 * Syntax: <<=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_SL_EQUAL(default, null) : Int;

	/**
	 * Syntax: >>
	 * Reference: <a href="language.operators.bitwise.php">bitwise operators</a>
	 */
	static var T_SR(default, null) : Int;

	/**
	 * Syntax: >>=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_SR_EQUAL(default, null) : Int;

	/**
	 * Syntax: <<<
	 * Reference: <a href="language.types.string.php#language.types.string.syntax.heredoc">heredoc syntax</a>
	 */
	static var T_START_HEREDOC(default, null) : Int;

	/**
	 * Syntax: static
	 * Reference: <a href="language.variables.scope.php">variable scope</a>
	 */
	static var T_STATIC(default, null) : Int;

	/**
	 * Syntax: parent, self, etc.
	 * Reference: identifiers, e.g. keywords like <em>parent</em> and <em>self</em>,
	 * function names, class names and more are matched.
	 * See also <strong><code>T_CONSTANT_ENCAPSED_STRING</code></strong>.
	 */
	static var T_STRING(default, null) : Int;

	/**
	 * Syntax: (string)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_STRING_CAST(default, null) : Int;

	/**
	 * Syntax: "${a
	 * Reference: <a href="language.types.string.php#language.types.string.parsing.complex">complex
	 * variable parsed syntax</a>
	 */
	static var T_STRING_VARNAME(default, null) : Int;

	/**
	 * Syntax: switch
	 * Reference: <a href="control-structures.switch.php">switch</a>
	 */
	static var T_SWITCH(default, null) : Int;

	/**
	 * Syntax: throw
	 * Reference: <a href="language.exceptions.php">Exceptions</a>
	 */
	static var T_THROW(default, null) : Int;
	
	/**
	 * Syntax: trait
	 * Reference: <a href="language.oop5.traits.php">Traits</a> (available since PHP 5.4.0)
	 */
	static var T_TRAIT(default, null) : Int;

	/**
	 * Syntax: __TRAIT__
	 * Reference: <a href="">__TRAIT__</a> (available since PHP 5.4.0)
	 */
	static var T_TRAIT_C(default, null) : Int;

	/**
	 * Syntax: try
	 * Reference: <a href="language.exceptions.php">Exceptions</a>
	 */
	static var T_TRY(default, null) : Int;

	/**
	 * Syntax: unset()
	 * Reference: <span><a href="function.unset.php">unset()</a></span>
	 */
	static var T_UNSET(default, null) : Int;

	/**
	 * Syntax: (unset)
	 * Reference: <a href="language.types.type-juggling.php#language.types.typecasting">type-casting</a>
	 */
	static var T_UNSET_CAST(default, null) : Int;

	/**
	 * Syntax: use
	 * Reference: <a href="language.namespaces.php">namespaces</a>
	 * (available since PHP 5.3.0; reserved since PHP 4.0.0)
	 */
	static var T_USE(default, null) : Int;

	/**
	 * Syntax: var
	 * Reference: <a href="language.oop5.php">classes and objects</a>
	 */
	static var T_VAR(default, null) : Int;

	/**
	 * Syntax: $foo
	 * Reference: <a href="language.variables.php">variables</a>
	 */
	static var T_VARIABLE(default, null) : Int;

	/**
	 * Syntax: while
	 * Reference: <a href="control-structures.while.php">while</a>, <a href="control-structures.do.while.php">do..while</a>
	 */
	static var T_WHILE(default, null) : Int;
	
	/**
	 * Syntax: ^=
	 * Reference: <a href="language.operators.assignment.php">assignment operators</a>
	 */
	static var T_XOR_EQUAL(default, null) : Int;
	
	/**
	 * Syntax: \t \r\n
	 */
	static var T_WHITESPACE(default, null) : Int;
	
	/**
	 * Syntax: yield
	 * Reference: <a href="language.generators.syntax.php#control-structures.yield">generators</a> (available since PHP 5.5.0)
	 */
	static var T_YIELD(default, null) : Int;
}