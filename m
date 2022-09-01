Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A895A912F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 09:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D127660BBF;
	Thu,  1 Sep 2022 07:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D127660BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662018584;
	bh=nrwcCZUSWd2mwCj35kOWlWNv8eK2EjWwYunK5B+A/As=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=x5fuyz5JuQBRLWUNY3SZK2KnoUoFPDKkmrb8ezadDn3TSVV2SH8Jcvm34PRMn3TIj
	 4/h0gAgSAIU7MLaFuplBHZfpRThjIj1p53xCsYG2sdoP4ixGg0I1bdbEiklGdcJ7y1
	 ytVgtdaZ6dWOdo6kxR6U0bvkCXW82B9g6zC0Kfun+DQ4CggVNffUN9yXSNuprk4tS7
	 WdWgFPMAOf8+qmXxVG+JeSVXq0GEMdTVtevgniqvQ/NOzsqR9olmjNT+egsmMp/q/Z
	 FYaU2FlLqKEShLpVyjvHDwbm+ZMHvKuKzabihhVoncgTFPgwFUWHH4R70JycIdO41L
	 0IW3OLIcFC+og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PpjBV9RjY4mi; Thu,  1 Sep 2022 07:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EFD4606AA;
	Thu,  1 Sep 2022 07:49:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EFD4606AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19E731BF426
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 07:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7F1340144
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 07:49:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7F1340144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ah31f7tAGxOI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 07:49:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31E6B400BB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31E6B400BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 07:49:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="295651304"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="295651304"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 00:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="589383209"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga006.jf.intel.com with ESMTP; 01 Sep 2022 00:49:35 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Sep 2022 09:49:33 +0200
Message-Id: <20220901074933.1580713-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662018578; x=1693554578;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s8p4kCAyhJq8Q8WgI0fuuyZn+rDk+Y7E3riTYtj6/KI=;
 b=HZVhiBgU//Dsrv2od9+8cOPaOYcMy98Mwh/yIHmmc1fLY1spAfUo20pt
 4b7ED5Wn8bI1hHUudMfntlLLhn2+No+uvJ/i33FijBGkvDTcEwYYOpJU5
 dJzdYX8fhWFIK1hd0mhtjWNt0YbJeOT1dH6ixG9eUgfpmnzR+CxvSU3SV
 P3ukI4Qvq3Jekhyy5d508RXo5RCamzIhREil3j+bzHHJjfTRQUSB8TbDf
 pm2wKMOGh9RtikkRBdYQWOmHaZ8Hp2CZTkfhufNZHK9GXzssuwl9JuD1q
 Be2TnZ7d+RfkiS/buf3858FlsJj6/c/kDXX4rjKGnSCMPzTo4a8pBY6w3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZVhiBgU
Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix set max_tx_rate when it
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

While converting max_tx_rate from bytes to Mbps, this value was set to 0, if the original value was lower than 125000 bytes (1 Mbps). This would cause no transmission rate limiting to occur.
This happened due to lack of check of max_tx_rate against the 1 Mbps value for max_tx_rate and the following division by 125000.
Fix this issue by adding a helper i40e_bw_bytes_to_mbits() which sets max_tx_rate to minimum usable value of 50 Mbps, if its value is less than 1 Mbps, otherwise do the required conversion by dividing by 125000.

Fixes: 5ecae4120a6b ("i40e: Refactor VF BW rate limiting")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 v4: Rewriting the commit message from scratch in order to make it more
verbose and comprehensive.
---
 v3: Providing the visual behavior without the fix.
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
