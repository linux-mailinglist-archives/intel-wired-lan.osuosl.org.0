Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C9B59968A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 10:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40A8A41CB9;
	Fri, 19 Aug 2022 08:00:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40A8A41CB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660896016;
	bh=VuBOYRxz6fykDCkL3J17pZmYus6gYGCAPFmjgzpWhvQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vRpOUr3COAXWWaxKa4gQXP5bpicCUz7B29PICqfIAfnLQ+8MKWG4vg6xaE58xL6JL
	 frSqhn0fByuM1c68/NUrxR8yGuvxKIMcQnJ81EZv/PXYLQrG9gd8VZnoRCxdFQO1B5
	 SICE8vYVadxG4OVPXdEdchnRCdWnKecSg0oBzMlp8WY7xs+C51roXL3UuyOWF914ZV
	 zQlstMm6e9KCWEOSt363bsoKvuyi03joDt2Ec8HNuuTA2YMOB6Pdea0xFRA4lhkFJh
	 myDWEefXSoWkGHALiTFid6JgLyKvCUAU14RujFVWJFIT2AYVdlRk1MiqIYgF5pL2JN
	 NGJWkdlPWj55A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNMwnm7nf8ZE; Fri, 19 Aug 2022 08:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC08141C8E;
	Fri, 19 Aug 2022 08:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC08141C8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD7B81BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 08:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 871F68403B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 08:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 871F68403B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EJJZdvq2iOqs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 08:00:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E154E840FE
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E154E840FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 08:00:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="273354352"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="273354352"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 01:00:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668479559"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2022 00:50:54 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Aug 2022 12:05:03 +0200
Message-Id: <20220819100503.9083-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660896005; x=1692432005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bVJvlSY2MixdADCAr/y41GC21UbIJnUuxU29Db8ImoQ=;
 b=V11bIFLbZXiKuYFNw+tcUpXNvJODTs3laBwzwOb+vLQWPU+FSnQpTAuK
 KgLflM0Ne3aI/Qp4cMMLIrJ8ymSOqJ9pkm1Zdd9++Pcotwub2pPJ+BCP7
 fUyQ4dgmv2LH76iR0SgtEQ16uaB5d+ooh0JBTZY3UBY6ewy1HovscB3+h
 YOrWAW0cngqMl/BYAHaueyYsGW6pH1bfpvY8CRoyFh0PKPndetzvftlCL
 Q7ISKxG5OWJkSu9XKEbTyZtCh80SJz3bk11kV7h8fYL3Ai3qg+HLId19e
 NPUQW2//2iNxP9bU9ZrkjdfAJRdhy5/OD8IVaMTm2QO+xhmY/jnKjYo7F
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V11bIFLb
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix set max_tx_rate when it
 is lower than 1 Mbps
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

Value max_tx_rate is converted from bytes to Mbps.
When max_tx_rate was set to lower than 125000 bytes (1 Mbps)
it was cut to 0 because of this conversion.

Add a check that if max_tx_rate is lower than 1 Mbps
set this to minimum usable value of 50 Mbps.

The visible behavior of it is following: "Setting max tx rate to minimum usable value of 50Mbps."

Add defined constants.

Fixes: 5ecae4120a6b ("i40e: Refactor VF BW rate limiting")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 v2: Changing author, adding fixes tag, changing commit message.
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 32 +++++++++++++++++----
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 10c1e1ea83a1..e3d9804aeb25 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5908,6 +5908,26 @@ static int i40e_get_link_speed(struct i40e_vsi *vsi)
 	}
 }
 
+/**
+ * i40e_bw_bytes_to_mbits - Convert max_tx_rate from bytes to mbits
+ * @vsi: Pointer to vsi structure
+ * @max_tx_rate: max TX rate in bytes to be converted into Mbits
+ *
+ * Helper function to convert units before send to set BW limit
+ **/
+static u64 i40e_bw_bytes_to_mbits(struct i40e_vsi *vsi, u64 max_tx_rate)
+{
+	if (max_tx_rate < I40E_BW_MBPS_DIVISOR) {
+		dev_warn(&vsi->back->pdev->dev,
+			 "Setting max tx rate to minimum usable value of 50Mbps.\n");
+		max_tx_rate = I40E_BW_CREDIT_DIVISOR;
+	} else {
+		do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
+	}
+
+	return max_tx_rate;
+}
+
 /**
  * i40e_set_bw_limit - setup BW limit for Tx traffic based on max_tx_rate
  * @vsi: VSI to be configured
@@ -5930,10 +5950,10 @@ int i40e_set_bw_limit(struct i40e_vsi *vsi, u16 seid, u64 max_tx_rate)
 			max_tx_rate, seid);
 		return -EINVAL;
 	}
-	if (max_tx_rate && max_tx_rate < 50) {
+	if (max_tx_rate && max_tx_rate < I40E_BW_CREDIT_DIVISOR) {
 		dev_warn(&pf->pdev->dev,
 			 "Setting max tx rate to minimum usable value of 50Mbps.\n");
-		max_tx_rate = 50;
+		max_tx_rate = I40E_BW_CREDIT_DIVISOR;
 	}
 
 	/* Tx rate credits are in values of 50Mbps, 0 is disabled */
@@ -8224,9 +8244,9 @@ static int i40e_setup_tc(struct net_device *netdev, void *type_data)
 
 	if (i40e_is_tc_mqprio_enabled(pf)) {
 		if (vsi->mqprio_qopt.max_rate[0]) {
-			u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
+			u64 max_tx_rate = i40e_bw_bytes_to_mbits(vsi,
+						  vsi->mqprio_qopt.max_rate[0]);
 
-			do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
 			ret = i40e_set_bw_limit(vsi, vsi->seid, max_tx_rate);
 			if (!ret) {
 				u64 credits = max_tx_rate;
@@ -10971,10 +10991,10 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	}
 
 	if (vsi->mqprio_qopt.max_rate[0]) {
-		u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
+		u64 max_tx_rate = i40e_bw_bytes_to_mbits(vsi,
+						  vsi->mqprio_qopt.max_rate[0]);
 		u64 credits = 0;
 
-		do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
 		ret = i40e_set_bw_limit(vsi, vsi->seid, max_tx_rate);
 		if (ret)
 			goto end_unlock;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
