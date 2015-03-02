<?php

use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;
use FloatingPoint\Grapevine\Modules\Categories\Data\Category;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends MinkContext implements Context, SnippetAcceptingContext
{
    protected static $startingCategory;

    /**
     * @BeforeScenario
     */
    public function setup()
    {
        \DB::table('categories')->truncate();
        \DB::table('replies')->truncate();
        \DB::table('topics')->truncate();
    }

    /**
     * @AfterScenario
     */
    public function cleanDB($event)
    {
        \DB::table('categories')->truncate();
        \DB::table('replies')->truncate();
        \DB::table('topics')->truncate();
    }

    /**
     * @Given I have an existing category
     */
    public function iHaveAnExistingCategory()
    {
        $category = Category::create([
            'title'       => 'Existing Category',
            'description' => 'My existing category',
        ]);

        return $category;
    }
}
