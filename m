Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2701F4C98BD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 00:02:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C707E40476;
	Tue,  1 Mar 2022 23:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RrSGa6zgfwaV; Tue,  1 Mar 2022 23:02:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B34940463;
	Tue,  1 Mar 2022 23:02:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E9111BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 23:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CA1F40463
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 23:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6M5RxXSXYcT7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 23:02:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1237C40383
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 23:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646175755; x=1677711755;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8iY0+3+ErF7C+2w2E7o3UFDZz4r7RP65eR/8mVhbp2M=;
 b=ekGz2+9rjAEsHkgaoxVrmYri9tX20m62TaT6AdtBxyCQ8ymdp/Nw7Lo6
 6oHxjN95BsFCqARfXjrX2ry6ucaWEukNpJnAZIPcRdwpi+dmLbGwXqYY7
 n1Vmb6pNgdLIn7eOAb6hZcWT33dpT9qMO/XEoYwn+RKujuf5l7bqwPc5+
 fyp4ddnXUK07GG32PByAxCZwQ5G8mAzIG3DzLkk4AqkZyWrkhd6mqXhAl
 W+fAFZUYXxrStkSNkGEirZprQ0iLUN7gbTaAFrypO1S5/P2t5rkeVLtse
 HOEKreYpxwlSppDx/aRDstrFk1PA2p785IIvGN8V7i25gHeT5HM848jco A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="240674482"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="240674482"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 15:02:34 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="507979725"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 15:02:34 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Mar 2022 15:02:28 -0800
Message-Id: <20220301230228.925588-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.355.ge7e302376dd6
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: add trace events for tx timestamps
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
Cc: Ken Young <keyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We've previously run into many issues related to the latency of a Tx
timestamp completion with the ice hardware. It can be difficult to
determine the root cause of a slow Tx timestamp. To aid in this,
introduce new trace events which capture timing data about when the
driver reaches certain points while processing a transmit timestamp

 * ice_tx_tstamp_request: Trace when the stack initiates a new timestamp
   request.

 * ice_tx_tstamp_fw_req: Trace when the driver begins a read of the
   timestamp register in the work thread.

 * ice_tx_tstamp_fw_done: Trace when the driver finishes reading a
   timestamp register in the work thread.

 * ice_tx_tstamp_complete: Trace when the driver submits the skb back to
   the stack with a completed Tx timestamp.

These trace events can be enabled using the standard trace event
subsystem exposed by the ice driver. If they are disabled, they become
no-ops with no run time cost.

The following is a simple GNU AWK script which can highlight one
potential way to use the trace events to capture latency data from the
trace buffer about how long the driver takes to process a timestamp:

-----
  BEGIN {
      PREC=256
  }

  # Detect requests
  /tx_tstamp_request/ {
      time=strtonum($4)
      skb=$7

      # Store the time of request for this skb
      requests[skb] = time
      printf("skb %s: idx %d at %.6f\n", skb, idx, time)
  }

  # Detect completions
  /tx_tstamp_complete/ {
      time=strtonum($4)
      skb=$7
      idx=$9

      if (skb in requests) {
          latency = (time - requests[skb]) * 1000
          printf("skb %s: %.3f to complete\n", skb, latency)
          if (latency > 4) {
              printf(">>> HIGH LATENCY <<<\n")
          }
          printf("\n")
      } else {
          printf("!!! skb %s (idx %d) at %.6f\n", skb, idx, time)
      }
  }
-----

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c   |  8 ++++++++
 drivers/net/ethernet/intel/ice/ice_trace.h | 24 ++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 000c39d163a2..a1cd33273ca4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3,6 +3,7 @@
 
 #include "ice.h"
 #include "ice_lib.h"
+#include "ice_trace.h"
 
 #define E810_OUT_PROP_DELAY_NS 1
 
@@ -2063,11 +2064,15 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
 		struct sk_buff *skb;
 		int err;
 
+		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
+
 		err = ice_read_phy_tstamp(hw, tx->quad, phy_idx,
 					  &raw_tstamp);
 		if (err)
 			continue;
 
+		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
+
 		/* Check if the timestamp is invalid or stale */
 		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
 		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
@@ -2093,6 +2098,8 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
 		tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
 		shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
 
+		ice_trace(tx_tstamp_complete, skb, idx);
+
 		skb_tstamp_tx(skb, &shhwtstamps);
 		dev_kfree_skb_any(skb);
 	}
@@ -2131,6 +2138,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 		tx->tstamps[idx].start = jiffies;
 		tx->tstamps[idx].skb = skb_get(skb);
 		skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
+		ice_trace(tx_tstamp_request, skb, idx);
 	}
 
 	spin_unlock(&tx->lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
index cf685247c07a..ae98d5a8ff60 100644
--- a/drivers/net/ethernet/intel/ice/ice_trace.h
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -216,6 +216,30 @@ DEFINE_EVENT(ice_xmit_template, name, \
 DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring);
 DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring_drop);
 
+DECLARE_EVENT_CLASS(ice_tx_tstamp_template,
+		    TP_PROTO(struct sk_buff *skb, int idx),
+
+		    TP_ARGS(skb, idx),
+
+		    TP_STRUCT__entry(__field(void *, skb)
+				     __field(int, idx)),
+
+		    TP_fast_assign(__entry->skb = skb;
+				   __entry->idx = idx;),
+
+		    TP_printk("skb %pK idx %d",
+			      __entry->skb, __entry->idx)
+);
+#define DEFINE_TX_TSTAMP_OP_EVENT(name) \
+DEFINE_EVENT(ice_tx_tstamp_template, name, \
+	     TP_PROTO(struct sk_buff *skb, int idx), \
+	     TP_ARGS(skb, idx))
+
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_request);
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_req);
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_done);
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_complete);
+
 /* End tracepoints */
 
 #endif /* _ICE_TRACE_H_ */

base-commit: 8646ddba7233169c146c00fcba41da551f874f66
-- 
2.35.1.355.ge7e302376dd6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
