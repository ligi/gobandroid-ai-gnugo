#include <jni.h>

#include <stdio.h>
#include <string.h>
#include "gtp.h"

char gtp_input_line[100];
char gtp_output_line[GTP_BUFSIZE*2];

void
Java_org_ligi_gobandroid_ai_gnugo_GnuGoConnection_initGTP (
	JNIEnv*	env,
	jclass clasz,
	jfloat memory
	)
{
	init_gtp (memory);
}

jstring
Java_org_ligi_gobandroid_ai_gnugo_GnuGoConnection_playGTP (
	JNIEnv*	env,
	jclass clasz,
	jstring input
	)
{
	char *cinput = (char*)(*env)->GetStringUTFChars (env, input, NULL);
	strcpy (gtp_input_line, cinput);
	gtp_output_line[0] = '\0';
	play_gtp ();
	(*env)->ReleaseStringUTFChars (env, input, cinput);
	return (*env)->NewStringUTF (env, gtp_output_line);
}

/*
FILE *to_gnugo_stream, *from_gnugo_stream;

jint
Java_de_agrothe_go_MainActivity_initGTP (
	JNIEnv*	env,
	jclass clasz,
	jobject toGnuGoFd,
	jobject fromGnuGoFd
	)
{
	int fdToGnuGo[2], fdFromGnuGo[2];
	if (pipe (fdToGnuGo) == -1)
		return 1;
	if (pipe (fdFromGnuGo) == -1)
		return 2;

	if (!(to_gnugo_stream = (FILE *)fdopen (fdToGnuGo[0], "r")))
		return 3;
	if (!(from_gnugo_stream = (FILE *)fdopen (fdFromGnuGo[1], "w")))
		return 4;

   	jclass class_fdesc;
	jfieldID field_fd;
	class_fdesc = (*env)->GetObjectClass (env, toGnuGoFd);
	field_fd = (*env)->GetFieldID(env, class_fdesc, "descriptor", "I");
	(*env)->SetIntField(env, toGnuGoFd, field_fd, fdToGnuGo[1]);
	class_fdesc = (*env)->GetObjectClass (env, fromGnuGoFd);
	field_fd = (*env)->GetFieldID(env, class_fdesc, "descriptor", "I");
	(*env)->SetIntField(env, fromGnuGoFd, field_fd, fdFromGnuGo[0]);

	return 0;
}

void
Java_de_agrothe_go_MainActivity_playGTP (
	JNIEnv*	env,
	jclass clasz
	)
{
	play_gtp (to_gnugo_stream, from_gnugo_stream, NULL, 0);
	// flcose (to_gnugo_stream);
	// fclose (from_gnugo_stream);
}
*/


