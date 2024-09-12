@isTest
public with sharing class ERRAnalyticsWaveTemplateTest {

    static testMethod void testOnConfigurationRetrieval() {
        wavetemplate.WaveTemplateInfo template = wavetemplate.Test.getWaveTemplateInfoForApexTesting('Einstein_Reply_Recommendations_Value');

        ERRAnalyticsWaveTemplateConfig mod = new ERRAnalyticsWaveTemplateConfig();
        mod.onConfigurationRetrieval(template);
    }

    static testMethod void testBeforeAppUpdate() {
        wavetemplate.WaveTemplateInfo template = wavetemplate.Test.getWaveTemplateInfoForApexTesting('Einstein_Reply_Recommendations_Value');
        wavetemplate.Answers answers  = wavetemplate.Test.getDefaultAnswersForApexTesting('Einstein_Reply_Recommendations_Value');

        Map<string, wavetemplate.VariableDefinition> variables = template.getVariables();

        //Test the beforeAppUpdate method in your Apex Modifier Class
        ERRAnalyticsWaveTemplateConfig mod = new ERRAnalyticsWaveTemplateConfig();
        mod.beforeAppCreate(template, answers);

        
        //Assert CurrencyCode not empty
        String currencyCode = (String) answers.get('Computed_CurrencyCode');
        System.assertNotEquals(null,currencyCode,'CurrencyCode must not be null');
        
    } 
    
    
}