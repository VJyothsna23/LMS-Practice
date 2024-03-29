package endPoints;

import Config.PropertiesFile;

public class Routes {
	
	public static String base_url = PropertiesFile.readPropertiesFile("base_url");
	public static String Invalid_base_url = PropertiesFile.readPropertiesFile("Invalid_base_url");
	
	//Batch Module
	//POST Login
	public static String Login_Url = base_url+"/login";	
	public static String Login_InvalidUrl = Invalid_base_url+"/login";
	public static String Login_InvalidEP = base_url+"/Login";
	
	//POST Create Batch
	public static String CreateBatch_Url = base_url+"/batches";	
	public static String CreateBatch_InvalidUrl = Invalid_base_url+"/batches";
	public static String CreateBatch_InvalidEP = base_url+"/Batch";
	
	//GET All Batches
	public static String GetBatches_Url = base_url+"/batches";
	public static String GetBatches_InvalidUrl = Invalid_base_url+"/batches";
	public static String GetBatches_InvalidEP = base_url+"/Batch";

	//GET Batch by BatchID
	public static String GetBatchID_Url = base_url+"/batches/batchId/{{batchId}}";
	public static String GetBatchID_InvalidUrl = Invalid_base_url+"/batches/batchId/{{batchId}}";
	public static String GetBatchID_InvalidEP = base_url+"/batchId/{{batchId}}";
    public static String GetBatchID_InvalidID = base_url+"/batches/batchId";
    
  //GET Batch by ProgramID
  	public static String GetProgramID_Url = base_url+"/batches/program/16449";
  	public static String GetProgramID_InvalidUrl = Invalid_base_url+"/batches/program/16449";
  	public static String GetProgramID_InvalidEP = base_url+"/program/16449";
    public static String GetProgramID_InvalidID = base_url+"/batches/program";

	//GET Batch by BatchName
	public static String GetBatchName_Url = base_url+"/batches/batchName/{{batchName}}";
	public static String GetBatchName_InvalidUrl = Invalid_base_url+"/batches/batchName/{{batchName}}";
	public static String GetBatchName_InvalidEP = base_url+"/batchName/{{batchName}}";
	public static String GetBatchName_InvalidFN = base_url+"/batches/batchName";
	
	//PUT Update Batch
	public static String UpdateBatch_Url = base_url+"/batches/{{batchId}}";
	public static String UpdateBatch_InvalidUrl = Invalid_base_url+"/batches/{{batchId}}";
	public static String UpdateBatch_InvalidEP = base_url+"/batch/{{batchId}}";
	public static String UpdateBatch_InvalidID = base_url+"/batches";
	
	//DELETE Batch 
	public static String DeleteBatch_Url = base_url+"/batches/{{batchId}}";
	public static String DeleteBatch_InvalidUrl = Invalid_base_url+"/batches/{{batchId}}";
	public static String DeleteBatch_InvalidEP = base_url+"/batch/{{batchId}}";
	public static String DeleteBatch_InvalidID = base_url+"/batches";
	
	// Program Module
	
	//User Module
	

}
