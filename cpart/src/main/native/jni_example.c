#include <stdio.h>
#include <stdlib.h>
#include <jni.h>
#include <nativeStuff.h>

JNIEXPORT jstring JNICALL Java_timestop_Main_get(JNIEnv *, jobject) {
 return "Hi from C++";
};