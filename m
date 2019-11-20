Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8AD1042EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Nov 2019 19:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72873859AE;
	Wed, 20 Nov 2019 18:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3FhJsJV2t6aC; Wed, 20 Nov 2019 18:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E31A886B7;
	Wed, 20 Nov 2019 18:07:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B39741BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 17:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A41BD87D47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 17:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfCbrY69bUWy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Nov 2019 17:05:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C683387D57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 17:05:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:05:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="237810960"
Received: from mustafai-mobl1.amr.corp.intel.com ([10.122.128.226])
 by fmsmga002.fm.intel.com with ESMTP; 20 Nov 2019 09:05:28 -0800
From: Mustafa Ismail <mustafa.ismail@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Nov 2019 11:05:02 -0600
Message-Id: <20191120170505.34804-14-mustafa.ismail@intel.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20191120170505.34804-1-mustafa.ismail@intel.com>
References: <20191120170505.34804-1-mustafa.ismail@intel.com>
X-Mailman-Approved-At: Wed, 20 Nov 2019 18:06:32 +0000
Subject: [Intel-wired-lan] [PATCH rdma-next 13/16] RDMA/irdma: Add dynamic
 tracing for CM
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: mustafa.ismail@intel.com, "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 sindhu.devale@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>

Add dynamic tracing functionality to debug connection
management issues.

Signed-off-by: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/irdma/trace.c    | 112 ++++++++
 drivers/infiniband/hw/irdma/trace.h    |   3 +
 drivers/infiniband/hw/irdma/trace_cm.h | 458 +++++++++++++++++++++++++++++++++
 3 files changed, 573 insertions(+)
 create mode 100644 drivers/infiniband/hw/irdma/trace.c
 create mode 100644 drivers/infiniband/hw/irdma/trace.h
 create mode 100644 drivers/infiniband/hw/irdma/trace_cm.h

diff --git a/drivers/infiniband/hw/irdma/trace.c b/drivers/infiniband/hw/irdma/trace.c
new file mode 100644
index 0000000..b5133f4
--- /dev/null
+++ b/drivers/infiniband/hw/irdma/trace.c
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0 or Linux-OpenIB
+/* Copyright (c) 2019 Intel Corporation */
+#define CREATE_TRACE_POINTS
+#include "trace.h"
+
+const char *print_ip_addr(struct trace_seq *p, u32 *addr, u16 port, bool ipv4)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	if (ipv4) {
+		__be32 myaddr = htonl(*addr);
+
+		trace_seq_printf(p, "%pI4:%d", &myaddr, htons(port));
+	} else {
+		trace_seq_printf(p, "%pI6:%d", addr, htons(port));
+	}
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+const char *parse_iw_event_type(enum iw_cm_event_type iw_type)
+{
+	switch (iw_type) {
+	case IW_CM_EVENT_CONNECT_REQUEST:
+		return "IwRequest";
+	case IW_CM_EVENT_CONNECT_REPLY:
+		return "IwReply";
+	case IW_CM_EVENT_ESTABLISHED:
+		return "IwEstablished";
+	case IW_CM_EVENT_DISCONNECT:
+		return "IwDisconnect";
+	case IW_CM_EVENT_CLOSE:
+		return "IwClose";
+	}
+
+	return "Unknown";
+}
+
+const char *parse_cm_event_type(enum irdma_cm_event_type cm_type)
+{
+	switch (cm_type) {
+	case IRDMA_CM_EVENT_ESTABLISHED:
+		return "CmEstablished";
+	case IRDMA_CM_EVENT_MPA_REQ:
+		return "CmMPA_REQ";
+	case IRDMA_CM_EVENT_MPA_CONNECT:
+		return "CmMPA_CONNECT";
+	case IRDMA_CM_EVENT_MPA_ACCEPT:
+		return "CmMPA_ACCEPT";
+	case IRDMA_CM_EVENT_MPA_REJECT:
+		return "CmMPA_REJECT";
+	case IRDMA_CM_EVENT_MPA_ESTABLISHED:
+		return "CmMPA_ESTABLISHED";
+	case IRDMA_CM_EVENT_CONNECTED:
+		return "CmConnected";
+	case IRDMA_CM_EVENT_RESET:
+		return "CmReset";
+	case IRDMA_CM_EVENT_ABORTED:
+		return "CmAborted";
+	case IRDMA_CM_EVENT_UNKNOWN:
+		return "none";
+	}
+	return "Unknown";
+}
+
+const char *parse_cm_state(enum irdma_cm_node_state state)
+{
+	switch (state) {
+	case IRDMA_CM_STATE_UNKNOWN:
+		return "UNKNOWN";
+	case IRDMA_CM_STATE_INITED:
+		return "INITED";
+	case IRDMA_CM_STATE_LISTENING:
+		return "LISTENING";
+	case IRDMA_CM_STATE_SYN_RCVD:
+		return "SYN_RCVD";
+	case IRDMA_CM_STATE_SYN_SENT:
+		return "SYN_SENT";
+	case IRDMA_CM_STATE_ONE_SIDE_ESTABLISHED:
+		return "ONE_SIDE_ESTABLISHED";
+	case IRDMA_CM_STATE_ESTABLISHED:
+		return "ESTABLISHED";
+	case IRDMA_CM_STATE_ACCEPTING:
+		return "ACCEPTING";
+	case IRDMA_CM_STATE_MPAREQ_SENT:
+		return "MPAREQ_SENT";
+	case IRDMA_CM_STATE_MPAREQ_RCVD:
+		return "MPAREQ_RCVD";
+	case IRDMA_CM_STATE_MPAREJ_RCVD:
+		return "MPAREJ_RECVD";
+	case IRDMA_CM_STATE_OFFLOADED:
+		return "OFFLOADED";
+	case IRDMA_CM_STATE_FIN_WAIT1:
+		return "FIN_WAIT1";
+	case IRDMA_CM_STATE_FIN_WAIT2:
+		return "FIN_WAIT2";
+	case IRDMA_CM_STATE_CLOSE_WAIT:
+		return "CLOSE_WAIT";
+	case IRDMA_CM_STATE_TIME_WAIT:
+		return "TIME_WAIT";
+	case IRDMA_CM_STATE_LAST_ACK:
+		return "LAST_ACK";
+	case IRDMA_CM_STATE_CLOSING:
+		return "CLOSING";
+	case IRDMA_CM_STATE_LISTENER_DESTROYED:
+		return "LISTENER_DESTROYED";
+	case IRDMA_CM_STATE_CLOSED:
+		return "CLOSED";
+	}
+	return ("Bad state");
+}
diff --git a/drivers/infiniband/hw/irdma/trace.h b/drivers/infiniband/hw/irdma/trace.h
new file mode 100644
index 0000000..702e4ef
--- /dev/null
+++ b/drivers/infiniband/hw/irdma/trace.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0 or Linux-OpenIB */
+/* Copyright (c) 2019 Intel Corporation */
+#include "trace_cm.h"
diff --git a/drivers/infiniband/hw/irdma/trace_cm.h b/drivers/infiniband/hw/irdma/trace_cm.h
new file mode 100644
index 0000000..3f93f3a
--- /dev/null
+++ b/drivers/infiniband/hw/irdma/trace_cm.h
@@ -0,0 +1,458 @@
+/* SPDX-License-Identifier: GPL-2.0 or Linux-OpenIB */
+/* Copyright (c) 2019 Intel Corporation */
+#if !defined(__TRACE_CM_H) || defined(TRACE_HEADER_MULTI_READ)
+#define __TRACE_CM_H
+
+#include <linux/tracepoint.h>
+#include <linux/trace_seq.h>
+
+#include "main.h"
+
+const char *print_ip_addr(struct trace_seq *p, u32 *addr, u16 port, bool ivp4);
+const char *parse_iw_event_type(enum iw_cm_event_type iw_type);
+const char *parse_cm_event_type(enum irdma_cm_event_type cm_type);
+const char *parse_cm_state(enum irdma_cm_node_state);
+#define __print_ip_addr(addr, port, ipv4) print_ip_addr(p, addr, port, ipv4)
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM irdma_cm
+
+TRACE_EVENT(irdma_create_listen,
+	    TP_PROTO(struct irdma_device *iwdev, struct irdma_cm_info *cm_info),
+	    TP_ARGS(iwdev, cm_info),
+	    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+			     __dynamic_array(u32, laddr, 4)
+			     __field(u16, lport)
+			     __field(bool, ipv4)
+		    ),
+	    TP_fast_assign(__entry->iwdev = iwdev;
+			   __entry->lport = cm_info->loc_port;
+			   __entry->ipv4 = cm_info->ipv4;
+			   memcpy(__get_dynamic_array(laddr),
+				  cm_info->loc_addr, 4);
+		    ),
+	    TP_printk("iwdev=%p  loc: %s",
+		      __entry->iwdev,
+		      __print_ip_addr(__get_dynamic_array(laddr),
+				      __entry->lport, __entry->ipv4)
+		    )
+);
+
+TRACE_EVENT(irdma_dec_refcnt_listen,
+	    TP_PROTO(struct irdma_cm_listener *listener, void *caller),
+	    TP_ARGS(listener, caller),
+	    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+		    __field(u32, refcnt)
+		    __dynamic_array(u32, laddr, 4)
+		    __field(u16, lport)
+		    __field(bool, ipv4)
+		    __field(void *, caller)
+		    ),
+	    TP_fast_assign(__entry->iwdev = listener->iwdev;
+			   __entry->lport = listener->loc_port;
+			   __entry->ipv4 = listener->ipv4;
+			   memcpy(__get_dynamic_array(laddr),
+				  listener->loc_addr, 4);
+		    ),
+	    TP_printk("iwdev=%p  caller=%pS  loc: %s",
+		      __entry->iwdev,
+		      __entry->caller,
+		      __print_ip_addr(__get_dynamic_array(laddr),
+				      __entry->lport, __entry->ipv4)
+		    )
+);
+
+DECLARE_EVENT_CLASS(listener_template,
+		    TP_PROTO(struct irdma_cm_listener *listener),
+		    TP_ARGS(listener),
+		    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+				     __field(u16, lport)
+				     __field(u16, vlan_id)
+				     __field(bool, ipv4)
+				     __field(enum irdma_cm_listener_state,
+					     state)
+				     __dynamic_array(u32, laddr, 4)
+			    ),
+		    TP_fast_assign(__entry->iwdev = listener->iwdev;
+				   __entry->lport = listener->loc_port;
+				   __entry->vlan_id = listener->vlan_id;
+				   __entry->ipv4 = listener->ipv4;
+				   __entry->state = listener->listener_state;
+				   memcpy(__get_dynamic_array(laddr),
+					  listener->loc_addr, 4);
+			    ),
+		    TP_printk("iwdev=%p  vlan=%d  loc: %s",
+			      __entry->iwdev,
+			      __entry->vlan_id,
+			      __print_ip_addr(__get_dynamic_array(laddr),
+					      __entry->lport, __entry->ipv4)
+			    )
+);
+
+DEFINE_EVENT(listener_template, irdma_find_listener,
+	     TP_PROTO(struct irdma_cm_listener *listener),
+	     TP_ARGS(listener));
+
+DEFINE_EVENT(listener_template, irdma_del_multiple_qhash,
+	     TP_PROTO(struct irdma_cm_listener *listener),
+	     TP_ARGS(listener));
+
+TRACE_EVENT(irdma_negotiate_mpa_v2,
+	    TP_PROTO(struct irdma_cm_node *cm_node),
+	    TP_ARGS(cm_node),
+	    TP_STRUCT__entry(__field(struct irdma_cm_node *, cm_node)
+			     __field(u16, ord_size)
+			     __field(u16, ird_size)
+		    ),
+	    TP_fast_assign(__entry->cm_node = cm_node;
+			   __entry->ord_size = cm_node->ord_size;
+			   __entry->ird_size = cm_node->ird_size;
+		    ),
+	    TP_printk("MPVA2 Negotiated cm_node=%p ORD:[%d], IRD:[%d]",
+		      __entry->cm_node,
+		      __entry->ord_size,
+		      __entry->ird_size
+		    )
+);
+
+DECLARE_EVENT_CLASS(tos_template,
+		    TP_PROTO(struct irdma_device *iwdev, u8 tos, u8 user_pri),
+		    TP_ARGS(iwdev, tos, user_pri),
+		    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+				     __field(u8, tos)
+				     __field(u8, user_pri)
+			    ),
+		    TP_fast_assign(__entry->iwdev = iwdev;
+				   __entry->tos = tos;
+				   __entry->user_pri = user_pri;
+			    ),
+		    TP_printk("iwdev=%p  TOS:[%d]  UP:[%d]",
+			      __entry->iwdev,
+			      __entry->tos,
+			      __entry->user_pri
+			    )
+);
+
+DEFINE_EVENT(tos_template, irdma_listener_tos,
+	     TP_PROTO(struct irdma_device *iwdev, u8 tos, u8 user_pri),
+	     TP_ARGS(iwdev, tos, user_pri));
+
+DEFINE_EVENT(tos_template, irdma_dcb_tos,
+	     TP_PROTO(struct irdma_device *iwdev, u8 tos, u8 user_pri),
+	     TP_ARGS(iwdev, tos, user_pri));
+
+DECLARE_EVENT_CLASS(qhash_template,
+		    TP_PROTO(struct irdma_device *iwdev,
+			     struct irdma_cm_listener *listener,
+			     char *dev_addr),
+		    TP_ARGS(iwdev, listener, dev_addr),
+		    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+				     __field(u16, lport)
+				     __field(u16, vlan_id)
+				     __field(bool, ipv4)
+				     __dynamic_array(u32, laddr, 4)
+				     __dynamic_array(u32, mac, ETH_ALEN)
+			    ),
+		    TP_fast_assign(__entry->iwdev = iwdev;
+				   __entry->lport = listener->loc_port;
+				   __entry->vlan_id = listener->vlan_id;
+				   __entry->ipv4 = listener->ipv4;
+				   memcpy(__get_dynamic_array(laddr),
+					  listener->loc_addr, 4);
+				   ether_addr_copy(__get_dynamic_array(mac),
+						   dev_addr);
+			    ),
+		    TP_printk("iwdev=%p  vlan=%d  MAC=%pM  loc: %s",
+			      __entry->iwdev,
+			      __entry->vlan_id,
+			      __get_dynamic_array(mac),
+			      __print_ip_addr(__get_dynamic_array(laddr),
+					      __entry->lport, __entry->ipv4)
+		    )
+);
+
+DEFINE_EVENT(qhash_template, irdma_add_mqh_6,
+	     TP_PROTO(struct irdma_device *iwdev,
+		      struct irdma_cm_listener *listener, char *dev_addr),
+	     TP_ARGS(iwdev, listener, dev_addr));
+
+DEFINE_EVENT(qhash_template, irdma_add_mqh_4,
+	     TP_PROTO(struct irdma_device *iwdev,
+		      struct irdma_cm_listener *listener, char *dev_addr),
+	     TP_ARGS(iwdev, listener, dev_addr));
+
+TRACE_EVENT(irdma_addr_resolve,
+	    TP_PROTO(struct irdma_device *iwdev, char *dev_addr),
+	    TP_ARGS(iwdev, dev_addr),
+	    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+		    __dynamic_array(u8, mac, ETH_ALEN)
+		    ),
+	    TP_fast_assign(__entry->iwdev = iwdev;
+		    ether_addr_copy(__get_dynamic_array(mac), dev_addr);
+		    ),
+	    TP_printk("iwdev=%p   MAC=%pM", __entry->iwdev,
+		      __get_dynamic_array(mac)
+		    )
+);
+
+TRACE_EVENT(irdma_send_cm_event,
+	    TP_PROTO(struct irdma_cm_node *cm_node, struct iw_cm_id *cm_id,
+		     enum iw_cm_event_type type, int status, void *caller),
+	    TP_ARGS(cm_node, cm_id, type, status, caller),
+	    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+			     __field(struct irdma_cm_node *, cm_node)
+			     __field(struct iw_cm_id *, cm_id)
+			     __field(u32, refcount)
+			     __field(u16, lport)
+			     __field(u16, rport)
+			     __field(enum irdma_cm_node_state, state)
+			     __field(bool, ipv4)
+			     __field(u16, vlan_id)
+			     __field(int, accel)
+			     __field(enum iw_cm_event_type, type)
+			     __field(int, status)
+			     __field(void *, caller)
+			     __dynamic_array(u32, laddr, 4)
+			     __dynamic_array(u32, raddr, 4)
+		    ),
+	    TP_fast_assign(__entry->iwdev = cm_node->iwdev;
+			   __entry->cm_node = cm_node;
+			   __entry->cm_id = cm_id;
+			   __entry->refcount = atomic_read(&cm_node->ref_count);
+			   __entry->state = cm_node->state;
+			   __entry->lport = cm_node->loc_port;
+			   __entry->rport = cm_node->rem_port;
+			   __entry->ipv4 = cm_node->ipv4;
+			   __entry->vlan_id = cm_node->vlan_id;
+			   __entry->accel = cm_node->accelerated;
+			   __entry->type = type;
+			   __entry->status = status;
+			   __entry->caller = caller;
+			   memcpy(__get_dynamic_array(laddr),
+				  cm_node->loc_addr, 4);
+			   memcpy(__get_dynamic_array(raddr),
+				  cm_node->rem_addr, 4);
+		    ),
+	    TP_printk("iwdev=%p  caller=%pS  cm_id=%p  node=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s  event_type=%s  status=%d  loc: %s  rem: %s",
+		      __entry->iwdev,
+		      __entry->caller,
+		      __entry->cm_id,
+		      __entry->cm_node,
+		      __entry->refcount,
+		      __entry->vlan_id,
+		      __entry->accel,
+		      parse_cm_state(__entry->state),
+		      parse_iw_event_type(__entry->type),
+		      __entry->status,
+		      __print_ip_addr(__get_dynamic_array(laddr),
+				      __entry->lport, __entry->ipv4),
+		      __print_ip_addr(__get_dynamic_array(raddr),
+				      __entry->rport, __entry->ipv4)
+		    )
+);
+
+TRACE_EVENT(irdma_send_cm_event_no_node,
+	    TP_PROTO(struct iw_cm_id *cm_id, enum iw_cm_event_type type,
+		     int status, void *caller),
+	    TP_ARGS(cm_id, type, status, caller),
+	    TP_STRUCT__entry(__field(struct iw_cm_id *, cm_id)
+			     __field(enum iw_cm_event_type, type)
+			     __field(int, status)
+			     __field(void *, caller)
+		    ),
+	    TP_fast_assign(__entry->cm_id = cm_id;
+			   __entry->type = type;
+			   __entry->status = status;
+			   __entry->caller = caller;
+		    ),
+	    TP_printk("cm_id=%p  caller=%pS  event_type=%s  status=%d",
+		      __entry->cm_id,
+		      __entry->caller,
+		      parse_iw_event_type(__entry->type),
+		      __entry->status
+		    )
+);
+
+DECLARE_EVENT_CLASS(cm_node_template,
+		    TP_PROTO(struct irdma_cm_node *cm_node,
+			     enum irdma_cm_event_type type, void *caller),
+		    TP_ARGS(cm_node, type, caller),
+		    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+				     __field(struct irdma_cm_node *, cm_node)
+				     __field(u32, refcount)
+				     __field(u16, lport)
+				     __field(u16, rport)
+				     __field(enum irdma_cm_node_state, state)
+				     __field(bool, ipv4)
+				     __field(u16, vlan_id)
+				     __field(int, accel)
+				     __field(enum irdma_cm_event_type, type)
+				     __field(void *, caller)
+				     __dynamic_array(u32, laddr, 4)
+				     __dynamic_array(u32, raddr, 4)
+			    ),
+		    TP_fast_assign(__entry->iwdev = cm_node->iwdev;
+				   __entry->cm_node = cm_node;
+				   __entry->refcount = atomic_read(&cm_node->ref_count);
+				   __entry->state = cm_node->state;
+				   __entry->lport = cm_node->loc_port;
+				   __entry->rport = cm_node->rem_port;
+				   __entry->ipv4 = cm_node->ipv4;
+				   __entry->vlan_id = cm_node->vlan_id;
+				   __entry->accel = cm_node->accelerated;
+				   __entry->type = type;
+				   __entry->caller = caller;
+				   memcpy(__get_dynamic_array(laddr),
+					  cm_node->loc_addr, 4);
+				   memcpy(__get_dynamic_array(raddr),
+					  cm_node->rem_addr, 4);
+			    ),
+		    TP_printk("iwdev=%p  caller=%pS  node=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s  event_type=%s  loc: %s  rem: %s",
+			      __entry->iwdev,
+			      __entry->caller,
+			      __entry->cm_node,
+			      __entry->refcount,
+			      __entry->vlan_id,
+			      __entry->accel,
+			      parse_cm_state(__entry->state),
+			      parse_cm_event_type(__entry->type),
+			      __print_ip_addr(__get_dynamic_array(laddr),
+					      __entry->lport, __entry->ipv4),
+			      __print_ip_addr(__get_dynamic_array(raddr),
+					      __entry->rport, __entry->ipv4)
+		    )
+);
+
+DEFINE_EVENT(cm_node_template, irdma_create_event,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_accept,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_connect,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_reject,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_find_node,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_send_reset,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_rem_ref_cm_node,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+DEFINE_EVENT(cm_node_template, irdma_cm_event_handler,
+	     TP_PROTO(struct irdma_cm_node *cm_node,
+		      enum irdma_cm_event_type type, void *caller),
+	     TP_ARGS(cm_node, type, caller));
+
+TRACE_EVENT(open_err_template,
+	    TP_PROTO(struct irdma_cm_node *cm_node, bool reset, void *caller),
+	    TP_ARGS(cm_node, reset, caller),
+	    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+			     __field(struct irdma_cm_node *, cm_node)
+			     __field(enum irdma_cm_node_state, state)
+			     __field(bool, reset)
+			     __field(void *, caller)
+		    ),
+	    TP_fast_assign(__entry->iwdev = cm_node->iwdev;
+			   __entry->cm_node = cm_node;
+			   __entry->state = cm_node->state;
+			   __entry->reset = reset;
+			   __entry->caller = caller;
+		    ),
+	    TP_printk("iwdev=%p  caller=%pS  node%p reset=%d  state=%s",
+		      __entry->iwdev,
+		      __entry->caller,
+		      __entry->cm_node,
+		      __entry->reset,
+		      parse_cm_state(__entry->state)
+		    )
+);
+
+DEFINE_EVENT(open_err_template, irdma_active_open_err,
+	     TP_PROTO(struct irdma_cm_node *cm_node, bool reset, void *caller),
+	     TP_ARGS(cm_node, reset, caller));
+
+DEFINE_EVENT(open_err_template, irdma_passive_open_err,
+	     TP_PROTO(struct irdma_cm_node *cm_node, bool reset, void *caller),
+	     TP_ARGS(cm_node, reset, caller));
+
+DECLARE_EVENT_CLASS(cm_node_ah_template,
+		    TP_PROTO(struct irdma_cm_node *cm_node),
+		    TP_ARGS(cm_node),
+		    TP_STRUCT__entry(__field(struct irdma_device *, iwdev)
+				     __field(struct irdma_cm_node *, cm_node)
+				     __field(struct irdma_sc_ah *, ah)
+				     __field(u32, refcount)
+				     __field(u16, lport)
+				     __field(u16, rport)
+				     __field(enum irdma_cm_node_state, state)
+				     __field(bool, ipv4)
+				     __field(u16, vlan_id)
+				     __field(int, accel)
+				     __dynamic_array(u32, laddr, 4)
+				     __dynamic_array(u32, raddr, 4)
+			    ),
+		    TP_fast_assign(__entry->iwdev = cm_node->iwdev;
+				   __entry->cm_node = cm_node;
+				   __entry->ah = cm_node->ah;
+				   __entry->refcount = atomic_read(&cm_node->ref_count);
+				   __entry->lport = cm_node->loc_port;
+				   __entry->rport = cm_node->rem_port;
+				   __entry->state = cm_node->state;
+				   __entry->ipv4 = cm_node->ipv4;
+				   __entry->vlan_id = cm_node->vlan_id;
+				   __entry->accel = cm_node->accelerated;
+				   memcpy(__get_dynamic_array(laddr),
+					  cm_node->loc_addr, 4);
+				   memcpy(__get_dynamic_array(raddr),
+					  cm_node->rem_addr, 4);
+			    ),
+		    TP_printk("iwdev=%p  node=%p  ah=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s loc: %s  rem: %s",
+			      __entry->iwdev,
+			      __entry->cm_node,
+			      __entry->ah,
+			      __entry->refcount,
+			      __entry->vlan_id,
+			      __entry->accel,
+			      parse_cm_state(__entry->state),
+			      __print_ip_addr(__get_dynamic_array(laddr),
+					      __entry->lport, __entry->ipv4),
+			      __print_ip_addr(__get_dynamic_array(raddr),
+					      __entry->rport, __entry->ipv4)
+		    )
+);
+
+DEFINE_EVENT(cm_node_ah_template, irdma_cm_free_ah,
+	     TP_PROTO(struct irdma_cm_node *cm_node),
+	     TP_ARGS(cm_node));
+
+DEFINE_EVENT(cm_node_ah_template, irdma_create_ah,
+	     TP_PROTO(struct irdma_cm_node *cm_node),
+	     TP_ARGS(cm_node));
+
+#endif  /* __TRACE_CM_H */
+
+#undef TRACE_INCLUDE_PATH
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_PATH .
+#define TRACE_INCLUDE_FILE trace_cm
+#include <trace/define_trace.h>
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
