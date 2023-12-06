Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEBC8063EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40DCA6144C;
	Wed,  6 Dec 2023 01:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40DCA6144C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824559;
	bh=pWvhxkx6nhsd2BZCooKGfy/LCvVJ6y4x0W/0h0X5jsg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WBlw41R67FooTtWt1vWtZ6vKKHz5s5CfPw0cT8RCwVSi7bxzBklYcFBDrfa0y/QPx
	 tvDNIdhTYwW6V6Qfe2Mm8CFGi/jsmi8MbsVGdAyw+Ijm3AsZN+knnwpUa1RS6njexp
	 Y/IFM9iECGKCYLg3zydYW7udh5TGDqG+QHDGNK8w/uxoVI7a3wtWodc3hzbvo1F+ip
	 L7eNAQDpWloc1jJi2Ejg3Tl0Fu2Wgm2urYY3Ux3Wjvm1xLPyeHs63Xcr4vvR2oOjz3
	 5YaHXr6esFKBoTv926c6rBMzXDJzdk+3yRjOLPKp43dVtyl9yU6mGe8DJTriFcEImz
	 wOfTdkLJssB0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjSJJLQA_fCl; Wed,  6 Dec 2023 01:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F159E610E0;
	Wed,  6 Dec 2023 01:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F159E610E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89E3C1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 521A88229D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 521A88229D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tfUTYMHKWIA3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F44A82C91
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F44A82C91
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700333"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700333"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655292"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655292"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:35 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:13 -0800
Message-Id: <20231206010114.2259388-15-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824497; x=1733360497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DAG53SlvXiEznWpH1OLe1Us5lOc1W2k2kq3sL4iCNd4=;
 b=RFTUv//Gq63ksGtJgksf3ABxb7jQQOJeT9P3mTfFtf1gjCgFtcyTVZSF
 5CBS6E5ua9cQI2+J8dONvZb8M0mkN7c1u3vYkpuJPX0dgWawkrE9XrXe3
 4HZmUg/46j1yrbGQJ/s79lPlB/UuHQaNn6mJ7dd1ggbImNDjodZlJ4gxc
 MaXoixoWtDNgwofCJYQusXVirfgOpuLvrRv6XYzp3teb60kJULiWStu+y
 Y6bhk9ZkX5CQoGHIJWolOmWvE5yXMlCgG8CQUPykvW6kS3yVBaUXt7mbS
 cAiOSynYOzD/CEqVxKGd0Sd+DQOHpX6wcbpdFgOKQ/RBI9+RIyUCFO8kI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RFTUv//G
Subject: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was found while doing further testing of the previous commit
fbf32a9bab91 ("ice: field get conversion") that one of the FIELD_GET
conversions should really be a FIELD_PREP. The previous code was styled
as a match to the FIELD_GET conversion, which always worked because the
shift value was 0.  The code makes way more sense as a FIELD_PREP and
was in fact the only FIELD_GET with two constant arguments in this
series.

Didn't squash this patch to make it easier to call out the
(non-impactful) bug.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 7f3e00c187b4..74418c445cc4 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -967,7 +967,7 @@ void ice_get_dcb_cfg_from_mib_change(struct ice_port_info *pi,
 
 	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
 
-	change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M,  mib->type);
+	change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type);
 	if (change_type == ICE_AQ_LLDP_MIB_REMOTE)
 		dcbx_cfg = &pi->qos_cfg.remote_dcbx_cfg;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 8cdd53412748..d1c1e53fe15c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -974,8 +974,8 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 	/* Traffic from VSI can be sent to LAN */
 	ctxt->info.sw_flags2 = ICE_AQ_VSI_SW_FLAG_LAN_ENA;
 	/* allow all untagged/tagged packets by default on Tx */
-	ctxt->info.inner_vlan_flags = FIELD_GET(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
-						ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
+	ctxt->info.inner_vlan_flags = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
+						 ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
 	/* SVM - by default bits 3 and 4 in inner_vlan_flags are 0's which
 	 * results in legacy behavior (show VLAN, DEI, and UP) in descriptor.
 	 *
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
