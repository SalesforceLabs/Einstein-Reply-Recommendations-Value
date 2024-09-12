public class ERRAnalyticsWaveTemplateConfig extends wavetemplate.WaveTemplateConfigurationModifier {



public override void beforeAppCreate(wavetemplate.WaveTemplateInfo waveTemplate, wavetemplate.Answers answers)
{

    // //Check if there is atleast one MlRetrainingFeedback in this org 
    // String rrQuery = 'SELECT count() FROM MlRetrainingFeedback LIMIT 1';
    // Integer rrCount = database.countQuery(rrQuery);

    // // Checking for presence of records in the objects 
    // if(rrCount == 0)
    // {
    //   String ErrorMessage = 'Einstein Reply Recommendaions Value requires at least one record in the MlRetrainingFeedback Object';
    //   throw new wavetemplate.TemplateInterruptException(ErrorMessage);
    // }

        //Get DefaultCurrency
        String currencyCode = getDefaultCurrency();
        answers.put('Computed_CurrencyCode',currencyCode);
    }  


    static private String getDefaultCurrency() {
        return UserInfo.getDefaultCurrency();
    }

}