Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C0F31980C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 02:44:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F34A16F6FC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 01:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U_c2bgnHWwsq for <lists+intel-wired-lan@lfdr.de>;
	Fri, 12 Feb 2021 01:44:02 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 2CF7F6F746; Fri, 12 Feb 2021 01:44:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 953CF6F6E2;
	Fri, 12 Feb 2021 01:43:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8241C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57C236F5D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J5w2EiMKJvqZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 01:43:45 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 786676F6A1; Fri, 12 Feb 2021 01:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D29E6F5DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:44 +0000 (UTC)
IronPort-SDR: juuYbGnSEIA5byXiCVLNbTZo/KACUsZ5pzv0tR14h3hkr6NQ+W/eG1pzp6cKcVwAAXTghwb+Wc
 URjnnn5xWXKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="243843191"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="243843191"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:43:43 -0800
IronPort-SDR: igtfowN8Nts+2HID0gWGHqD2sW73pP78N0sMxVOQmsU8T7EdduEP/LllR2maCOe7u00bsGZnO+
 3DxuLJr3DI+Q==
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="437405884"
Received: from boksimli-mobl.amr.corp.intel.com (HELO edesouza-mobl1.lan)
 ([10.209.182.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:43:42 -0800
From: Ederson de Souza <ederson.desouza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Feb 2021 17:42:11 -0800
Message-Id: <20210212014212.41570-2-ederson.desouza@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210212014212.41570-1-ederson.desouza@intel.com>
References: <20210212014212.41570-1-ederson.desouza@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Enable internal
 i225 PPS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i225 device can produce one interrupt on the full second. This patch
allows using this interrupt to generate an internal PPS event for
adjusting the kernel system time.

Signed-off-by: Ederson de Souza <ederson.desouza@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_main.c |  8 +++++++
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 28 ++++++++++++++++++++++-
 3 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 415cfea27718..fa81cec80711 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -224,6 +224,8 @@ struct igc_adapter {
 	char fw_version[32];
 
 	struct bpf_prog *xdp_prog;
+
+	bool pps_sys_wrap_on;
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c363f7fd1aaa..5e3b6ac00b3a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4599,9 +4599,17 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 static void igc_tsync_interrupt(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	struct ptp_clock_event event;
 	u32 tsicr = rd32(IGC_TSICR);
 	u32 ack = 0;
 
+	if (tsicr & IGC_TSICR_SYS_WRAP) {
+		event.type = PTP_CLOCK_PPS;
+		if (adapter->ptp_caps.pps)
+			ptp_clock_event(adapter->ptp_clock, &event);
+		ack |= IGC_TSICR_SYS_WRAP;
+	}
+
 	if (tsicr & IGC_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
 		schedule_work(&adapter->ptp_tx_work);
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 7301a7b3fadc..868cd51909e9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -123,6 +123,29 @@ static int igc_ptp_settime_i225(struct ptp_clock_info *ptp,
 static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 				       struct ptp_clock_request *rq, int on)
 {
+	struct igc_adapter *igc =
+		container_of(ptp, struct igc_adapter, ptp_caps);
+	struct igc_hw *hw = &igc->hw;
+	unsigned long flags;
+	u32 tsim;
+
+	switch (rq->type) {
+	case PTP_CLK_REQ_PPS:
+		spin_lock_irqsave(&igc->tmreg_lock, flags);
+		tsim = rd32(IGC_TSIM);
+		if (on)
+			tsim |= IGC_TSICR_SYS_WRAP;
+		else
+			tsim &= ~IGC_TSICR_SYS_WRAP;
+		igc->pps_sys_wrap_on = !!on;
+		wr32(IGC_TSIM, tsim);
+		spin_unlock_irqrestore(&igc->tmreg_lock, flags);
+		return 0;
+
+	default:
+		break;
+	}
+
 	return -EOPNOTSUPP;
 }
 
@@ -497,6 +520,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 		adapter->ptp_caps.gettimex64 = igc_ptp_gettimex64_i225;
 		adapter->ptp_caps.settime64 = igc_ptp_settime_i225;
 		adapter->ptp_caps.enable = igc_ptp_feature_enable_i225;
+		adapter->ptp_caps.pps = 1;
 		break;
 	default:
 		adapter->ptp_clock = NULL;
@@ -598,7 +622,9 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 	case igc_i225:
 		wr32(IGC_TSAUXC, 0x0);
 		wr32(IGC_TSSDP, 0x0);
-		wr32(IGC_TSIM, IGC_TSICR_INTERRUPTS);
+		wr32(IGC_TSIM,
+		     IGC_TSICR_INTERRUPTS |
+		     (adapter->pps_sys_wrap_on ? IGC_TSICR_SYS_WRAP : 0));
 		wr32(IGC_IMS, IGC_IMS_TS);
 		break;
 	default:
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
