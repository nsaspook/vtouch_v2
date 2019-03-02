/**
 * @file
 *
 * @brief Tcl interface to CELLworks mbx.
 *
 * This file is part of the SECS library, meant to allow applications to
 * interface with the Brooks mbx.
 *
 * @cond 0
 * Copyright © 2008  Jan Nijtmans
 *
 * The latest version of this file can be downloaded from:
 *     <https://secs.svn.sourceforge.net/svnroot/secs/trunk/tcl/tclmbx.c>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7
 *
 * If you modify this Program, or any covered work, by linking or
 * combining it with libCw.a (or a modified version of that library),
 * containing parts covered by the terms of the Applied software license,
 * the licensors of this Program grant you additional permission to
 * convey the resulting work.
 *
 * @endcond
 */

/**
 * @mainpage Mbx package for Tcl
 *
 * @section intro_sec Introduction
 *
 * This package allows Tcl to interface with Brooks Software, mainly
 * CELLworks and Grapheq, by communicating to its Mbx bus. See:
 * - http://www3.brooks.com/pages/223_cellworks_grapheq.cfm
 *
 * Each Mbx message box has a name and a type. Opening a message
 * box in Tcl goes as follows. First, make the Mbx package available
 * to your script. Then define the MBX name you want to use. For example,
 * if you have your MBX name defined as `hostname`_mbx, you can simply do:
 * - <code>package require Mbx</code>
 * - <code>mbx name $env(HOSTNAME)_mbx</code>
 *
 * This only has to be done once. Then you can open a mailbox:
 *
 * - <code>set box [mbx open &lt;boxname&gt; &lt;type&gt;]</code>
 *
 * The type normally will be "m" (only open when it doesn't exist yet,
 * otherwise use the existing one), but can be any type described in
 * the Brooks manual.
 *
 * If you expect something from a mailbox, you can do:
 * - <code>$box receive <em>code</em> ?<em>code</em> ...? </code>
 *
 * Then, as soon as the message box receives a message your code
 * will be executed. If &lt;code&gt; is left out, the command
 * returns the code that is to be executed for this mailbox. If
 * <em>code</em> is the empty string, then the receive is canceled.
 *
 * If you want to send something to a mailbox and expect a reply
 * on some other mailbox, then you can do:
 * - <code>$box send &lt;message&gt; ?&lt;replybox&gt;?</code>
 *
 * Finally, you can close the mailbox:
 * - <code>$box close</code>
 *
 * This command has the effect that the $box command will be
 * removed, and that any pending receives will be canceled.
 * There are more commands, which are described in commands_sec
 *
 * @section install_sec Installation
 *
 * @subsection step1 Step 1: adapt the Makefile for your compiler.
 * All there is is a single C-file (tclmbx.c), which just needs to be
 * compiled as a shared library (libtclmbx.so) for your platform. It
 * needs to be linked with libCw.a and libtclstub.a, and the header
 * files &lt;CELLworks/mbx.h&gt; and &lt;tcl.h&gt; &lt;CELLworks/CWstring.h&gt;
 * need to be available. That's all.
 *
 * @subsection step2 Step 2: run make.
 * This will produce the file libtclmbx.so, which - together
 * with Mbx-?.?.?.tm - is everything you will need.
 *
 * @subsection step3 Step 3: copy Mbx-?.?.?.tm and libtclmbx.so anywhere
 * that Tcl can find it. Or, just let Tcl know where it is:
 * - ::tcl::tm::path add &lt;directory&gt;
 * - set the environment variable TCL8_5_TM_PATH to &lt;directory&gt;
 *
 * @section commands_sec Mbx Commands
 *
 * The Mbx command has 6 subcommands:
 * - buffersize: set or get the buffersize
 * - delay: set or get the maximum delay for polling
 * - info: get a list of all available mailboxes
 * - name: get or set the name of the MBX
 * - open: open a mailbox
 * - version: display the version of the Mbx library (empty if not present)
 *
 * If the 'buffersize', 'delay' and 'name' commands have an additional argument,
 * this argument will be used to set the parameter. Otherwise the current
 * value of this parameter is returned.
 *
 * The open command has the following form:
 * - open ?&lt;options&gt;? &lt;boxname&gt; ?&lt;code&gt; ...?
 *
 * If &lt;code&gt; is specified and not the empty string, then this code will be
 * executed as soon as a message arrives in the mailbox. See also the 'receive'
 * command for the exact syntax.
 *
 */


/** @cond 0 Make sure that we use Tcl stubs functions when possible */
#define USE_TCL_STUBS 1
/** @endcond */

#include <tcl.h>
#include <stdlib.h>
#include <string.h>
#include <CELLworks/mbx.h>
#include <CELLworks/CWstring.h>

/** @cond 0 Some hacks to assure that Mbx_Init is the only exported symbol in this library */
#undef TCL_STORAGE_CLASS
/** Make sure that only EXTERN functions are exported */
#define TCL_STORAGE_CLASS DLLEXPORT
#if defined(__GNUC__) && __GNUC__ > 3
/** make sure that under GCC 4.x , unused parameters don't cause a warning */
#    define UNUSED(param) param##_unused __attribute__ ((unused))
#else
/** make sure that unused parameters cannot be used */
#    define UNUSED(param) param##_unused
#endif
#ifndef CONST86
#   define CONST86
#endif
/** @endcond */

/**
 * Every time a message from some Mbx is expected, a new mbxevent
 * element is created, and added to the ::prepared linked list.
 *
 * As soon as the expected message is received, the element is removed
 * from the ::prepared linked list, two elements are appended to
 * mbxevent::cmd (received message and the reply mailbox).
 *
 * Finally, the event is pushed to Tcl's event queue for further
 * handling. As soon as Tcl is ready to handle it, mbxevent::cmd
 * is executed.
 */
typedef struct {
	/** event to be handled by Tcl. The Tcl_Event structure contains a
	 * 'nextPtr' element, which is used to link through to the next event */
	Tcl_Event event;
	MAILBOX id /** mailbox connect to this mbxevent */;
	Tcl_Interp *interp /** current interpreter */;
	Tcl_Obj *namespace /** namespace where command should be executed. (NULL = global namespace) */;
	Tcl_Obj *cmd /** command to be executed as soon as a message comes in. */;
} mbxevent;

/** info belonging to box command
 *
 * Every mailbox has its own Tcl command, and this structure remembers
 * which Mbx MAILBOX this command is for.
 */
typedef struct {
	MAILBOX id /** mailbox */;
	Tcl_Command cmd /** command token. Used to delete the command when the mailbox is closed */;
	Tcl_Obj *name /** original mailbox name */;
	int reply /** 1 if this is a replybox, 0 otherwise*/;
} boxcmdinfo;

/** linked list of all ::prepared mbxevents which are waiting for a message */
static mbxevent *prepared = NULL;

/** Execute event handling proc */
static int eventProc(
	Tcl_Event *evPtr /**< event to be handled */,
	int UNUSED(flags) /**< flags (not used) */
) {
	mbxevent *ev = (mbxevent *)evPtr;
	int argc;
	Tcl_Obj **objv;

	if (ev->namespace) {
		Tcl_Obj *obj[4];
		obj[0] = Tcl_NewStringObj("namespace", -1);
		obj[1] = Tcl_NewStringObj("eval", -1);
		obj[2] = ev->namespace;
		obj[3] = ev->cmd;
		ev->cmd = Tcl_NewListObj(4, obj);
		Tcl_IncrRefCount(ev->cmd);
		Tcl_DecrRefCount(obj[3]);
		Tcl_DecrRefCount(ev->namespace);
	}
	if (Tcl_ListObjGetElements(ev->interp, ev->cmd, &argc, &objv) == TCL_OK) {
		if (Tcl_EvalObjv(ev->interp, argc, objv, TCL_EVAL_GLOBAL) == TCL_ERROR) {
			Tcl_AddErrorInfo(ev->interp, "\n    (\"Mbx\" receive callback script)");
			Tcl_BackgroundError(ev->interp);
		}
	}
	Tcl_DecrRefCount(ev->cmd);
	return 1;
}

static void eventCheck(ClientData, int);

/** Inserts/Removes new event in ::prepared event list
 *
 * Side effect: When removing the last entry, mbxWaitCancel()
 *              is called.
 *              When inserting the first entry, mbxWaitSocket()
 *              is called.
 *              Any other modification in the list results in both
 *              mbxWaitCancel() and mbxWaitSocket() being called.
 */
static void setupreply(
	Tcl_Interp *interp /**< current interpreter */,
	MAILBOX i /**< mailbox id */,
	int argc /**< number of command line arguments */,
	Tcl_Obj *const *objv /**< command line arguments */
) {
	Tcl_Obj *oldcmd, *oldnamespace;
	mbxevent **prepare = &prepared;
	const Tcl_Namespace *namespace;
	if ((argc == 1) && (!*Tcl_GetString(*objv))) {
		--argc;
	}
	/* If removing an entry, first check if by chance a message came in. */
	if (!argc) {
		eventCheck((ClientData)&argc, i);
	}
	while ((*prepare != NULL) && ((*prepare)->id != i)) {
		prepare = (mbxevent **)&(*prepare)->event.nextPtr;
	}
	if (*prepare) {
		if (!argc) {
			mbxevent *toberemoved = *prepare;
			/* Remove existing entry */
			if ((*prepare)->namespace) {
				Tcl_DecrRefCount((*prepare)->namespace);
			}
			Tcl_DecrRefCount((*prepare)->cmd);
			*prepare = (mbxevent *)(*prepare)->event.nextPtr;
			ckfree((char *)toberemoved);
			return;
		}
	} else {
		if (!argc) {
			/* both new and old event are empty, so nothing to do. */
			return;
		}
		/* create new event */
		mbxevent *prep = (mbxevent *)ckalloc(sizeof(mbxevent));
		memset(prep, 0, sizeof(mbxevent));
		prep->id = i;
		prep->event.proc = eventProc;

		/* insert new mbxevent in ::prepared event list */
		prep->event.nextPtr = &prepared->event;
		prepared = prep;
		prepare = &prepared;
		eventCheck((ClientData)&argc, DMBX_INVALID_BOX);
	}
	/* fill in all fields */
	oldcmd = (*prepare)->cmd;
	oldnamespace = (*prepare)->namespace;
	(*prepare)->interp = interp;
	(*prepare)->cmd = Tcl_NewListObj(argc, objv);
	Tcl_IncrRefCount((*prepare)->cmd);
	namespace = Tcl_GetCurrentNamespace(interp);
	if (namespace && namespace->parentPtr) {
		(*prepare)->namespace = Tcl_NewStringObj(namespace->fullName, -1);
		Tcl_IncrRefCount((*prepare)->namespace);
	} else {
		(*prepare)->namespace = NULL;
	}
	if (oldnamespace != NULL) {
		Tcl_DecrRefCount(oldnamespace);
	}
	if (oldcmd != NULL) {
		Tcl_DecrRefCount(oldcmd);
	}
}


/** Delete proc for boxcommand */
static void deleteProc(
	ClientData clientData /**< constains boxcmdinfo */
) {
	boxcmdinfo *info = (boxcmdinfo *)clientData;
	Tcl_DecrRefCount(info->name);
	Tcl_Free((char *)info);
}

/**
 *  This function implements the individual mailbox command; every mailbox
 *  has its own mailbox command with the same name as the mailbox name.
 *
 * There are 5 subcommands:
 * - close: close this mailbox
 * - flush: flush this mailbox
 * - name: return the name of this mailbox
 * - receive: register a callback function which is called when a
 *            message is received on this mailbox
 * - send: send a message to this mailbox
 *
 * Results:
 *  none
 *
 * Side effects:
 *  none
 */
static int boxcmd(
	ClientData clientData /**< contains boxcmdinfo */,
	Tcl_Interp *interp /**< current interpreter */,
	int argc /**< number of command line arguments */,
	Tcl_Obj *const objv[] /**< command line arguments */
) {
	static const char *CONST86 options[] = {
		"close", "flush", "name", "receive", "send", NULL
	};
	enum {BOX_CLOSE, BOX_FLUSH, BOX_NAME, BOX_RECEIVE, BOX_SEND};
	int optionIndex;
	boxcmdinfo *info = (boxcmdinfo *)clientData;

	if (argc < 2) {
		Tcl_WrongNumArgs(interp, 1, objv, "subcommand ?arg ...?");
		return TCL_ERROR;
	}
	if (Tcl_GetIndexFromObj(interp, objv[1], options, "command", 0, &optionIndex) != TCL_OK) {
		return TCL_ERROR;
	}
	switch (optionIndex) {
		case BOX_CLOSE: {
			/* remove all pending prepared events. */
			setupreply(interp, info->id, 0, NULL);
			if (mbxClose(info->id) != MBX_SUCCESS) {
				Tcl_AppendResult(interp, "cannot close ", Tcl_GetString(info->name), ": ", mbxStringPerror(), NULL);
				return TCL_ERROR;
			}
			Tcl_DeleteCommandFromToken(interp, info->cmd);
			break;
		}
		case BOX_FLUSH: {
			if (mbxFlush(info->id) != MBX_SUCCESS) {
				Tcl_AppendResult(interp, "cannot flush ", Tcl_GetString(info->name), ": ", mbxStringPerror(), NULL);
				return TCL_ERROR;
			}
			break;
		}
		case BOX_NAME: {
			Tcl_SetObjResult(interp, info->name);
			break;
		}
		case BOX_RECEIVE: {
			if (argc < 3) {
				mbxevent *iter = prepared; /* iterator, looping through the prepared events */
				while (iter != NULL) {
					if (iter->id == info->id) {
						Tcl_SetObjResult(interp, iter->cmd);
						break;
					}
					iter = (mbxevent *)iter->event.nextPtr;
				}
			} else {
				setupreply(interp, info->id, argc-2, &objv[2]);
			}
			break;
		}
		case BOX_SEND: {
			MAILBOX replybox = DMBX_INVALID_BOX;
			DMBX_CHAR message[MBX_MAX_MSG+1]; /* temporary storage for message to be sent */
			const char *name;
			const unsigned char *p;
			int length;
			if ((argc < 3) || (argc > 4)) {
				Tcl_WrongNumArgs(interp, 2, objv, "message ?replybox?");
				return TCL_ERROR;
			}
			if (argc == 4) {
				name = Tcl_GetString(objv[3]);
				replybox = mbxOpen(name, "q");
				if (replybox == DMBX_INVALID_BOX) {
					Tcl_AppendResult(interp, "invalid replybox ", name, ": ", mbxStringPerror(), NULL);
					return TCL_ERROR;
				}
			}
			p = Tcl_GetByteArrayFromObj(objv[2], &length);
			if (length > MBX_MAX_MSG) {
				length = MBX_MAX_MSG;
			}
			memcpy(message, p, (size_t)length);
			message[length] = '\0';
			if (mbxPutsr(info->id, replybox, message) != MBX_SUCCESS) {
				name = Tcl_GetString(objv[2]);
				Tcl_AppendResult(interp, "send to ", name, " failed: ", mbxStringPerror(), NULL);
				return TCL_ERROR;
			}
			if (info->reply) {
				Tcl_DeleteCommandFromToken(interp, info->cmd);
			}
			break;
		}
	}
	return TCL_OK;
}

/** Maximum delay for polling */
static Tcl_Time delay = {0, 100000};

/**
 *  This function implements the mbx command. It has 5 subcommands:
 * - buffersize: set or get the buffersize
 * - delay: set or get the maximum delay for polling
 * - info: get a list of all mailboxes that exist
 * - name: set or get the MBX name
 * - open: open a mailbox
 */
static int mbxcmd(
	ClientData UNUSED(clientData) /**< not used */,
	Tcl_Interp *interp /**< current interpreter */,
	int argc /**< number of command line arguments */,
	Tcl_Obj *const objv[] /**< command line arguments */
) {
	static const char *CONST86 options[] = {
		"buffersize", "delay", "info", "name", "open", "version", NULL
	};
	enum {CMD_BUFSIZE, CMD_DELAY, CMD_INFO, CMD_NAME, CMD_OPEN, CMD_VERSION};
	int optionIndex;

	if (argc < 2) {
		Tcl_WrongNumArgs(interp, 1, objv, "subcommand ?arg ...?");
		return TCL_ERROR;
	}
	if (Tcl_GetIndexFromObj(interp, objv[1], options, "command", 0, &optionIndex) != TCL_OK) {
		return TCL_ERROR;
	}
	switch (optionIndex) {
		case CMD_BUFSIZE: {
			int size;
			if (argc > 3) {
				Tcl_WrongNumArgs(interp, 2, objv, "?newValue?");
				return TCL_ERROR;
			}
			if (argc == 3) {
				if (Tcl_GetIntFromObj(interp, objv[2], &size) != TCL_OK) {
					return TCL_ERROR;
				}
				if ((size < 0) || (size > MBX_MAX_MSG)) {
					char buf[32];
					sprintf(buf, "%d", MBX_MAX_MSG);
					Tcl_AppendResult(interp, "invalid buffer size, must be between 0 and ", buf, (char *)NULL);
					return TCL_ERROR;
				}
				size = (int)mbxSetBufferSize((DMBX_UINT)size);
				if (size <= 0) {
					Tcl_AppendResult(interp, "cannot set buffer size: ", mbxStringPerror(), NULL);
					return TCL_ERROR;
				}
			} else {
				size = (int)mbxGetBufferSize((DMBX_UINT *)NULL);
			}
			Tcl_SetObjResult(interp, Tcl_NewIntObj(size));
			break;
		}
		case CMD_DELAY: {
			if (argc > 3) {
				Tcl_WrongNumArgs(interp, 2, objv, "?newValue?");
				return TCL_ERROR;
			}
			if (argc == 3) {
				long d;
				if (Tcl_GetLongFromObj(interp, objv[2], &d) != TCL_OK) {
					return TCL_ERROR;
				}
				if (d > 0) {
					delay.sec = d/1000;
					delay.usec = (d%1000)*1000;
				}
			}
			Tcl_SetObjResult(interp, Tcl_NewLongObj((delay.usec/1000L) + (delay.sec*1000L)));
			break;
		}
		case CMD_INFO: {
			MAILBOX id = DMBX_INVALID_BOX;
			Tcl_Obj *obj = Tcl_NewListObj(0, NULL);
			const char *format = "*";
			if (argc > 3) {
				Tcl_WrongNumArgs(interp, 2, objv, "?pattern?");
				return TCL_ERROR;
			}
			if (argc == 3) {
				format = Tcl_GetString(objv[2]);
			}
			do {
				char *boxreport = mbxReportLargePattern(format, "%S", id, &id);
				if (boxreport != (DMBX_CHAR *)NULL) {
					char *begin = boxreport;
					char *end = boxreport;
					while (*end) {
						if ((*end == '\n') && (end > begin)) {
							Tcl_ListObjAppendElement(interp, obj, Tcl_NewStringObj(begin, (int)(end-begin)));
							begin = end + 1;
						}
						++end;
					}
					free(boxreport);
				}
			} while (id != DMBX_INVALID_BOX);
			Tcl_SetObjResult(interp, obj);
			break;
		}
		case CMD_NAME: {
			if (argc > 3) {
				Tcl_WrongNumArgs(interp, 2, objv, "?newValue?");
				return TCL_ERROR;
			}
			if (argc == 3) {
				const char *name = Tcl_GetString(objv[2]);
				if (mbxSetName(name) != MBX_SUCCESS) {
					Tcl_AppendResult(interp, "cannot set mbx name", name, ": ", mbxStringPerror(), (char *)NULL);
					return TCL_ERROR;
				}
				Tcl_SetObjResult(interp, objv[2]);
			} else {
				Tcl_AppendResult(interp, mbxGetName(), NULL);
			}
			break;
		}
		case CMD_OPEN: {
			const char *name;
			const Tcl_Namespace *namespace;
			char type[3] = "m";
			char buffer[256];
			MAILBOX id;
			boxcmdinfo *info;
			if (argc < 3) {
				Tcl_WrongNumArgs(interp, 2, objv, "name ?arg ...?");
				return TCL_ERROR;
			}
			name = Tcl_GetString(objv[2]);
			id = mbxOpen(name, type);
			if (id == DMBX_INVALID_BOX) {
				Tcl_AppendResult(interp, "cannot open mailbox ", name, ": ", mbxStringPerror(), (char *)NULL);
				return TCL_ERROR;
			}
			if (argc > 3) {
				setupreply(interp, id, argc-3, &objv[3]);
			}
			info = (boxcmdinfo *)ckalloc(sizeof(boxcmdinfo));
			info->id = id;
			info->name = objv[2];
			info->reply = 0;
			Tcl_IncrRefCount(info->name);
			namespace = Tcl_GetCurrentNamespace(interp);
			strcpy(buffer, namespace->fullName);
			strcat(buffer, "::");
			strcat(buffer, name);
			info->cmd = Tcl_CreateObjCommand(interp, buffer, boxcmd, (ClientData)info, deleteProc);
			Tcl_SetObjResult(interp, info->name);
			break;
		}
		case CMD_VERSION: {
			char buffer[256];
			char *p = buffer;
			char *q;
			Tcl_Obj *dict, *key, *value;
			CwLibVersionsBuffer(buffer, sizeof(buffer));
			dict = Tcl_NewDictObj();
			while (*p) {
				q = strchr(p, ' ');
				if (!q) {
					break;
				}
				key = Tcl_NewStringObj(p, (int)(q-p));
				p = strchr(++q, ' ');
				if (!p) {
					p = q + strlen(q);
				}
				value = Tcl_NewStringObj(q, (int)(p-q));
				Tcl_DictObjPut(interp, dict, key, value);
				while (*p == ' ') {
					++p;
				}
			}
			Tcl_SetObjResult(interp, dict);
		}
	}

	return TCL_OK;
}

/** flag to keep track whether mbx messages are present or not */
static int foundmbxevent = 0;

/**
 *  Setup mbx event.
 *
 * Results:
 *  None.
 *
 * Side effects:
 *  Setup mbx event source such that it checks for events every "delay" seconds
 */
static void eventSetup(
	ClientData UNUSED(clientData) /**< not used */,
	int UNUSED(flags) /**< flags (not used) */
) {
	static Tcl_Time nodelay = {0, 0};

	Tcl_SetMaxBlockTime(foundmbxevent? &nodelay: &delay);
	foundmbxevent = 0;
}

/**
 *  Check all prepared events if a message is received for one of them.
 *  If so, append the message an eventually the replybox and queue an event for it.
 *
 * Results:
 *  None.
 *
 * Side effects:
 *  For every message found, remove the event from the prepared list, append the
 *  received message and eventually the replybox to the command, and queue the event.
 */
static void eventCheck(
	ClientData clientData /**< if there was a change in the prepared list, set this to != NULL */,
	int flags /**< flags, if clientData != NULL, flags should be set to the mailbox which is to be removed. */
) {
	mbxevent **iter = &prepared; /* iterator, looping through the prepared events */
	DMBX_CHAR message[MBX_MAX_MSG+1]; /* temporary storage for received message */
	MAILBOX i = DMBX_INVALID_BOX;
	MAILBOX id = DMBX_INVALID_BOX;
	DMBX_UINT msgsize;
	const char *name = NULL;
	mbxevent *ev;
	MAILBOX allids[256];
	MAILBOX *lastid = &allids[0];

	if (prepared == NULL) {
		return;
	}
	if (clientData) {
		mbxWaitCancel();
	}
	if (mbxReadSocket(&i, &id, message, MBX_MAX_MSG, &msgsize) == MBX_SUCCESS) {
		while (i != (*iter)->id) {
			if ((clientData == NULL) || ((*iter)->id != (MAILBOX)flags)) {
				*lastid++ = (*iter)->id;
			}
			iter = (mbxevent **)(&(*iter)->event.nextPtr);
			if (*iter == NULL) {
				printf("IMPOSSIBLE: we receive a message on a socket we are not waiting for!\n");
				return;
			}
		}
		/* There is a message, so remove it from the prepared list */
		ev = (mbxevent *)&(*iter)->event;
		*iter = (mbxevent *)((*iter)->event.nextPtr);
		/* If a reply is expected, make sure the Tcl command exists */
		if (id != DMBX_INVALID_BOX) {
			char buffer[256];
			Tcl_CmdInfo cmd;
			if (ev->namespace != NULL) {
				strcpy(buffer, Tcl_GetString(ev->namespace));
			} else {
				buffer[0] = 0;
			}
			strcat(buffer, "::");
			name = mbxMailboxName(id);
			strcat(buffer, name);
			if ((Tcl_GetCommandInfo(ev->interp, buffer, &cmd) == 0) || (cmd.objProc != boxcmd) || (((boxcmdinfo *)cmd.objClientData)->id != id)) {
				boxcmdinfo *info = (boxcmdinfo *)ckalloc(sizeof(boxcmdinfo));
				info->id = id;
				info->name = Tcl_NewStringObj(name, -1);
				info->reply = 1;
				Tcl_IncrRefCount(info->name);
				info->cmd = Tcl_CreateObjCommand(ev->interp, buffer, boxcmd, (ClientData)info, deleteProc);
			}
		}
		/* Append the received message to the command */
		message[MBX_MAX_MSG] = '\0';
		Tcl_ListObjAppendElement(ev->interp, ev->cmd, Tcl_NewByteArrayObj((const unsigned char *)message, (int)strlen(message)));
		if (name != NULL) {
			Tcl_ListObjAppendElement(ev->interp, ev->cmd, Tcl_NewStringObj(name, -1));
		}
		Tcl_QueueEvent(&ev->event, TCL_QUEUE_TAIL);
		foundmbxevent = 0;
		if (!clientData) {
			clientData = &message;
			flags = DMBX_INVALID_BOX;
		}
	}
	if (clientData != NULL) {
		static DMBX_SOCK fd = (DMBX_SOCK)-1;
		while (*iter != NULL) {
			if ((*iter)->id != (MAILBOX)flags) {
				*lastid++ = (*iter)->id;
			}
			iter = (mbxevent **)(&(*iter)->event.nextPtr);
		}
		*lastid = DMBX_INVALID_BOX;
		if (allids != lastid) {
			mbxWaitSocket(allids, &fd);
#ifdef Tcl_CreateFileHandler
			if (fd != (DMBX_SOCK)-1) {
				Tcl_CreateFileHandler(fd, TCL_READABLE, eventCheck, (ClientData)NULL);
			} else
#endif
				Tcl_CreateEventSource(eventSetup, eventCheck, (ClientData)NULL);
		} else {
#ifdef Tcl_DeleteFileHandler
			if (fd != (DMBX_SOCK)-1) {
				Tcl_DeleteFileHandler(fd);
				fd = (DMBX_SOCK)-1;
			}
#endif
			Tcl_DeleteEventSource(eventSetup, eventCheck, (ClientData)NULL);
		}
	}
}

/** Cleanup event source when interpreter terminates */
static void cleanup (
	ClientData UNUSED(clientData) /**< not used */,
	Tcl_Interp *interp /**< current interpreter */
) {
	/* Clean up any prepared event which was not handled yet */
	while (prepared != NULL) {
		setupreply(interp, prepared->id, 0, NULL);
	}
	mbxResetSocket();
}

/**
 *  Initialisation routine for Tcl loadable module
 *
 * Results:
 *  None.
 *
 * Side effects:
 *  Creates "mbx" command in the interpreter.
 *  Creates "mbx" event source.
 *  Loads Mbx package.
 */
EXTERN int Mbx_Init(
	Tcl_Interp *interp /**< current interpreter */
) {
	if (Tcl_InitStubs(interp, "8.5", 0) == NULL) {
		return TCL_ERROR;
	}

	Tcl_CreateObjCommand(interp, "mbx", mbxcmd, (ClientData)NULL, NULL);
	Tcl_CallWhenDeleted(interp, cleanup, (ClientData)NULL);

	mbxReconnect(DM_FALSE);
	return TCL_OK;
}
