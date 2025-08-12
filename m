Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 646BAB21C5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 727D641E00;
	Tue, 12 Aug 2025 04:54:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wzPyvM7iV0js; Tue, 12 Aug 2025 04:54:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7B7541DEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974445;
	bh=HhhJ9FIj2a5/G19wUikeIER5tD8/arMovxBbCOmYvzw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HeVTUXF6Z7uSaJLCPvV3Jh1dI6s4AX18Xg05l49lymRJ5spqmcxbPQuC8XvJWrRJH
	 PGMHKZlzUlZN1r03L3iIZB17YKLyiE/p4b9QfRkQHWKv8BwbfNxy8JWTAuOjehll8x
	 4HrWKBzPdK2bO1CpDn/dWNEocCX+8pEd7Vnaw0vxuaFZscCLgsviFmDXYRnbXS4oK+
	 uPv5w0IfDAJIXfx8yjj8nU1xo0zg3h+uFJKlP94Fvh1XIUfZXQQ1D4zco2t3dVI+fD
	 dtm6GKjbbPvULl58qEBCynoIGxdmYkZYwunVin+rsh7k4it3V3ZVoK6mjCv71g3422
	 RVrilqx8XAybg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7B7541DEF;
	Tue, 12 Aug 2025 04:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 87F90183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BF3461356
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MsCaLhljE6vF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C33BE61271
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C33BE61271
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C33BE61271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:01 +0000 (UTC)
X-CSE-ConnectionGUID: JO0FYx/MRYOUcMK112ZUeQ==
X-CSE-MsgGUID: RUeS5Nk1S4KYkeODtGIc/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612728"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612728"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:46:56 -0700
X-CSE-ConnectionGUID: 3gOTvJLnSWq9CI1yGvx/rQ==
X-CSE-MsgGUID: Dgm6G1zMTtK12tub5NeEIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327872"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:46:55 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:23 +0200
Message-ID: <20250812042337.1356907-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974442; x=1786510442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vB/Do1r7J0DoSOADdBcH7Ab5053tPiIwINFxr5Ka8j8=;
 b=dbOzXcDp2Fmz0UdSJ4Ci0w1nvatt4+rnD6vAcsgHalTve4Aid1Brgtl4
 N3qcmugjhA08KviR0lGY+7aNCT6920bA+2FIIyelIMa9GX9j/qPHhgpM3
 U55IHyR5HxOTKnApyQ7tRi/58mJFJHioJ5lor3sutYHVKHvOfCJHksRfg
 y8cPK5zcsVTkAocNCwynXS8DztmhqP7BY4qoVKqi+onZ3YnNdfJVkNlxS
 2Z3XafjT+pfeOPz20zWIh6oiLbczGvj/S9OxXH6e1HhobHMxZCIgwUCcv
 uOhr7h+4J9msUqL/vZp83did5g6YI7dFeapbG6KEDO6718F3zERqazX54
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dbOzXcDp
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/15] ice: move
 get_fwlog_data() to fwlog file
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change the function prototype to receive hw structure instead of pf to
simplify the call. Instead of passing whole event pass only msg_buf
pointer and length.

Make ice_fwlog_ring_full() static as it isn't  called from any other
context.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fwlog.c | 27 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c  | 29 ++--------------------
 3 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index e48856206648..ea5d6d2d3f30 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -6,7 +6,7 @@
 #include "ice_common.h"
 #include "ice_fwlog.h"
 
-bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
+static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
 {
 	u16 head, tail;
 
@@ -456,3 +456,28 @@ int ice_fwlog_unregister(struct ice_hw *hw)
 
 	return status;
 }
+
+/**
+ * ice_get_fwlog_data - copy the FW log data from ARQ event
+ * @hw: HW that the FW log event is associated with
+ * @buf: event buffer pointer
+ * @len: len of event descriptor
+ */
+void ice_get_fwlog_data(struct ice_hw *hw, u8 *buf, u16 len)
+{
+	struct ice_fwlog_data *fwlog;
+
+	fwlog = &hw->fwlog_ring.rings[hw->fwlog_ring.tail];
+
+	memset(fwlog->data, 0, PAGE_SIZE);
+	fwlog->data_size = len;
+
+	memcpy(fwlog->data, buf, fwlog->data_size);
+	ice_fwlog_ring_increment(&hw->fwlog_ring.tail, hw->fwlog_ring.size);
+
+	if (ice_fwlog_ring_full(&hw->fwlog_ring)) {
+		/* the rings are full so bump the head to create room */
+		ice_fwlog_ring_increment(&hw->fwlog_ring.head,
+					 hw->fwlog_ring.size);
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 7d95d11b6ef9..5b9244f4f0f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -64,7 +64,6 @@ struct ice_fwlog_ring {
 #define ICE_FWLOG_RING_SIZE_DFLT 256
 #define ICE_FWLOG_RING_SIZE_MAX 512
 
-bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings);
 bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
 void ice_fwlog_ring_increment(u16 *item, u16 size);
 int ice_fwlog_init(struct ice_hw *hw);
@@ -73,4 +72,5 @@ int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_register(struct ice_hw *hw);
 int ice_fwlog_unregister(struct ice_hw *hw);
 void ice_fwlog_realloc_rings(struct ice_hw *hw, int index);
+void ice_get_fwlog_data(struct ice_hw *hw, u8 *buf, u16 len);
 #endif /* _ICE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1528edeae24..6b8eedc86b69 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1250,32 +1250,6 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	return status;
 }
 
-/**
- * ice_get_fwlog_data - copy the FW log data from ARQ event
- * @pf: PF that the FW log event is associated with
- * @event: event structure containing FW log data
- */
-static void
-ice_get_fwlog_data(struct ice_pf *pf, struct ice_rq_event_info *event)
-{
-	struct ice_fwlog_data *fwlog;
-	struct ice_hw *hw = &pf->hw;
-
-	fwlog = &hw->fwlog_ring.rings[hw->fwlog_ring.tail];
-
-	memset(fwlog->data, 0, PAGE_SIZE);
-	fwlog->data_size = le16_to_cpu(event->desc.datalen);
-
-	memcpy(fwlog->data, event->msg_buf, fwlog->data_size);
-	ice_fwlog_ring_increment(&hw->fwlog_ring.tail, hw->fwlog_ring.size);
-
-	if (ice_fwlog_ring_full(&hw->fwlog_ring)) {
-		/* the rings are full so bump the head to create room */
-		ice_fwlog_ring_increment(&hw->fwlog_ring.head,
-					 hw->fwlog_ring.size);
-	}
-}
-
 /**
  * ice_aq_prep_for_event - Prepare to wait for an AdminQ event from firmware
  * @pf: pointer to the PF private structure
@@ -1566,7 +1540,8 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			}
 			break;
 		case ice_aqc_opc_fw_logs_event:
-			ice_get_fwlog_data(pf, &event);
+			ice_get_fwlog_data(hw, event.msg_buf,
+					   le16_to_cpu(event.desc.datalen));
 			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
-- 
2.49.0

