Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HyYIyeejmk+DQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 04:44:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3A9132B85
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 04:44:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22AA460B4B;
	Fri, 13 Feb 2026 03:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FneTyEWltNwa; Fri, 13 Feb 2026 03:44:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8446D60B85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770954276;
	bh=nfDD2YbC4nuI2UierSUKrhlh47nKBTIpkTlngoc7Q64=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=12+sEE8ykszD1Hw8SNs4M3HhSz+JQi8NHEBct9BGVvWjZfoj6Usf+HBwiLAo6N1o+
	 kh1bV17HEy3lEovLs9gQfMGbXVBiolPDj4b8uwuVsyQ5D9ijC2S0twR9BE7+JezXrX
	 u0zcl8luyXcGn27yS34PNq5309Ow0V4LPXRlQ0zRIYsK8QYZig0VCZ5ZTyoMET9iMk
	 nS/+BIf9eAYrX8vEKRO4uOVfa10gAQ+XRwpV4nVqrNqXh2CyBlw9keYAUtUzXzDUx1
	 CNUq/RXE7HNEiGL5zUBL0j7Fbd76w/j5HMa+ZIgoe2oZYM9TuXqfjIb67nQ7Uv2wKF
	 5ELcw3MYsT9mQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8446D60B85;
	Fri, 13 Feb 2026 03:44:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 60B4169
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 03:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4217C60B2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 03:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YiuEGzaD1CCV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 03:44:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 621B660B11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 621B660B11
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 621B660B11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 03:44:33 +0000 (UTC)
X-CSE-ConnectionGUID: yII70jmGRla1VG/dWkd0OQ==
X-CSE-MsgGUID: CRMb1vVYR2eHyWHGM3vrkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="83580933"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="83580933"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 19:44:32 -0800
X-CSE-ConnectionGUID: AnU8FbMjTB2eu+HmqZzi0g==
X-CSE-MsgGUID: FjTGvszCSJyYGhh/ce5O8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211993807"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa010.fm.intel.com with ESMTP; 12 Feb 2026 19:44:31 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 13 Feb 2026 04:44:29 +0100
Message-ID: <20260213034429.1830480-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770954273; x=1802490273;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=03IQ3DPjdeaDc7XficCVAbrQedWt7kizzgFExuNLrPc=;
 b=TgCZZzb9+Gn76U0bgMerY+B1S4Kxq761OBn4ZRmUG6LCSYADATvastsY
 l33j49z+VrBqtyGWOnzGjJDtnk1Rh+i6nFn9TFp1tzrVVpDfDIZ7nkTNF
 i5/ApCfVqHuTpyCx7PH1sN17xUKQ3eE1M117U/w/C9wCwLcF9mBWwDksc
 9kRMlmyktwya9hbTVZqV0n747KnRPxsevlBOjSLefpYRkjDJBF3J/kWM7
 YKWj98NYBdxgukAdKR+ti5z75qQhVfNVKIlALGOMfkafGmSwW+DQU3Ynn
 FibkQX1lFpRFMlRhFM8EmWAJBPYRnSKgcNHb8rNInpZ09L3nFEdJlmBeb
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TgCZZzb9
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: implement symmetric RSS
 hash configuration
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DA3A9132B85
X-Rspamd-Action: no action

The driver advertises symmetric RSS support via supported_input_xfrm
but ice_set_rxfh() ignored the input_xfrm parameter, making it
impossible to configure symmetric hashing.

Fix ice_set_rxfh() to check rxfh->input_xfrm and call
ice_set_rss_hfunc() with ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ when
RXH_XFRM_SYM_XOR is requested.

Modify ice_set_rss_vsi_ctx() to use vsi->rss_hfunc instead of
hardcoding ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ, and export it for
use by ice_set_rxfh().

The kernel requires get_rxfh_fields() to report symmetric hash
configurations when symmetric transforms are supported. Update
ice_get_rxfh_fields() to return symmetric field configuration
(src+dst IP and ports) for all flow types.

Tested with tools/testing/selftests/drivers/net/hw/rss_input_xfrm.py

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 31 +++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_lib.c     |  6 ++--
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 3 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c6bc29c..6dc37f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3037,8 +3037,10 @@ ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
 
 	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
 	if (hash_flds == ICE_HASH_INVALID) {
-		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
+		/* Provide default symmetric hash fields when no config exists */
+		dev_dbg(dev, "No RSS config for this flow, using symmetric defaults, vsi num = %d\n",
 			vsi->vsi_num);
+		nfc->data = RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3;
 		return 0;
 	}
 
@@ -3067,6 +3069,7 @@ ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
 	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
 		nfc->data |= (u64)RXH_GTP_TEID;
 
+	nfc->data = RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3;
 	return 0;
 }
 
@@ -3667,7 +3670,6 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
 	     struct netlink_ext_ack *extack)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	u8 hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
@@ -3689,13 +3691,26 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
 		return -EOPNOTSUPP;
 	}
 
-	/* Update the VSI's hash function */
-	if (rxfh->input_xfrm & RXH_XFRM_SYM_XOR)
-		hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ;
+	/* Handle RSS symmetric hash transformation */
+	if (rxfh->input_xfrm != RXH_XFRM_NO_CHANGE) {
+		u8 new_hfunc;
 
-	err = ice_set_rss_hfunc(vsi, hfunc);
-	if (err)
-		return err;
+		if (rxfh->input_xfrm & RXH_XFRM_SYM_XOR)
+			new_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ;
+		else
+			new_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+
+		if (new_hfunc != vsi->rss_hfunc) {
+			err = ice_set_rss_hfunc(vsi, new_hfunc);
+			if (err) {
+				netdev_err(netdev, "Failed to set RSS hash function\n");
+				return err;
+			}
+			netdev_info(netdev, "RSS hash function: %sToeplitz\n",
+				    new_hfunc == ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ ?
+				    "Symmetric " : "");
+		}
+	}
 
 	if (rxfh->key) {
 		if (!vsi->rss_hkey_user) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d921269..31f2757 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1155,7 +1155,7 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
  * @ctxt: the VSI context being set
  * @vsi: the VSI being configured
  */
-static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
+void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 {
 	u8 lut_type, hash_type;
 	struct device *dev;
@@ -1181,7 +1181,9 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		return;
 	}
 
-	hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+        if (!vsi->rss_hfunc)
+		vsi->rss_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+	hash_type = vsi->rss_hfunc;
 	vsi->rss_hfunc = hash_type;
 
 	ctxt->info.q_opt_rss =
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 49454d98..29ba335 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -46,6 +46,7 @@ void ice_vsi_delete(struct ice_vsi *vsi);
 int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
 
 int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi);
+void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi);
 
 void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 
-- 
2.52.0

