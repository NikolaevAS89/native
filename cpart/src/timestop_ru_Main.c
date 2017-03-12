#include <stdio.h>
#include <stdlib.h>
#include <jni.h>
#include <timestop_ru_Main.h>


#ifdef __cplusplus
JNIEXPORT jobject JNICALL Java_timestop_ru_Main_get
  (JNIEnv *env, jobject obj){
  jclass class_link = env->FindClass("timestop.ru.Main");
  jmethodID method_id = env->GetMethodID(class_link, "getV", "()Ljava/lang/String");
  jobject res = env->CallObjectMethod(obj, method_id);
  return (jstring)res;
};
#else
JNIEXPORT jstring JNICALL Java_timestop_ru_Main_get
  (JNIEnv *env, jobject obj){
  jclass class_link = (*env)->FindClass(env, "timestop/ru/Main");
  jmethodID method_id = (*env)->GetMethodID(env, class_link, "getV", "()Ljava/lang/String;");
  jobject res = (*env)->CallObjectMethod(env, obj, method_id);
  /*jstring t = (*env)->NewStringUTF(env, "Hi from C :)");*/
  return res;
};
#endif