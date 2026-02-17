Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIqeKZJmlGkFDgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 14:01:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C588714C416
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 14:00:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16C3481EA9;
	Tue, 17 Feb 2026 13:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oWVB7X-OizfH; Tue, 17 Feb 2026 13:00:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 691FA81EAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771333246;
	bh=9K45mUTti+ZgXRVNz1MIJ1/ahkqTWJhhwXD3zELEFC0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1wyG8AM3z7Q/VP/WZgMN+uzhsTgGY9MVMh6OB775gBD3J39Udj8mjibgWLI7ejpsk
	 H0D5sSQT8XDOOXrv2CQd7Ksg9RCAOgk7KrrsTA9OmG/ojSP2kAPEjWxfjWrzeDy2xB
	 Yu/0jKpEF9ocU9Uc6WFs/WUSpJI27oLNj8G6lehrK9tqzeRsuAzqQcgztmRCF2eoUG
	 zEaL7ICKiJu566Kbwec85+79xkiu6DwQb7E4yZfQGXfq1w9QO5ddJb+hNyFN9S9E/+
	 E6X2Nwws876muPC2cb6t8RZ6jwppaTqbBMBye/ezGc/YG/rlGN1xLekuCcOaRItHhX
	 Rt7sBtsDknQUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 691FA81EAB;
	Tue, 17 Feb 2026 13:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D19E206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6757B81C2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:00:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SDHUeML94jQx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 13:00:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8482581B10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8482581B10
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8482581B10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:00:43 +0000 (UTC)
X-CSE-ConnectionGUID: /MtUTK0dRqG1+sZLbBAWIg==
X-CSE-MsgGUID: ZTPQF9unQyS0n1rxZu4Q4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="76021991"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="76021991"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 05:00:42 -0800
X-CSE-ConnectionGUID: NafDHaqOTK2nH9w672EwLw==
X-CSE-MsgGUID: 4oaL9CVXRQOasj5pkDdpoQ==
X-ExtLoop1: 1
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa003.fm.intel.com with ESMTP; 17 Feb 2026 05:00:41 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Tue, 17 Feb 2026 14:00:39 +0100
Message-ID: <20260217130039.1802805-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771333243; x=1802869243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=st2ZcirQgBmImzpLEHqlId9omyCr1JIg0L8y81+wvEA=;
 b=Fq1EW9oyhT2a/zubDAvD3DeLXMv84OtRbYP5uJIOEPXYUbCbgtWpEZLh
 yhlAO8uHB+clLvUG3AfS+VmqK4IqPrN7JE4jZyHxwiRUwd/rVt5F/u6Mw
 mScc1BntV9mThANC4JCXyZk7lNQHUwnyPI++bS02hzvAOFZQUp4yF9erg
 vQGqD6dUydFnoOVvytF6fvYqMRyOzgVo1VsO9DRwZFXrjoQAWh1IDM1wp
 3LLMCJsgzSWA/W+26GkeFmzUcava/YIDlvlDLTXEZDMC1mn6ytzRdPMMq
 TPd8igGCgdrfNSRd+Tqh8vhI5/rvDHY6M8+iD+Kzv4z713WFMwr9QmfGZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fq1EW9oy
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: implement symmetric RSS
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	ARC_NA(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	ASN_FAIL(0.00)[8.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RSPAMD_EMAILBL_FAIL(0.00)[aleksandr.loktionov.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: C588714C416
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
v1 -> v2 preserve valid symmetric RSS fields.
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 45 ++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +--
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 3 files changed, 41 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c6bc29c..27c97ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3008,14 +3008,18 @@ ice_set_rxfh_fields(struct net_device *netdev,
 	return 0;
 }
 
+#define ICE_RSS_ALLOWED_FIELDS	(RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3)
+#define ICE_RSS_L3_PAIR		(RXH_IP_SRC | RXH_IP_DST)
+#define ICE_RSS_L4_PAIR		(RXH_L4_B_0_1 | RXH_L4_B_2_3)
+
 static int
 ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
+	u64 l3, l4, hash_flds;
 	struct device *dev;
-	u64 hash_flds;
 	bool symm;
 	u32 hdrs;
 
@@ -3037,8 +3041,10 @@ ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
 
 	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
 	if (hash_flds == ICE_HASH_INVALID) {
-		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
+		/* Provide default symmetric hash fields when no config exists */
+		dev_dbg(dev, "No RSS config for this flow, using symmetric defaults, vsi num = %d\n",
 			vsi->vsi_num);
+		nfc->data = RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3;
 		return 0;
 	}
 
@@ -3067,6 +3073,13 @@ ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
 	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
 		nfc->data |= (u64)RXH_GTP_TEID;
 
+	nfc->data &= ICE_RSS_ALLOWED_FIELDS;
+	l3 = nfc->data & ICE_RSS_L3_PAIR;
+	l4 = nfc->data & ICE_RSS_L4_PAIR;
+	if (!nfc->data ||
+	    (l3 && l3 != ICE_RSS_L3_PAIR) ||
+	    (l4 && l4 != ICE_RSS_L4_PAIR))
+		nfc->data = ICE_RSS_ALLOWED_FIELDS;
 	return 0;
 }
 
@@ -3667,7 +3680,6 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
 	     struct netlink_ext_ack *extack)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	u8 hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
@@ -3689,13 +3701,28 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
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
+		if (rxfh->input_xfrm == RXH_XFRM_SYM_XOR)
+			new_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ;
+		else if (!rxfh->input_xfrm)
+			new_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+		else
+			return -EOPNOTSUPP;
+
+		if (new_hfunc != vsi->rss_hfunc) {
+			err = ice_set_rss_hfunc(vsi, new_hfunc);
+			if (err) {
+				netdev_err(netdev, "Failed to set RSS hash function\n");
+				return err;
+			}
+			netdev_dbg(netdev, "RSS hash function: %sToeplitz\n",
+				    new_hfunc == ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ ?
+				    "Symmetric " : "");
+		}
+	}
 
 	if (rxfh->key) {
 		if (!vsi->rss_hkey_user) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d921269..5b1934b 100644
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
@@ -1181,8 +1181,9 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		return;
 	}
 
-	hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
-	vsi->rss_hfunc = hash_type;
+	if (!vsi->rss_hfunc)
+		vsi->rss_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+	hash_type = vsi->rss_hfunc;
 
 	ctxt->info.q_opt_rss =
 		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
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

