Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D08D7F7893
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 17:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4867408C6;
	Fri, 24 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4867408C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700842096;
	bh=pVxHXKJLbTrkCI6fT0ztlpHtIesRPJCbBkentcBsnEQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ScdscdcWLkYrB1NzBTxkEUdSLFYqRKFJLni0uq2e9QhwqLo0rFBd+zwT4FbE7rCJ/
	 Pmoj45cTVyGsSd2EYNrrfL4ABtWx8h+bbAD1M72AREganixcpvnT5w/Rn+B68Y3tDT
	 Jb9gYasNtIgSv1i+9qcd3V1GWYszA71ckcpHjh9ErIyJc4JSMmJ4sCxha7FJ4qbER/
	 Pybjj57CTT+h5slvoAukyto8Uc54+z3E4TjqZc6hxRYqjU5Cz66dL5FlZvYnJX72pq
	 UKU6r4WdAuwgyW4C9G0wObFLEVEo8b6Rm5fJa1e+tcN7RKKDx4RUogycBAXVzoaGhr
	 g1uLjxPjkmpSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJjRH5iJKOcW; Fri, 24 Nov 2023 16:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27F4340896;
	Fri, 24 Nov 2023 16:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27F4340896
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0A291BF29A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 16:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8833F80B5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 16:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8833F80B5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgDWatx9judm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 16:08:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52A2E80A8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 16:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52A2E80A8E
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="392208078"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="392208078"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 08:08:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="885305575"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="885305575"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2023 08:08:05 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 24 Nov 2023 17:08:04 +0100
Message-Id: <20231124160804.2672341-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700842088; x=1732378088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=113L0IPMTOuh5T7Hhg7yEQmaQYGwjNFB7QoIWH4DN0s=;
 b=UFHEuf4OaXF6RezcJnbVnhGBIj+rU3ZTpwGgYIKRanjt/nwKO08KKqop
 viEigE71F62aG7v6lpB9IJivnH52Qyqh0FVVV+nK6pp+BsUnf+1gvJbf3
 X6N4YDydf9RsvZ0DvsTiThAAH3jxO7xeR8XZZcSZboZoVM+bBpttwiN8i
 azrfFFOjvtiqrwWGXjpPFU7eqxz8uYk9LZlHbqKwxsFeP3L88eaaY9t4u
 V8ntVN9QwLxzB2ihRy7Xhy0TCzgfkzCqT64t7t9vVJ4r/iQsZyIyBAY0M
 EzNGe5QmaB4MFHD8GyjBGDWcr9jcwWOjtUdc1pK7QhLKMrey5boT7N6+B
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UFHEuf4O
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add ability to reset vf
 for tx and rx mdd events
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
Cc: netdev@vger.kernel.org, Jan Sokolowski <jan.sokolowski@intel.com>,
 Padraig J Connolly <padraig.j.connolly@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In cases when vf sends malformed packets that are classified as
malicious, sometimes it causes tx queue to freeze. This frozen queue can be
stuck for several minutes being unusable. When mdd event occurs, there is a
posibility to perform a graceful vf reset to quickly bring vf back to
operational state.

Currently vf iqueues are being disabled if mdd event occurs.
Add the ability to reset vf if tx or rx mdd occurs.
Add mdd events logging throttling /* avoid dmesg polution */.
Unify tx rx mdd messages formats.

Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2 fix compilation issue
---
 drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 116 ++++++++++++++++--
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
 5 files changed, 121 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index f1627ab..ec2f5cf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -87,6 +87,7 @@ enum i40e_state {
 	__I40E_SERVICE_SCHED,
 	__I40E_ADMINQ_EVENT_PENDING,
 	__I40E_MDD_EVENT_PENDING,
+	__I40E_MDD_VF_PRINT_PENDING,
 	__I40E_VFLR_EVENT_PENDING,
 	__I40E_RESET_RECOVERY_PENDING,
 	__I40E_TIMEOUT_RECOVERY_PENDING,
@@ -190,6 +191,7 @@ enum i40e_pf_flags {
 	 */
 	I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
 	I40E_FLAG_VF_VLAN_PRUNING_ENA,
+	I40E_FLAG_MDD_AUTO_RESET_VF,
 	I40E_PF_FLAGS_NBITS,		/* must be last */
 };
 
@@ -571,7 +573,7 @@ struct i40e_pf {
 	int num_alloc_vfs;	/* actual number of VFs allocated */
 	u32 vf_aq_requests;
 	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
-
+	unsigned long last_printed_mdd_jiffies; /* MDD message rate limit */
 	/* DCBx/DCBNL capability for PF that indicates
 	 * whether DCBx is managed by firmware or host
 	 * based agent (LLDPAD). Also, indicates what
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index afbe921..b041a14 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -461,6 +461,8 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
 	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
 	I40E_PRIV_FLAG("vf-vlan-pruning",
 		       I40E_FLAG_VF_VLAN_PRUNING_ENA, 0),
+	I40E_PRIV_FLAG("mdd-auto-reset-vf",
+		       I40E_FLAG_MDD_AUTO_RESET_VF, 0),
 };
 
 #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 51ee870..9bf3608 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11182,6 +11182,81 @@ static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
 	i40e_reset_and_rebuild(pf, false, lock_acquired);
 }
 
+/**
+ * i40e_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
+ * @pf: board private structure
+ * @vf: pointer to the VF structure
+ */
+static void i40e_print_vf_rx_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf)
+{
+	dev_err(&pf->pdev->dev, "%lld Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
+		vf->mdd_rx_events.count,
+		pf->hw.pf_id,
+		vf->vf_id,
+		vf->default_lan_addr.addr,
+		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" : "off");
+}
+
+/**
+ * i40e_print_vf_tx_mdd_event - print VF Tx malicious driver detect event
+ * @pf: board private structure
+ * @vf: pointer to the VF structure
+ */
+static void i40e_print_vf_tx_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf)
+{
+	dev_err(&pf->pdev->dev, "%lld Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
+		vf->mdd_tx_events.count,
+		pf->hw.pf_id,
+		vf->vf_id,
+		vf->default_lan_addr.addr,
+		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" : "off");
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
+	unsigned int i;
+
+	/* check that there are pending MDD events to print */
+	if (!test_and_clear_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state))
+		return;
+
+	/* VF MDD event logs are rate limited to one second intervals */
+	if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ * 1))
+		return;
+
+	pf->last_printed_mdd_jiffies = jiffies;
+
+	for (i = 0; i < pf->num_alloc_vfs; i++) {
+		struct i40e_vf *vf = &pf->vf[i];
+		bool is_printed = false;
+
+		/* only print Rx MDD event message if there are new events */
+		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
+			vf->mdd_rx_events.last_printed = vf->mdd_rx_events.count;
+			i40e_print_vf_rx_mdd_event(pf, vf);
+			is_printed = true;
+		}
+
+		/* only print Tx MDD event message if there are new events */
+		if (vf->mdd_tx_events.count != vf->mdd_tx_events.last_printed) {
+			vf->mdd_tx_events.last_printed = vf->mdd_tx_events.count;
+			i40e_print_vf_tx_mdd_event(pf, vf);
+			is_printed = true;
+		}
+
+		if (is_printed && !test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags))
+			dev_info(&pf->pdev->dev,
+				 "Use PF Control I/F to re-enable the VF #%d\n",
+				 i);
+	}
+}
+
 /**
  * i40e_handle_mdd_event
  * @pf: pointer to the PF structure
@@ -11196,8 +11271,13 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
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
@@ -11248,27 +11328,39 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 
 	/* see if one of the VFs needs its hand slapped */
 	for (i = 0; i < pf->num_alloc_vfs && mdd_detected; i++) {
+		bool is_mdd_on_tx = false;
+		bool is_mdd_on_rx = false;
+
 		vf = &(pf->vf[i]);
 		reg = rd32(hw, I40E_VP_MDET_TX(i));
 		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
+			set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
 			wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
-			vf->num_mdd_events++;
-			dev_info(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
-				 i);
-			dev_info(&pf->pdev->dev,
-				 "Use PF Control I/F to re-enable the VF\n");
+			vf->mdd_tx_events.count++;
 			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
+			is_mdd_on_tx = true;
 		}
 
 		reg = rd32(hw, I40E_VP_MDET_RX(i));
 		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
+			set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
 			wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
-			vf->num_mdd_events++;
-			dev_info(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
-				 i);
-			dev_info(&pf->pdev->dev,
-				 "Use PF Control I/F to re-enable the VF\n");
+			vf->mdd_rx_events.count++;
 			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
+			is_mdd_on_rx = true;
+		}
+
+		if ((is_mdd_on_tx || is_mdd_on_rx) &&
+		    test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags)) {
+			/* VF MDD event counters will be cleared by
+			 * reset, so print the event prior to reset.
+			 */
+			if (is_mdd_on_rx)
+				i40e_print_vf_rx_mdd_event(pf, vf);
+			if (is_mdd_on_tx)
+				i40e_print_vf_tx_mdd_event(pf, vf);
+
+			i40e_vc_reset_vf(vf, true);
 		}
 	}
 
@@ -11278,6 +11370,8 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 	reg |=  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
 	wr32(hw, I40E_PFINT_ICR0_ENA, reg);
 	i40e_flush(hw);
+
+	i40e_print_vfs_mdd_events(pf);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 37cca48..12e7f02 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -190,7 +190,7 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
  * @notify_vf: notify vf about reset or not
  * Reset VF handler.
  **/
-static void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
+void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
 {
 	struct i40e_pf *pf = vf->pf;
 	int i;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 2ee0f8a..c47c586 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -64,6 +64,12 @@ struct i40evf_channel {
 	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
 };
 
+struct i40e_mdd_vf_events {
+	u64 count;      /* total count of Rx|Tx events */
+	/* count number of the last printed event */
+	u64 last_printed;
+};
+
 /* VF information structure */
 struct i40e_vf {
 	struct i40e_pf *pf;
@@ -92,7 +98,9 @@ struct i40e_vf {
 
 	u8 num_queue_pairs;	/* num of qps assigned to VF vsis */
 	u8 num_req_queues;	/* num of requested qps */
-	u64 num_mdd_events;	/* num of mdd events detected */
+	/* num of mdd tx and rx events detected */
+	struct i40e_mdd_vf_events mdd_rx_events;
+	struct i40e_mdd_vf_events mdd_tx_events;
 
 	unsigned long vf_caps;	/* vf's adv. capabilities */
 	unsigned long vf_states;	/* vf's runtime states */
@@ -119,6 +127,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16 num_alloc_vfs);
 int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 			   u32 v_retval, u8 *msg, u16 msglen);
 int i40e_vc_process_vflr_event(struct i40e_pf *pf);
+void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf);
 bool i40e_reset_vf(struct i40e_vf *vf, bool flr);
 bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr);
 void i40e_vc_notify_vf_reset(struct i40e_vf *vf);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
