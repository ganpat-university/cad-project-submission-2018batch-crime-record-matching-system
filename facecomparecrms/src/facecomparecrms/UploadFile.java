package facecomparecrms;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;

import java.io.File;
import java.util.List;


public class UploadFile{
	public String upload(String file1,String file2,String file1a,String file2a){
		AmazonS3 amazonS3 = AmazonS3Client.builder().withRegion("us-east-1").build();
		String bucket_name="crmsfc1";
		String key_name1=file1a;
		String key_name2=file2a;
		String file_path1=file1;
		String file_path2=file2;
		amazonS3.putObject(bucket_name,key_name1,new File(file_path1));
		amazonS3.putObject(bucket_name,key_name2,new File(file_path2));
		return "1";
	}
}