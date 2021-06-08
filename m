Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AF33A07CF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 01:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A6604025D;
	Tue,  8 Jun 2021 23:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LZOU-D9JeD1G; Tue,  8 Jun 2021 23:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB4D14025B;
	Tue,  8 Jun 2021 23:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 692401BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 652E9400DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCZHAabpxWNF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 23:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CEE0400CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:35:32 +0000 (UTC)
IronPort-SDR: sk5fHrCrARQhQaXhl7QeOLcRnlE46n5sr4SHnXhHpn4tj3tSwiqxu50pyU09Jxyfqw7yYIkHod
 K2k5kx33QpxQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="201944258"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="201944258"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 16:35:31 -0700
IronPort-SDR: dCt44BkkATRLblJf/0koP6IVT4rivA72cF3g7J/AODpIQ1AIiwS7kD/GreJiU2ug2F6j/s+xO0
 ltlUEplhTc8A==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="476778366"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 16:35:31 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  8 Jun 2021 16:35:17 -0700
Message-Id: <20210608233517.3135522-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: add tracepoints
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch is modeled after one by Scott Peterson for i40e.

Add tracepoints to the driver, via a new file ice_trace.h and some new
trace calls added in interesting places in the driver. Add some tracing
for DIMLIB to help debug interrupt moderation problems.

Performance should not be affected, and this can be very useful
for debugging and adding new trace events to paths in the future.

Note eBPF programs can attach to these events, as well as perf
can count them since we're attaching to the events subsystem
in the kernel.

Co-developed-by: Ben Shelton <benjamin.h.shelton@intel.com>
Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
NOTE: checkpatch will complain about this patch due to the macros
defining the new trace functionality being formatted for readability.

Testing Hints:
See that performance is unaffected while tracepoints are present but
disabled (default state). Enable them all and see they appear in
/sys/kernel/debug/tracing/trace when exercised, and after 'make install'
you can see the events in perf list.

When disabled, a tracepoint reduces to a 5-byte no-op. When enabled,
that code is patched to jump to the tracepoint clause, which is located
somewhere nearby.  See include/linux/jump_label.h for info in static
keys, and samples/trace-events/trace-events-samples.[ch] for info on the
trace events.

To test tracepoints:
insmod ice and bring up a link
cd /sys/kernel/debug/tracing
echo > trace
echo 1 > events/ice/enable
send something over ice
cat trace
echo 0 > events/ice/enable

---
v3: fixed transposed rx/tx reference in receive code
v2: updated commit message and copyright on new file
---
 drivers/net/ethernet/intel/ice/ice_main.c  |   8 +
 drivers/net/ethernet/intel/ice/ice_trace.h | 232 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c  |   9 +
 3 files changed, 249 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_trace.h

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f7844b5a84e9..d0eb158e3e2d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -13,6 +13,12 @@
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
 #include "ice_devlink.h"
+/* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
+ * ice tracepoint functions. This must be done exactly once across the
+ * ice driver.
+ */
+#define CREATE_TRACE_POINTS
+#include "ice_trace.h"
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -5495,6 +5501,7 @@ static void ice_tx_dim_work(struct work_struct *work)
 	itr = tx_profile[dim->profile_ix].itr;
 	intrl = tx_profile[dim->profile_ix].intrl;
 
+	ice_trace(tx_dim_work, q_vector, dim);
 	ice_write_itr(rc, itr);
 	ice_write_intrl(q_vector, intrl);
 
@@ -5519,6 +5526,7 @@ static void ice_rx_dim_work(struct work_struct *work)
 	itr = rx_profile[dim->profile_ix].itr;
 	intrl = rx_profile[dim->profile_ix].intrl;
 
+	ice_trace(rx_dim_work, q_vector, dim);
 	ice_write_itr(rc, itr);
 	ice_write_intrl(q_vector, intrl);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
new file mode 100644
index 000000000000..9bc0b8fdfc77
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -0,0 +1,232 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2021 Intel Corporation. */
+
+/* Modeled on trace-events-sample.h */
+
+/* The trace subsystem name for ice will be "ice".
+ *
+ * This file is named ice_trace.h.
+ *
+ * Since this include file's name is different from the trace
+ * subsystem name, we'll have to define TRACE_INCLUDE_FILE at the end
+ * of this file.
+ */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM ice
+
+/* See trace-events-sample.h for a detailed description of why this
+ * guard clause is different from most normal include files.
+ */
+#if !defined(_ICE_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
+#define _ICE_TRACE_H_
+
+#include <linux/tracepoint.h>
+
+/* ice_trace() macro enables shared code to refer to trace points
+ * like:
+ *
+ * trace_ice_example(args...)
+ *
+ * ... as:
+ *
+ * ice_trace(example, args...)
+ *
+ * ... to resolve to the PF version of the tracepoint without
+ * ifdefs, and to allow tracepoints to be disabled entirely at build
+ * time.
+ *
+ * Trace point should always be referred to in the driver via this
+ * macro.
+ *
+ * Similarly, ice_trace_enabled(trace_name) wraps references to
+ * trace_ice_<trace_name>_enabled() functions.
+ * @trace_name: name of tracepoint
+ */
+#define _ICE_TRACE_NAME(trace_name) (trace_##ice##_##trace_name)
+#define ICE_TRACE_NAME(trace_name) _ICE_TRACE_NAME(trace_name)
+
+#define ice_trace(trace_name, args...) ICE_TRACE_NAME(trace_name)(args)
+
+#define ice_trace_enabled(trace_name) ICE_TRACE_NAME(trace_name##_enabled)()
+
+/* This is for events common to PF. Corresponding versions will be named
+ * trace_ice_*. The ice_trace() macro above will select the right trace point
+ * name for the driver.
+ */
+
+/* Begin tracepoints */
+
+/* Global tracepoints */
+
+/* Events related to DIM, q_vectors and ring containers */
+DECLARE_EVENT_CLASS(ice_rx_dim_template,
+		    TP_PROTO(struct ice_q_vector *q_vector, struct dim *dim),
+		    TP_ARGS(q_vector, dim),
+		    TP_STRUCT__entry(__field(struct ice_q_vector *, q_vector)
+				     __field(struct dim *, dim)
+				     __string(devname, q_vector->rx.ring->netdev->name)),
+
+		    TP_fast_assign(__entry->q_vector = q_vector;
+				   __entry->dim = dim;
+				   __assign_str(devname, q_vector->rx.ring->netdev->name);),
+
+		    TP_printk("netdev: %s Rx-Q: %d dim-state: %d dim-profile: %d dim-tune: %d dim-st-right: %d dim-st-left: %d dim-tired: %d",
+			      __get_str(devname),
+			      __entry->q_vector->rx.ring->q_index,
+			      __entry->dim->state,
+			      __entry->dim->profile_ix,
+			      __entry->dim->tune_state,
+			      __entry->dim->steps_right,
+			      __entry->dim->steps_left,
+			      __entry->dim->tired)
+);
+
+DEFINE_EVENT(ice_rx_dim_template, ice_rx_dim_work,
+	     TP_PROTO(struct ice_q_vector *q_vector, struct dim *dim),
+	     TP_ARGS(q_vector, dim)
+);
+
+DECLARE_EVENT_CLASS(ice_tx_dim_template,
+		    TP_PROTO(struct ice_q_vector *q_vector, struct dim *dim),
+		    TP_ARGS(q_vector, dim),
+		    TP_STRUCT__entry(__field(struct ice_q_vector *, q_vector)
+				     __field(struct dim *, dim)
+				     __string(devname, q_vector->tx.ring->netdev->name)),
+
+		    TP_fast_assign(__entry->q_vector = q_vector;
+				   __entry->dim = dim;
+				   __assign_str(devname, q_vector->tx.ring->netdev->name);),
+
+		    TP_printk("netdev: %s Tx-Q: %d dim-state: %d dim-profile: %d dim-tune: %d dim-st-right: %d dim-st-left: %d dim-tired: %d",
+			      __get_str(devname),
+			      __entry->q_vector->tx.ring->q_index,
+			      __entry->dim->state,
+			      __entry->dim->profile_ix,
+			      __entry->dim->tune_state,
+			      __entry->dim->steps_right,
+			      __entry->dim->steps_left,
+			      __entry->dim->tired)
+);
+
+DEFINE_EVENT(ice_tx_dim_template, ice_tx_dim_work,
+	     TP_PROTO(struct ice_q_vector *q_vector, struct dim *dim),
+	     TP_ARGS(q_vector, dim)
+);
+
+/* Events related to a vsi & ring */
+DECLARE_EVENT_CLASS(ice_tx_template,
+		    TP_PROTO(struct ice_ring *ring, struct ice_tx_desc *desc,
+			     struct ice_tx_buf *buf),
+
+		    TP_ARGS(ring, desc, buf),
+		    TP_STRUCT__entry(__field(void *, ring)
+				     __field(void *, desc)
+				     __field(void *, buf)
+				     __string(devname, ring->netdev->name)),
+
+		    TP_fast_assign(__entry->ring = ring;
+				   __entry->desc = desc;
+				   __entry->buf = buf;
+				   __assign_str(devname, ring->netdev->name);),
+
+		    TP_printk("netdev: %s ring: %pK desc: %pK buf %pK", __get_str(devname),
+			      __entry->ring, __entry->desc, __entry->buf)
+);
+
+#define DEFINE_TX_TEMPLATE_OP_EVENT(name) \
+DEFINE_EVENT(ice_tx_template, name, \
+	     TP_PROTO(struct ice_ring *ring, \
+		      struct ice_tx_desc *desc, \
+		      struct ice_tx_buf *buf), \
+	     TP_ARGS(ring, desc, buf))
+
+DEFINE_TX_TEMPLATE_OP_EVENT(ice_clean_tx_irq);
+DEFINE_TX_TEMPLATE_OP_EVENT(ice_clean_tx_irq_unmap);
+DEFINE_TX_TEMPLATE_OP_EVENT(ice_clean_tx_irq_unmap_eop);
+
+DECLARE_EVENT_CLASS(ice_rx_template,
+		    TP_PROTO(struct ice_ring *ring, union ice_32b_rx_flex_desc *desc),
+
+		    TP_ARGS(ring, desc),
+
+		    TP_STRUCT__entry(__field(void *, ring)
+				     __field(void *, desc)
+				     __string(devname, ring->netdev->name)),
+
+		    TP_fast_assign(__entry->ring = ring;
+				   __entry->desc = desc;
+				   __assign_str(devname, ring->netdev->name);),
+
+		    TP_printk("netdev: %s ring: %pK desc: %pK", __get_str(devname),
+			      __entry->ring, __entry->desc)
+);
+DEFINE_EVENT(ice_rx_template, ice_clean_rx_irq,
+	     TP_PROTO(struct ice_ring *ring, union ice_32b_rx_flex_desc *desc),
+	     TP_ARGS(ring, desc)
+);
+
+DECLARE_EVENT_CLASS(ice_rx_indicate_template,
+		    TP_PROTO(struct ice_ring *ring, union ice_32b_rx_flex_desc *desc,
+			     struct sk_buff *skb),
+
+		    TP_ARGS(ring, desc, skb),
+
+		    TP_STRUCT__entry(__field(void *, ring)
+				     __field(void *, desc)
+				     __field(void *, skb)
+				     __string(devname, ring->netdev->name)),
+
+		    TP_fast_assign(__entry->ring = ring;
+				   __entry->desc = desc;
+				   __entry->skb = skb;
+				   __assign_str(devname, ring->netdev->name);),
+
+		    TP_printk("netdev: %s ring: %pK desc: %pK skb %pK", __get_str(devname),
+			      __entry->ring, __entry->desc, __entry->skb)
+);
+
+DEFINE_EVENT(ice_rx_indicate_template, ice_clean_rx_irq_indicate,
+	     TP_PROTO(struct ice_ring *ring, union ice_32b_rx_flex_desc *desc,
+		      struct sk_buff *skb),
+	     TP_ARGS(ring, desc, skb)
+);
+
+DECLARE_EVENT_CLASS(ice_xmit_template,
+		    TP_PROTO(struct ice_ring *ring, struct sk_buff *skb),
+
+		    TP_ARGS(ring, skb),
+
+		    TP_STRUCT__entry(__field(void *, ring)
+				     __field(void *, skb)
+				     __string(devname, ring->netdev->name)),
+
+		    TP_fast_assign(__entry->ring = ring;
+				   __entry->skb = skb;
+				   __assign_str(devname, ring->netdev->name);),
+
+		    TP_printk("netdev: %s skb: %pK ring: %pK", __get_str(devname),
+			      __entry->skb, __entry->ring)
+);
+
+#define DEFINE_XMIT_TEMPLATE_OP_EVENT(name) \
+DEFINE_EVENT(ice_xmit_template, name, \
+	     TP_PROTO(struct ice_ring *ring, struct sk_buff *skb), \
+	     TP_ARGS(ring, skb))
+
+DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring);
+DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring_drop);
+
+/* End tracepoints */
+
+#endif /* _ICE_TRACE_H_ */
+/* This must be outside ifdef _ICE_TRACE_H */
+
+/* This trace include file is not located in the .../include/trace
+ * with the kernel tracepoint definitions, because we're a loadable
+ * module.
+ */
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE ../../drivers/net/ethernet/intel/ice/ice_trace
+#include <trace/define_trace.h>
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index e9e9edb32c6f..a63d5916ebb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -10,6 +10,7 @@
 #include "ice_txrx_lib.h"
 #include "ice_lib.h"
 #include "ice.h"
+#include "ice_trace.h"
 #include "ice_dcb_lib.h"
 #include "ice_xsk.h"
 
@@ -224,6 +225,7 @@ static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int napi_budget)
 
 		smp_rmb();	/* prevent any other reads prior to eop_desc */
 
+		ice_trace(clean_tx_irq, tx_ring, tx_desc, tx_buf);
 		/* if the descriptor isn't done, no work yet to do */
 		if (!(eop_desc->cmd_type_offset_bsz &
 		      cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)))
@@ -254,6 +256,7 @@ static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int napi_budget)
 
 		/* unmap remaining buffers */
 		while (tx_desc != eop_desc) {
+			ice_trace(clean_tx_irq_unmap, tx_ring, tx_desc, tx_buf);
 			tx_buf++;
 			tx_desc++;
 			i++;
@@ -272,6 +275,7 @@ static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int napi_budget)
 				dma_unmap_len_set(tx_buf, len, 0);
 			}
 		}
+		ice_trace(clean_tx_irq_unmap_eop, tx_ring, tx_desc, tx_buf);
 
 		/* move us one more past the eop_desc for start of next pkt */
 		tx_buf++;
@@ -1102,6 +1106,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		 */
 		dma_rmb();
 
+		ice_trace(clean_rx_irq, rx_ring, rx_desc);
 		if (rx_desc->wb.rxdid == FDIR_DESC_RXDID || !rx_ring->netdev) {
 			struct ice_vsi *ctrl_vsi = rx_ring->vsi;
 
@@ -1207,6 +1212,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 
 		ice_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
 
+		ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
 		/* send completed skb up the stack */
 		ice_receive_skb(rx_ring, skb, vlan_tag);
 		skb = NULL;
@@ -2188,6 +2194,8 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 	unsigned int count;
 	int tso, csum;
 
+	ice_trace(xmit_frame_ring, tx_ring, skb);
+
 	count = ice_xmit_desc_count(skb);
 	if (ice_chk_linearize(skb, count)) {
 		if (__skb_linearize(skb))
@@ -2262,6 +2270,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 	return NETDEV_TX_OK;
 
 out_drop:
+	ice_trace(xmit_frame_ring_drop, tx_ring, skb);
 	dev_kfree_skb_any(skb);
 	return NETDEV_TX_OK;
 }

base-commit: 1190cbb9ea5032f165610dffa0f219f307ea47c4
prerequisite-patch-id: 6283aea72909cf2e9ec4798ffa5f3e93f795daec
prerequisite-patch-id: d4192d4a039ce1e7e65749343b73f34d7fe251b9
prerequisite-patch-id: 2444302402ee2f9268c57c64c235e182d3470cf2
prerequisite-patch-id: 4cc71cb2034f54579a34a69578a779a67084e93a
prerequisite-patch-id: 8668ed13827592a3d85e1faba4ae757183de802e
prerequisite-patch-id: cdce20951e497fbf6a8554ae4f6b2ab440cb9dee
prerequisite-patch-id: 9792b5b530eb8ba7f47ec8e85675da43196d637e
prerequisite-patch-id: 95781328d1d224b4a351b9a29dc3a936e236854d
prerequisite-patch-id: 1c0ddd136d191689e659ab40feca5fc17f178172
prerequisite-patch-id: 14ecced24ad97d122fbf9243cb1e7e4d1ba3b9c7
prerequisite-patch-id: 837e58516aea3554c1e5e288770380806ca05365
prerequisite-patch-id: 0168d1252a9b094333d9ece56251e716ad356e9a
prerequisite-patch-id: d8e293d5e9a0c401b6441e15701623e2c72581cb
prerequisite-patch-id: 8bd1f3cab9c1fa898ac69dc1feb7dffda0c42fa8
prerequisite-patch-id: 707bc842550968911903ff38bc1cc5a8a9e987ae
prerequisite-patch-id: 3053d58d0ce0d010174098dcac90efd94ec7b8c9
prerequisite-patch-id: d5af19de6bcc5383393dc3668c5720d5be14f8d0
prerequisite-patch-id: 97d83d2acd3bb5787f3e69e54e2a53e83466d80d
prerequisite-patch-id: 5dbea3c51b63b0fdfadb313674aa3528172aaefa
prerequisite-patch-id: f10780b2d361f2dbdaba2824f7c81f383754bfe0
prerequisite-patch-id: 9b2579bdc8c852a0e054898ee62bac0978a735ce
prerequisite-patch-id: e7be7e3fba6bb282ddfedd10c4a2ec0bb2553952
prerequisite-patch-id: bf02518ff9b6a9e37261931327fe63098848c725
prerequisite-patch-id: 1c5f58079a2b2f2d815b5ca578b3d0f706cf0b94
prerequisite-patch-id: 87795805eb95923b13d930a5ec5004cf377a76d5
prerequisite-patch-id: 4cba800844198bea47d72e1b38754afd66941298
prerequisite-patch-id: 1335b733649722759cbc6da63ba79e8a0d18dbb6
prerequisite-patch-id: ab4177b508f009265ca14472ef4795767b91621e
prerequisite-patch-id: ecee4885ae4773fb4b688147471f2ae74b53f679
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
