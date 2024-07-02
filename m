Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C65A791EDA5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 06:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75AA160809;
	Tue,  2 Jul 2024 04:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cmVk9asosNO1; Tue,  2 Jul 2024 04:11:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 812AD60A48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719893516;
	bh=THDwsE4H8cHPvgINzUTSXvzd5O+GUDOXd9KOkK4B2B0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WrpehDkrBC8OOshIbSVQgVxyu4RsiI544L9g7uu0DvCi814gI5u5M4EnMvw+1gqLN
	 wlOLQGOirmE0z/YgTYscUY8o2aLuSU2XChCEeqD84XH56DvjgDYo/AGeuJXdcQE/FU
	 GGiO2MQfocgeb1kmuVSykKUk/F/Eib359UAMgQAEYQDC2Y4k0tfmsp1eWINZ5vhcCv
	 24xdTLljDzSnlMXQZ2pwXoG2L1wJAyWaOKaBGZ+zreCpFSMyTX6rOd2LMLawAPGuw6
	 ehqR5jgUm1BwG6Eb3sN0YTqSJV9toLTXT+60BGaSQrnQTwiT5dOBJYdDaEyCvD+JO5
	 hm4QC+C+u1npw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 812AD60A48;
	Tue,  2 Jul 2024 04:11:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4ADC31BF32E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45C93607FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jyf4JuZKWR1m for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 04:11:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 582D2608A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 582D2608A5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 582D2608A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:53 +0000 (UTC)
X-CSE-ConnectionGUID: n/u/vFhERQGvUJcbNG7YRw==
X-CSE-MsgGUID: e2Cow0wlQX+YKqAV3bWeMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="20916496"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="20916496"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:53 -0700
X-CSE-ConnectionGUID: NlO7AS+DT9WyQ5fapWGCIw==
X-CSE-MsgGUID: U8Q8wTjRQUO5q6rLPDlH8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46183529"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:53 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 4F5E5201A797;
 Mon,  1 Jul 2024 21:11:50 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue,  2 Jul 2024 00:09:24 -0400
Message-Id: <20240702040926.3327530-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719893513; x=1751429513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q8NUF1xSMQJs5UewEtAX/h5t9cGorbCLoqFhoMPiLBo=;
 b=KdvCPBI6+RtCljm0QbKy4Ol5vm/13++tuoVACtECFUejmGSDU/PCGByI
 mtACTFlZkwuEXstdJDtFGcLHw/LAxFxSp/+krqTR7EJ8uQ40jL2RN9/OR
 oZZjkBnW5U8lxg7RGNsSvmu9/pxzYt4XUFjjIgifMsPuwFWdVQcZDrfVL
 hUsClF0uA8IKS8EKEj+GXH0QtAdCPUHluG2rL+uDlpmbEJ9VaWSd0A+UL
 5h14MFBQHYtCOqZqE/fHN3LUtjaex6ZzjOAi47jZixNaEYuaZAgZYh+ZN
 PFbS7MsBlrOWm199VbdG7S0fl9XqU3fz1reNXx/sgdlKnNMOaLVW17Pi+
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KdvCPBI6
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/4] igc: Fix reset adapter
 logics when tx mode change
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
remaining issues with the reset adapter logic in igc_tsn_offload_apply()
have been observed:

1. The reset adapter logics for i225 and i226 differ, although they should
   be the same according to the guidelines in I225/6 HW Design Section
   7.5.2.1 on software initialization during tx mode changes.
2. The i225 resets adapter every time, even though tx mode doesn't change.
   This occurs solely based on the condition  igc_is_device_id_i225() when
   calling schedule_work().
3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
   resets adapter for legacy->tsn tx mode transitions.
4. qbv_count introduced in the patch is actually not needed; in this
   context, a non-zero value of qbv_count is used to indicate if tx mode
   was unconditionally set to tsn in igc_tsn_enable_offload(). This could
   be replaced by checking the existing register
   IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.

This patch resolves all issues and enters schedule_work() to reset the
adapter only when changing tx mode. It also removes reliance on qbv_count.

qbv_count field will be removed in a future patch.

Test ran:

1. Verify reset adapter behaviour in i225/6:
   a) Enrol a new GCL
      Reset adapter observed (tx mode change legacy->tsn)
   b) Enrol a new GCL without deleting qdisc
      No reset adapter observed (tx mode remain tsn->tsn)
   c) Delete qdisc
      Reset adapter observed (tx mode change tsn->legacy)

2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
   to confirm it remains resolved.

Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 26 +++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 02dd41aff634..61f047ebf34d 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -49,6 +49,13 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	return new_flags;
 }
 
+static bool igc_tsn_is_tx_mode_in_tsn(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	return (bool)(rd32(IGC_TQAVCTRL) & IGC_TQAVCTRL_TRANSMIT_MODE_TSN);
+}
+
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
@@ -334,15 +341,28 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	return err;
 }
 
+static bool igc_tsn_will_tx_mode_change(struct igc_adapter *adapter)
+{
+	bool any_tsn_enabled = (bool)(igc_tsn_new_flags(adapter) &
+			       IGC_FLAG_TSN_ANY_ENABLED);
+
+	if ((any_tsn_enabled && !igc_tsn_is_tx_mode_in_tsn(adapter)) ||
+	    (!any_tsn_enabled && igc_tsn_is_tx_mode_in_tsn(adapter)))
+		return true;
+	else
+		return false;
+}
+
 int igc_tsn_offload_apply(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 
-	/* Per I225/6 HW Design Section 7.5.2.1, transmit mode
-	 * cannot be changed dynamically. Require reset the adapter.
+	/* Per I225/6 HW Design Section 7.5.2.1 guideline, if tx mode change
+	 * from legacy->tsn or tsn->legacy, then reset adapter is needed.
 	 */
 	if (netif_running(adapter->netdev) &&
-	    (igc_is_device_id_i225(hw) || !adapter->qbv_count)) {
+	    (igc_is_device_id_i225(hw) || igc_is_device_id_i226(hw)) &&
+	     igc_tsn_will_tx_mode_change(adapter)) {
 		schedule_work(&adapter->reset_task);
 		return 0;
 	}
-- 
2.25.1

