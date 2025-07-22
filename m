Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE98B0D7B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A42C42A36;
	Tue, 22 Jul 2025 11:07:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2TjV1iIlyaW9; Tue, 22 Jul 2025 11:07:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2451A42A38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182423;
	bh=8MSDk01X6qOnbtoRU3t9nxrD/skHzzHP30YX5cyq894=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h+2jojU9SuJq9uATp+iBQxMTi4rUWYlnKvlH6N9mrxNI6a6q4BUN+uCTotQXPpCKH
	 N3dI9dxkFsoDezJeY2ea8LwzRMRfFZA4ZXvbMkEPM2rIrYHy4Gdl/ENV73aVMHBkQ3
	 eCmMYl+Ujjg82gD05+TPekj5gqFRlYF++xt0VXtEhnFw2l8Ep32iYYVqy7gv19XF6A
	 gvZrM44zKNtL/N6bUC8OuwtXpu7DOt0R3wZQj4u0vUws2Ziva3SX2SydZPaov/9F8Y
	 TyHfYIcqvXZuIKfolcO0QP5DuG1Mf96WFVNpbSoZ5S8duiicHtSnnQrD1RhNLYJvyl
	 pnypCWdD1HX1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2451A42A38;
	Tue, 22 Jul 2025 11:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA5E9E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0BB984B49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHE9-Miz6_qv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1012584B21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1012584B21
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1012584B21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:06:59 +0000 (UTC)
X-CSE-ConnectionGUID: TURwVknDQ16Memz/3Ek85w==
X-CSE-MsgGUID: K/3hDqm1QYWZhkTS/4QClA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083583"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083583"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:00 -0700
X-CSE-ConnectionGUID: 7wOJTViTRHCCz3YAX5m0Wg==
X-CSE-MsgGUID: q5NS+bowR6aa3avH+toFrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153926"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:06:58 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:47 +0200
Message-ID: <20250722104600.10141-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182420; x=1784718420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LBeEu8B+l6M6Pppf5tohqwrjCPwLtmbFMnPPp5cFrbE=;
 b=EsIrs5ujXF/l3NC6EIJldxxzinKOj6WvQcOgPPyULCW/ZjzKZFdWwmu8
 gxh3V8skMvM55LWVrnzSZMQU6QZyHbYto2KI1QL2JCEvkwYF7ugGKnA7c
 GW/GV4ZSi1LNSLCtzbV0K23Vu1Te4jW/eQYBwy2YYzjDJMt8aUOFOnYae
 AvNlIDnN2TjwJTnSSpE8rYYUS6GQ5/2NC/joFmQLCPhPfNreIWmEKdVWQ
 yrT7StO59ReQF/tqkihQCa6Ia6YXZ17xpacKKd85O0f1bqYIaBozFfsyl
 WMRKff35fvpmevJEJkIyhEVYoyt4IVxh0o4w7nCfk3XgbPOaVvHF9dkAE
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EsIrs5uj
Subject: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: move
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
index 8e0b06c1e02b..c2101853adf8 100644
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

