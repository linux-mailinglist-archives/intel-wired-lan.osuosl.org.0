Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB5B778FBF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:43:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 094A784032;
	Fri, 11 Aug 2023 12:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 094A784032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691757783;
	bh=+L8rxv+bk8N2Ggu2kB7nBX1dSkEsJD2vgEF7NmRdEw0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QMuHLRGxyaGzw3J5em5j5jNZrOpTGAvQa8GTiwA46wehH4Hxqb2bdul2ixdS1h7qX
	 QtwsNMLmsvQLEVmkTr9WERrPc2ihuJh58xroRiesY9iCtlWndUzEgMDEAV7CPATyrf
	 WH442skdl4lqi0gOqVBLvrJaKEE87iQmTWpOn+MGoIOWX/MEq0kVpOtBgubDH+JkhA
	 g0p2gbSYxGjGcK9w2h79wbj7uo0G/QGM1GHNsJ0ExSUuo22B42HC6afbr/B/0N4Jr3
	 TO8YZGKG2M5gVv3DdHLXNDTRb7gU7JN0HZl0ksXA7LE1fbhjLk3SDtLXejCBXRjJRL
	 TGh4Is3pYrxMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ekH9vufKwkXg; Fri, 11 Aug 2023 12:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B058C83FF9;
	Fri, 11 Aug 2023 12:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B058C83FF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12DB11BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DEAAE83FF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEAAE83FF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 412J4ACTnOsW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:42:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16CFF83FF9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16CFF83FF9
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369138926"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="369138926"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="798029759"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="798029759"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2023 05:42:51 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Aug 2023 14:46:48 +0200
Message-Id: <20230811124648.3368659-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230811124648.3368659-1-jan.sokolowski@intel.com>
References: <20230811124648.3368659-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691757776; x=1723293776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TT3z7EXi2XDmYaJR9ZpUUv5TerGrU0Jz2acY33cWSp4=;
 b=jGt3sUxMyLY9knIXCVeKgimZnZBspFzXjBS7ikVSrU07VSZo80rwWrEw
 YJimDz8QkR4LI73R0gymKAudTJ+hRedkMBDQzvl6ciFQu0gHqOAdOFV/T
 opU6xO1IhpQPhdpH/uJUhkDR0DNnqAN5GgrAmexDUe4kHa1YJ64Tiye5N
 PHy//Zm+HHtqFPN3SkZBw99+dB6XjGV+49dFCuhvK/jFHdfCt/bRo0Wvb
 fE1oCPYkw+noDNQ1tWOEg8MAIrOZNl8Zu4KOq6LAE7Wa6lzmxctJyI0nN
 E599UUU8NJI1MqdLFt33CSDCxRbc4uDCOBbjkcAzgv/ghasyXQ+zvXd65
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jGt3sUxM
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] i40e: add
 mdd-auto-reset-vf private flag
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

Since VF RX MDD events should disable the queue, add ethtool
private flag mdd-auto-reset-vf to configure VF reset
to re-enable the queue. This can be used by a system's administrator
to select the desired level of security in running VF's.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 75 ++++++++++++++++---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
 4 files changed, 70 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6e310a539467..72bd45c4f9ba 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -603,7 +603,7 @@ struct i40e_pf {
  *   in abilities field of i40e_aq_set_phy_config structure
  */
 #define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(27)
-
+#define I40E_FLAG_MDD_AUTO_RESET_VF		BIT(28)
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
 	struct i40e_hw_port_stats stats;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index afc4fa8c66af..54bdf477bcd6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -457,6 +457,7 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
 	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
 	I40E_PRIV_FLAG("vf-vlan-pruning",
 		       I40E_FLAG_VF_VLAN_PRUNING, 0),
+	I40E_PRIV_FLAG("mdd-auto-reset-vf", I40E_FLAG_MDD_AUTO_RESET_VF, 0),
 };
 
 #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f346ba6ef7bf..6c483f7dd279 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11153,6 +11153,52 @@ static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
 	i40e_reset_and_rebuild(pf, false, lock_acquired);
 }
 
+/**
+ * i40e_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
+ * @vf: pointer to the VF structure
+ */
+static void i40e_print_vf_rx_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf)
+{
+	dev_err_ratelimited(&pf->pdev->dev, "%lld Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
+		vf->mdd_rx_events.count,
+		pf->hw.pf_id,
+		vf->vf_id,
+		vf->default_lan_addr.addr,
+		(I40E_FLAG_MDD_AUTO_RESET_VF & pf->flags) ? "on" : "off");
+}
+
+/**
+ * i40e_print_vfs_mdd_events - print VFs malicious driver detect event
+ * @pf: pointer to the PF structure
+ *
+ * Called from i40e_handle_mdd_event to rate limit and print VFs MDD events.
+ */
+static void i40e_print_vfs_mdd_events(struct i40e_pf *pf)
+{
+	struct i40e_vf *vf;
+	unsigned int i;
+
+	for (i = 0; i < pf->num_alloc_vfs; i++) {
+		vf = &pf->vf[i];
+		/* only print Rx MDD event message if there are new events */
+		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
+			vf->mdd_rx_events.last_printed = vf->mdd_rx_events.count;
+			i40e_print_vf_rx_mdd_event(pf, vf);
+		}
+
+		/* only print Tx MDD event message if there are new events */
+		if (vf->mdd_tx_events.count != vf->mdd_tx_events.last_printed) {
+			vf->mdd_tx_events.last_printed = vf->mdd_tx_events.count;
+			dev_err_ratelimited(&pf->pdev->dev, "%lld Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
+				vf->mdd_tx_events.count,
+				pf->hw.pf_id,
+				vf->vf_id,
+				vf->default_lan_addr.addr);
+		}
+	}
+}
+
+
 /**
  * i40e_handle_mdd_event
  * @pf: pointer to the PF structure
@@ -11167,8 +11213,13 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 	u32 reg;
 	int i;
 
-	if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
+	if (!test_and_clear_bit(__I40E_MDD_EVENT_PENDING, pf->state)) {
+		/* Since the VF MDD event logging is rate limited, check if
+		 * there are pending MDD events.
+		 */
+		i40e_print_vfs_mdd_events(pf);
 		return;
+	}
 
 	/* find what triggered the MDD event */
 	reg = rd32(hw, I40E_GL_MDET_TX);
@@ -11224,10 +11275,6 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
 			wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
 			vf->mdd_tx_events.count++;
-			dev_info(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
-				 i);
-			dev_info(&pf->pdev->dev,
-				 "Use PF Control I/F to re-enable the VF\n");
 			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
 		}
 
@@ -11235,11 +11282,19 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
 			wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
 			vf->mdd_rx_events.count++;
-			dev_info(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
-				 i);
-			dev_info(&pf->pdev->dev,
-				 "Use PF Control I/F to re-enable the VF\n");
 			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
+
+			if (pf->flags & I40E_FLAG_MDD_AUTO_RESET_VF) {
+				/* VF MDD event counters will be cleared by
+				 * reset, so print the event prior to reset.
+				 */
+				i40e_print_vf_rx_mdd_event(pf, vf);
+				i40e_vc_notify_vf_reset(vf);
+				/* Allow VF to process pending reset notification */
+				msleep(20);
+
+				i40e_reset_vf(vf, false);
+			}
 		}
 	}
 
@@ -11249,6 +11304,8 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 	reg |=  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
 	wr32(hw, I40E_PFINT_ICR0_ENA, reg);
 	i40e_flush(hw);
+
+	i40e_print_vfs_mdd_events(pf);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index d75ba0a03169..dc127400ff1e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -64,6 +64,8 @@ struct i40evf_channel {
 
 struct i40e_mdd_vf_events {
 	u64 count; /* total count of Rx|Tx events */
+	/* count number of the last printed event */
+	u64 last_printed;
 };
 
 /* VF information structure */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
