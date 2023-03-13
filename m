Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8654F6B776B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 13:27:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E865140577;
	Mon, 13 Mar 2023 12:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E865140577
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678710449;
	bh=xES85ARYDEKuhQkxfjJ7Er9IjLE+dEQPOiYvKbxATD4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eTcSaWLacPKY7RHpek6LOEUkXOT9eQ7gzoy6XRdp3SLp4I8do0C5NJuu9PJ8B7fTV
	 vDFM68I5TgQHadCHIKny+IY9eubLxU4P7EvPVgxKN1LtqovMAvUiTu5NPB7RCmnk0+
	 Opc1K8MROr8IPFn1JnuwcghbQZUeHyWjrTqea2qNR5yQXEU0nVvbhnKH+vqRG8Px3y
	 7UBIuharvCc7x2Z3j1QHRJ/TX4Yz83BSUSxvcaf4+f7by7zvzwRXn0Z+9e84sRgAzK
	 S7epX9m5WA/S0sZyWyNTBmDoYefyIq8V3gYdEITjfPe/YtHzXrKZQ1fVwGHeOaXDOn
	 CfNPDlgIGZBqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id puZBOSEVwdqz; Mon, 13 Mar 2023 12:27:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01E1640472;
	Mon, 13 Mar 2023 12:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01E1640472
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D31F1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6583E40341
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6583E40341
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OfusgEQSP7X1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 12:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 801494027E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 801494027E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:27:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="402003322"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="402003322"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 05:27:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="655960190"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="655960190"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 13 Mar 2023 05:27:20 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 13:09:15 +0100
Message-Id: <20230313120915.4143379-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678710442; x=1710246442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jA3YkMx3bnmESoqpPd5LE7ITVwLuSPMw5p6/scsJ4t4=;
 b=Sl+57AXAWXt+TG6/wOsdnkypY1kyW9QrOm+4CiuF5Ceuj3Q05SI0za98
 Y2bHOFBEj0eAcLxYz4xZBkOHDS55Rj9Kj0xdjdOIisV2CKn4TlJN9mMyC
 ZFButocIiBEOEnrg2Xha6r4zV0iKGSmJnxXLdmCDPlacNtRGXwwt6sMec
 J6EFvr4EEUctkdKpK8nJv0cumbuFrQdRrpzTfx17rF/7NQld18eF3c6xz
 37T4+Dg6RpvfjuNGgHvO7QLVs9/L81vEJSXcSVuRm6lj2YYw5Ektz/nT7
 sGjSMrUzqfHCprKJ3yYX0JO79LDHcnt5AxYEovTlrT7ljKwhA/Mr/V3Hg
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sl+57AXA
Subject: [Intel-wired-lan] [PATCH net v1] ice: remove filters only if VSI is
 deleted
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
Cc: jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Filters shouldn't be removed in VSI rebuild path. Removing them on PF
VSI results in no rule for PF MAC after changing for example queues
amount.

Remove all filters only in the VSI remove flow. As unload should also
cause the filter to be removed introduce, a new function ice_stop_eth().
It will unroll ice_start_eth(), so remove filters and close VSI.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0f52ea38b6f3..450317dfcca7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -291,6 +291,7 @@ static void ice_vsi_delete_from_hw(struct ice_vsi *vsi)
 	struct ice_vsi_ctx *ctxt;
 	int status;
 
+	ice_fltr_remove_all(vsi);
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return;
@@ -2892,7 +2893,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	    !test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
 		ice_cfg_sw_lldp(vsi, false, false);
 
-	ice_fltr_remove_all(vsi);
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	err = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
 	if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 567694bf098b..db57735f5b22 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4644,6 +4644,12 @@ static int ice_start_eth(struct ice_vsi *vsi)
 	return err;
 }
 
+static void ice_stop_eth(struct ice_vsi *vsi)
+{
+	ice_fltr_remove_all(vsi);
+	ice_vsi_close(vsi);
+}
+
 static int ice_init_eth(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
@@ -5132,7 +5138,7 @@ void ice_unload(struct ice_pf *pf)
 {
 	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
-	ice_vsi_close(ice_get_main_vsi(pf));
+	ice_stop_eth(ice_get_main_vsi(pf));
 	ice_vsi_decfg(ice_get_main_vsi(pf));
 	ice_deinit_dev(pf);
 }
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
