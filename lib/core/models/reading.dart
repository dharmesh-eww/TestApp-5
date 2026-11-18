class HoroscopeReading{
 const HoroscopeReading({required this.id,required this.signId,required this.periodType,required this.periodStart,required this.periodEnd,required this.category,required this.title,required this.body,required this.prompt,required this.status,this.publishedAt});
 final String id,signId,periodType,periodStart,periodEnd,category,title,body,prompt,status;final String? publishedAt;
 factory HoroscopeReading.fromJson(Map<String,dynamic> j)=>HoroscopeReading(id:j['id'] as String,signId:(j['sign_id']??j['sign']) as String,periodType:(j['period_type']??'daily') as String,periodStart:(j['period_start']??j['date']) as String,periodEnd:(j['period_end']??j['date']) as String,category:(j['category']??'general') as String,title:j['title'] as String,body:j['body'] as String,prompt:(j['prompt']??'') as String,status:(j['status']??'published') as String,publishedAt:j['published_at'] as String?);
 Map<String,Object?> toJson()=>{'id':id,'sign_id':signId,'period_type':periodType,'period_start':periodStart,'period_end':periodEnd,'category':category,'title':title,'body':body,'prompt':prompt,'status':status,'published_at':publishedAt};
}
class LunarEvent{
 const LunarEvent({required this.id,required this.phase,required this.timestampUtc,required this.sourceTimezone,required this.sourceName,required this.datasetVersion,required this.verifiedAt,required this.note,required this.sourceUrl});
 final String id,phase,timestampUtc,sourceTimezone,sourceName,datasetVersion,verifiedAt,note,sourceUrl;
 factory LunarEvent.fromJson(Map<String,dynamic> j)=>LunarEvent(id:j['id'],phase:j['phase'],timestampUtc:j['timestamp_utc'],sourceTimezone:j['source_timezone'],sourceName:j['source_name'],datasetVersion:j['dataset_version'],verifiedAt:j['verified_at'],note:j['educational_note']??'',sourceUrl:j['source_url']);
}
