Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3CB31F3A1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 02:31:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4473886A14;
	Fri, 19 Feb 2021 01:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlKUQk+PuO8n; Fri, 19 Feb 2021 01:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20BAA86691;
	Fri, 19 Feb 2021 01:31:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C2C01BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 01:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68AD886AAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 01:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMh1dhUs8orr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 01:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CA3A86B18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 01:31:20 +0000 (UTC)
IronPort-SDR: Xl5TZQuDZXat7ulz8yrZOkNCc+zEMJWyXzHkmikAmY8g0X2FZEh699TY4OmmhTlNmdJ7vI87iM
 2CGKs2ltGt6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="180191628"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="180191628"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 17:31:19 -0800
IronPort-SDR: gLtmoiGjjnJB15Xgq6u1miTKaKqrtDc/rXZHU0+6yGY9NgF2+dC2pjpjSi18umydNnIrO1Uq68
 RJgnVgKaoRgA==
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="362760898"
Received: from hemutch-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.251.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 17:31:19 -0800
From: Ederson de Souza <ederson.desouza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Feb 2021 17:31:03 -0800
Message-Id: <20210219013104.54436-2-ederson.desouza@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210219013104.54436-1-ederson.desouza@intel.com>
References: <20210219013104.54436-1-ederson.desouza@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 1/2] igc: Enable internal
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

The i225 device can produce one interrupt on the full second, much
like i210 - from where this patch is inspired.

This patch sets up the full second interruption on the i225 and when
receiving it, it sends a PPS event to PTP (Precision Time Protocol)
kernel subsystem.

The PTP subsystem exposes the PPS events via ioctl and sysfs, and one
can use the `testptp` tool (tools/testing/selftests/ptp) to check that
the events are being generated.

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
index 7301a7b3fadc..98a6ce322f67 100644
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
+		igc->pps_sys_wrap_on = on;
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
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
