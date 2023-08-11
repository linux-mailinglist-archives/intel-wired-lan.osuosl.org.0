Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7760778FC3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 464968402E;
	Fri, 11 Aug 2023 12:43:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 464968402E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691757787;
	bh=ouZwX95pdkecnmT9mw2SJmzWW6XmmUb80Av/F34qOPQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PvefSMtGAC4fYfC1wAz0OOHZomADJVhcnWLRzYH+jBhpwI0OVbcNEHwVDBkI32ka1
	 JDStJqq9i6oVQDOqs8WGnZ6SafgIHVEjw0Pn8/OLdHi+70ww3M+bzLvYOEayyq1sc8
	 7mXLXwS59SJnjvsNuGTsIKYo2y9Ed9DDNK21TUPpiU2Z+CZjO4+hmCj3sClkEUdaBQ
	 yPavNxyMDVkNjFgAFCZ1AeeULTREuFndrBc/CiMRR2CEWRsddb21IQin/ZVwKuMXHv
	 iocrwYDYZ78OJwmU+oeSOnOuVi5/Mfkxldj8k/fS2zCXz3MYsm095SSpbslZKOoEgX
	 6Pm6UPb91EbCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wd2drIo9A7ic; Fri, 11 Aug 2023 12:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB4F88401C;
	Fri, 11 Aug 2023 12:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB4F88401C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F7DD1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE4D883FF9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE4D883FF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JjQbaf3JvggE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:42:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B567783FDD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B567783FDD
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369138923"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="369138923"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="798029756"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="798029756"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2023 05:42:50 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Aug 2023 14:46:47 +0200
Message-Id: <20230811124648.3368659-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691757775; x=1723293775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yNyxsGEaZU/vBx0XsYRlHSgXPpsQhvVngmoSNMYR2n8=;
 b=HPjjm0X+RtjJHVPcMZsTxwkg8JrIi3xJ5KxU+4uCLryKvhIdgLCwoSDV
 VErJt/v5A1bgiWSbo1vhmfTkRXT1p9gN7OM2JJJMD6zFannufcpe1rQxO
 VEL+T4D+srqJfJ82reMd8iJdZMEJhcU4FeLYFBdy3QC3/1Lu0gC5CZCnp
 WxCbA+E8nzyARg4ud68Vg6+CBTNSDtWFcX7rY7+rP3ppcDCfs9ZKF7nWM
 OrnNWNp/ENsdg12xA0S/S7zHDeEyyZqPnLlvBH5gc4hEtKLgCcx0Nv9a+
 u+rMkkSkdOsv7hsUABIIJY5QpK7zYRZcmJaKLTOQxgUMU334HWVSZW6Ti
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HPjjm0X+
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] i40e: Split VF MDD event
 statistics
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

Currently, VF MDD event statistics do not make a distinction
between TX and RX events. As further changes will require
them to be separate, a split is needed.

Refactor VF MDD event counting by splitting into separate
variables for TX and RX events.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c     | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c        | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++++
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h | 8 +++++++-
 4 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 9954493cd448..747ee33e6a89 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -743,7 +743,7 @@ static void i40e_dbg_dump_vf(struct i40e_pf *pf, int vf_id)
 		dev_info(&pf->pdev->dev, "vf %2d: VSI id=%d, seid=%d, qps=%d\n",
 			 vf_id, vf->lan_vsi_id, vsi->seid, vf->num_queue_pairs);
 		dev_info(&pf->pdev->dev, "       num MDD=%lld\n",
-			 vf->num_mdd_events);
+			 vf->mdd_rx_events.count + vf->mdd_tx_events.count);
 	} else {
 		dev_info(&pf->pdev->dev, "invalid VF id %d\n", vf_id);
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..f346ba6ef7bf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11223,7 +11223,7 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 		reg = rd32(hw, I40E_VP_MDET_TX(i));
 		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
 			wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
-			vf->num_mdd_events++;
+			vf->mdd_tx_events.count++;
 			dev_info(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
 				 i);
 			dev_info(&pf->pdev->dev,
@@ -11234,7 +11234,7 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 		reg = rd32(hw, I40E_VP_MDET_RX(i));
 		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
 			wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
-			vf->num_mdd_events++;
+			vf->mdd_rx_events.count++;
 			dev_info(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
 				 i);
 			dev_info(&pf->pdev->dev,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 4741ba14ab27..7bb34498fa0e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1511,6 +1511,10 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
 		vf->num_vlan = 0;
 	}
 
+	/* clear mdd statistics */
+	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
+	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
+
 	/* Tell the VF driver the reset is done. This needs to be done only
 	 * after VF has been fully initialized, because the VF driver may
 	 * request resources immediately after setting this flag.
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 895b8feb2567..d75ba0a03169 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -62,6 +62,10 @@ struct i40evf_channel {
 	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
 };
 
+struct i40e_mdd_vf_events {
+	u64 count; /* total count of Rx|Tx events */
+};
+
 /* VF information structure */
 struct i40e_vf {
 	struct i40e_pf *pf;
@@ -90,7 +94,9 @@ struct i40e_vf {
 
 	u8 num_queue_pairs;	/* num of qps assigned to VF vsis */
 	u8 num_req_queues;	/* num of requested qps */
-	u64 num_mdd_events;	/* num of mdd events detected */
+	/* num of mdd tx and rx events detected */
+	struct i40e_mdd_vf_events mdd_rx_events;
+	struct i40e_mdd_vf_events mdd_tx_events;
 
 	unsigned long vf_caps;	/* vf's adv. capabilities */
 	unsigned long vf_states;	/* vf's runtime states */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
