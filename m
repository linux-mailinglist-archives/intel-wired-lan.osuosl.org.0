Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B4680629A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 00:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0040941C26;
	Tue,  5 Dec 2023 23:02:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0040941C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701817336;
	bh=yq6s09Au2v5dBTTFg5PN6NZqnFnK5/InEs5D5UJ7gPQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P2D/862BhKrzamDKVtv2i3bENtnYed+4ZiIlRZdClVXg1U6XzrtolLbBKPDgHt8Cl
	 8y9lZGShk7Ukw52IM2NLjIw+E26SS7FKk8PwKkSou+WJJ50AnFE/5MHuwaZ+1G8Ent
	 vQrfrH6sWskr+nkNLmkPopwzKnUM2lL/LVLMWO2syvEc2alRV2K/oMP0ZLxAA45ClH
	 WpiK/QolaHfWN6FJyHhNLtNxIXgKY4MEhaoTvPfEO/ArIM6nECaORmEpI5Yf3rWvwW
	 kLn2P3a0WT0vl3ksq0RGYJIxxVTtBzYrYJ+2qda/SvETSIN+yyntKzfxYNeaOMRyiN
	 knSscEYGQWVYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjIosOT9dQkF; Tue,  5 Dec 2023 23:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C435D41C20;
	Tue,  5 Dec 2023 23:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C435D41C20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CE021BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 23:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53C8841BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 23:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53C8841BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 00Tbo-gEjDhP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 23:02:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03E6141BEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 23:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03E6141BEE
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="460462464"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="460462464"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 15:02:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="805434724"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="805434724"
Received: from blavena-mobl2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.46.234])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 15:01:56 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  5 Dec 2023 16:00:49 -0700
Message-Id: <20231205230049.18872-9-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231205230049.18872-1-ahmed.zaki@intel.com>
References: <20231205230049.18872-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701817325; x=1733353325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FqwxGlvFN/1bkefcyF+LqLZGNeKeWXhfD1IGvBfN290=;
 b=gDk/MKxzFRTS2ROQSedoP5QMBzON+vjcZQl7ZFNnyXWi5pMZBdwkpaFi
 8++MdNE239dVTW6iZ8laj6Hr86iWLtCJojnUnoNbmp4JrmJJUYBh9jIoD
 4Z+tF303MQmbx0uBE2OyZ2HsimA8hJMDc/Ltfqow6FIHxsX+eHZwxot3a
 pNvBS/Te/p7RT90vkNYyJ36buGwFe9HFBQzY4dOyj+hPEosbY81qi5u2X
 UKQFJKTOiqgaErSau1wKiteMwngLRVznw76JhaHqrrQxMv1YXr1TGzHke
 XE/z1XVF7t6EEsloJXy9pnyhc3Md/VAd7tTEkT6+0Vx0BRXG4SSOxzbIp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDk/MKxz
Subject: [Intel-wired-lan] [PATCH net-next v7 8/8] iavf: enable
 symmetric-xor RSS for Toeplitz hash function
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, vladimir.oltean@nxp.com, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, ecree.xilinx@gmail.com, edumazet@google.com,
 Madhu Chittim <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow the user to set the symmetric Toeplitz hash function via:

    # ethtool -X eth0 hfunc toeplitz symmetric-xor

The driver will reject any new RSS configuration if a field other than
(IP src/dst and L4 src/dst ports) is requested for hashing.

The symmetric RSS will not be supported on PFs not advertising the ADV RSS
Offload flag (ADV_RSS_SUPPORT()), for example the E700 series (i40e).

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  5 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  8 ++-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 32 ++++++++++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  4 ++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 41 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 50 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  1 +
 .../intel/ice/ice_virtchnl_allowlist.c        |  1 +
 include/linux/avf/virtchnl.h                  | 19 +++++++
 10 files changed, 156 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e7ab89dc883a..f83fbcc72075 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -312,7 +312,8 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_SET_HENA			BIT_ULL(12)
 #define IAVF_FLAG_AQ_SET_RSS_KEY		BIT_ULL(13)
 #define IAVF_FLAG_AQ_SET_RSS_LUT		BIT_ULL(14)
-#define IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE	BIT_ULL(15)
+#define IAVF_FLAG_AQ_SET_RSS_HFUNC		BIT_ULL(15)
+#define IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE	BIT_ULL(16)
 #define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING	BIT_ULL(19)
 #define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING	BIT_ULL(20)
 #define IAVF_FLAG_AQ_ENABLE_CHANNELS		BIT_ULL(21)
@@ -414,6 +415,7 @@ struct iavf_adapter {
 	struct iavf_vsi vsi;
 	u32 aq_wait_count;
 	/* RSS stuff */
+	enum virtchnl_rss_algorithm hfunc;
 	u64 hena;
 	u16 rss_key_size;
 	u16 rss_lut_size;
@@ -539,6 +541,7 @@ void iavf_get_hena(struct iavf_adapter *adapter);
 void iavf_set_hena(struct iavf_adapter *adapter);
 void iavf_set_rss_key(struct iavf_adapter *adapter);
 void iavf_set_rss_lut(struct iavf_adapter *adapter);
+void iavf_set_rss_hfunc(struct iavf_adapter *adapter);
 void iavf_enable_vlan_stripping(struct iavf_adapter *adapter);
 void iavf_disable_vlan_stripping(struct iavf_adapter *adapter);
 void iavf_virtchnl_completion(struct iavf_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
index 6edbf134b73f..a9e1da35e248 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
@@ -95,17 +95,21 @@ iavf_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
  * @rss_cfg: the virtchnl message to be filled with RSS configuration setting
  * @packet_hdrs: the RSS configuration protocol header types
  * @hash_flds: the RSS configuration protocol hash fields
+ * @symm: if true, symmetric hash is required
  *
  * Returns 0 if the RSS configuration virtchnl message is filled successfully
  */
 int
 iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
-			  u32 packet_hdrs, u64 hash_flds)
+			  u32 packet_hdrs, u64 hash_flds, bool symm)
 {
 	struct virtchnl_proto_hdrs *proto_hdrs = &rss_cfg->proto_hdrs;
 	struct virtchnl_proto_hdr *hdr;
 
-	rss_cfg->rss_algorithm = VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
+	if (symm)
+		rss_cfg->rss_algorithm = VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC;
+	else
+		rss_cfg->rss_algorithm = VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
 
 	proto_hdrs->tunnel_level = 0;	/* always outer layer */
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
index 4d3be11af7aa..e31eb2afebea 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
@@ -80,13 +80,14 @@ struct iavf_adv_rss {
 
 	u32 packet_hdrs;
 	u64 hash_flds;
+	bool symm;
 
 	struct virtchnl_rss_cfg cfg_msg;
 };
 
 int
 iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
-			  u32 packet_hdrs, u64 hash_flds);
+			  u32 packet_hdrs, u64 hash_flds, bool symm);
 struct iavf_adv_rss *
 iavf_find_adv_rss_cfg_by_hdrs(struct iavf_adapter *adapter, u32 packet_hdrs);
 void
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 5b25c68f3209..5d00fe8999ec 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1538,11 +1538,12 @@ static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
 /**
  * iavf_adv_rss_parse_hash_flds - parses hash fields from RSS hash input
  * @cmd: ethtool rxnfc command
+ * @symm: true if Symmetric Topelitz is set
  *
  * This function parses the rxnfc command and returns intended hash fields for
  * RSS configuration
  */
-static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd)
+static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd, bool symm)
 {
 	u64 hfld = IAVF_ADV_RSS_HASH_INVALID;
 
@@ -1614,17 +1615,20 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	struct iavf_adv_rss *rss_old, *rss_new;
 	bool rss_new_add = false;
 	int count = 50, err = 0;
+	bool symm = false;
 	u64 hash_flds;
 	u32 hdrs;
 
 	if (!ADV_RSS_SUPPORT(adapter))
 		return -EOPNOTSUPP;
 
+	symm = !!(adapter->hfunc == VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC);
+
 	hdrs = iavf_adv_rss_parse_hdrs(cmd);
 	if (hdrs == IAVF_ADV_RSS_FLOW_SEG_HDR_NONE)
 		return -EINVAL;
 
-	hash_flds = iavf_adv_rss_parse_hash_flds(cmd);
+	hash_flds = iavf_adv_rss_parse_hash_flds(cmd, symm);
 	if (hash_flds == IAVF_ADV_RSS_HASH_INVALID)
 		return -EINVAL;
 
@@ -1632,7 +1636,8 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	if (!rss_new)
 		return -ENOMEM;
 
-	if (iavf_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs, hash_flds)) {
+	if (iavf_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs, hash_flds,
+				      symm)) {
 		kfree(rss_new);
 		return -EINVAL;
 	}
@@ -1651,9 +1656,11 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	if (rss_old) {
 		if (rss_old->state != IAVF_ADV_RSS_ACTIVE) {
 			err = -EBUSY;
-		} else if (rss_old->hash_flds != hash_flds) {
+		} else if (rss_old->hash_flds != hash_flds ||
+			   rss_old->symm != symm) {
 			rss_old->state = IAVF_ADV_RSS_ADD_REQUEST;
 			rss_old->hash_flds = hash_flds;
+			rss_old->symm = symm;
 			memcpy(&rss_old->cfg_msg, &rss_new->cfg_msg,
 			       sizeof(rss_new->cfg_msg));
 		} else {
@@ -1664,6 +1671,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 		rss_new->state = IAVF_ADV_RSS_ADD_REQUEST;
 		rss_new->packet_hdrs = hdrs;
 		rss_new->hash_flds = hash_flds;
+		rss_new->symm = symm;
 		list_add_tail(&rss_new->list, &adapter->adv_rss_list_head);
 	}
 	spin_unlock_bh(&adapter->adv_rss_lock);
@@ -1914,6 +1922,9 @@ static int iavf_get_rxfh(struct net_device *netdev,
 	u16 i;
 
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (adapter->hfunc == VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC)
+		rxfh->input_xfrm |= RXH_XFRM_SYM_XOR;
+
 	if (rxfh->key)
 		memcpy(rxfh->key, adapter->rss_key, adapter->rss_key_size);
 
@@ -1946,6 +1957,18 @@ static int iavf_set_rxfh(struct net_device *netdev,
 	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
+	if ((rxfh->input_xfrm & RXH_XFRM_SYM_XOR) &&
+	    adapter->hfunc != VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC) {
+		if (!ADV_RSS_SUPPORT(adapter))
+			return -EOPNOTSUPP;
+		adapter->hfunc = VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC;
+		adapter->aq_required |= IAVF_FLAG_AQ_SET_RSS_HFUNC;
+	} else if (!(rxfh->input_xfrm & RXH_XFRM_SYM_XOR) &&
+		    adapter->hfunc != VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC) {
+		adapter->hfunc = VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
+		adapter->aq_required |= IAVF_FLAG_AQ_SET_RSS_HFUNC;
+	}
+
 	if (!rxfh->key && !rxfh->indir)
 		return 0;
 
@@ -1964,6 +1987,7 @@ static int iavf_set_rxfh(struct net_device *netdev,
 static const struct ethtool_ops iavf_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
+	.cap_rss_sym_xor_supported = true,
 	.get_drvinfo		= iavf_get_drvinfo,
 	.get_link		= ethtool_op_get_link,
 	.get_ringparam		= iavf_get_ringparam,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 06a87030c163..0b3b33acf1bd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2166,6 +2166,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_set_rss_lut(adapter);
 		return 0;
 	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_SET_RSS_HFUNC) {
+		iavf_set_rss_hfunc(adapter);
+		return 0;
+	}
 
 	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE) {
 		iavf_set_promiscuous(adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 64c4443dbef9..64a351e70a56 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1141,6 +1141,34 @@ void iavf_set_rss_lut(struct iavf_adapter *adapter)
 	kfree(vrl);
 }
 
+/**
+ * iavf_set_rss_hfunc
+ * @adapter: adapter structure
+ *
+ * Request the PF to set our RSS Hash function
+ **/
+void iavf_set_rss_hfunc(struct iavf_adapter *adapter)
+{
+	struct virtchnl_rss_hfunc *vrh;
+	int len = sizeof(*vrh);
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot set RSS Hash function, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+	vrh = kzalloc(len, GFP_KERNEL);
+	if (!vrh)
+		return;
+	vrh->vsi_id = adapter->vsi.id;
+	vrh->rss_algorithm = adapter->hfunc;
+	adapter->current_op = VIRTCHNL_OP_CONFIG_RSS_HFUNC;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_SET_RSS_HFUNC;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_RSS_HFUNC, (u8 *)vrh, len);
+	kfree(vrh);
+}
+
 /**
  * iavf_enable_vlan_stripping
  * @adapter: adapter structure
@@ -2142,6 +2170,19 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_warn(&adapter->pdev->dev, "Failed to add VLAN filter, error %s\n",
 				 iavf_stat_str(&adapter->hw, v_retval));
 			break;
+		case VIRTCHNL_OP_CONFIG_RSS_HFUNC:
+			dev_warn(&adapter->pdev->dev, "Failed to configure hash function, error %s\n",
+				 iavf_stat_str(&adapter->hw, v_retval));
+
+			if (adapter->hfunc ==
+					VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC)
+				adapter->hfunc =
+					VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
+			else
+				adapter->hfunc =
+					VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC;
+
+			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
 				v_retval, iavf_stat_str(&adapter->hw, v_retval),
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 9f69a7c31dd5..70dce8e13880 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -999,6 +999,51 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_vc_config_rss_hfunc
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ *
+ * Configure the VF's RSS Hash function
+ */
+static int ice_vc_config_rss_hfunc(struct ice_vf *vf, u8 *msg)
+{
+	struct virtchnl_rss_hfunc *vrh = (struct virtchnl_rss_hfunc *)msg;
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	u8 hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, vrh->vsi_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (vrh->rss_algorithm == VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC)
+		hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ;
+
+	if (ice_set_rss_hfunc(vsi, hfunc))
+		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
+error_param:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_HFUNC, v_ret,
+				     NULL, 0);
+}
+
 /**
  * ice_vc_cfg_promiscuous_mode_msg
  * @vf: pointer to the VF info
@@ -3767,6 +3812,7 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.cfg_irq_map_msg = ice_vc_cfg_irq_map_msg,
 	.config_rss_key = ice_vc_config_rss_key,
 	.config_rss_lut = ice_vc_config_rss_lut,
+	.config_rss_hfunc = ice_vc_config_rss_hfunc,
 	.get_stats_msg = ice_vc_get_stats_msg,
 	.cfg_promiscuous_mode_msg = ice_vc_cfg_promiscuous_mode_msg,
 	.add_vlan_msg = ice_vc_add_vlan_msg,
@@ -3896,6 +3942,7 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.cfg_irq_map_msg = ice_vc_cfg_irq_map_msg,
 	.config_rss_key = ice_vc_config_rss_key,
 	.config_rss_lut = ice_vc_config_rss_lut,
+	.config_rss_hfunc = ice_vc_config_rss_hfunc,
 	.get_stats_msg = ice_vc_get_stats_msg,
 	.cfg_promiscuous_mode_msg = ice_vc_repr_cfg_promiscuous_mode,
 	.add_vlan_msg = ice_vc_add_vlan_msg,
@@ -4078,6 +4125,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_CONFIG_RSS_LUT:
 		err = ops->config_rss_lut(vf, msg);
 		break;
+	case VIRTCHNL_OP_CONFIG_RSS_HFUNC:
+		err = ops->config_rss_hfunc(vf, msg);
+		break;
 	case VIRTCHNL_OP_GET_STATS:
 		err = ops->get_stats_msg(vf, msg);
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index cd747718de73..60dfbe05980a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -32,6 +32,7 @@ struct ice_virtchnl_ops {
 	int (*cfg_irq_map_msg)(struct ice_vf *vf, u8 *msg);
 	int (*config_rss_key)(struct ice_vf *vf, u8 *msg);
 	int (*config_rss_lut)(struct ice_vf *vf, u8 *msg);
+	int (*config_rss_hfunc)(struct ice_vf *vf, u8 *msg);
 	int (*get_stats_msg)(struct ice_vf *vf, u8 *msg);
 	int (*cfg_promiscuous_mode_msg)(struct ice_vf *vf, u8 *msg);
 	int (*add_vlan_msg)(struct ice_vf *vf, u8 *msg);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index 7d547fa616fa..5e19d48a05b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -68,6 +68,7 @@ static const u32 vlan_v2_allowlist_opcodes[] = {
 static const u32 rss_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_CONFIG_RSS_KEY, VIRTCHNL_OP_CONFIG_RSS_LUT,
 	VIRTCHNL_OP_GET_RSS_HENA_CAPS, VIRTCHNL_OP_SET_RSS_HENA,
+	VIRTCHNL_OP_CONFIG_RSS_HFUNC,
 };
 
 /* VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC */
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index b0e060cc79ac..a44d9dc7e3eb 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -118,6 +118,7 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_GET_STATS = 15,
 	VIRTCHNL_OP_RSVD = 16,
 	VIRTCHNL_OP_EVENT = 17, /* must ALWAYS be 17 */
+	VIRTCHNL_OP_CONFIG_RSS_HFUNC = 18,
 	/* opcode 19 is reserved */
 	VIRTCHNL_OP_IWARP = 20, /* advanced opcode */
 	VIRTCHNL_OP_RDMA = VIRTCHNL_OP_IWARP,
@@ -919,6 +920,21 @@ enum virtchnl_rss_algorithm {
 	VIRTCHNL_RSS_ALG_XOR_SYMMETRIC		= 3,
 };
 
+/* VIRTCHNL_OP_CONFIG_RSS_HFUNC
+ * VF sends this message to configure the RSS hash function. Only supported
+ * if both PF and VF drivers set the VIRTCHNL_VF_OFFLOAD_RSS_PF bit during
+ * configuration negotiation.
+ * The hash function is initialized to VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC
+ * by the PF.
+ */
+struct virtchnl_rss_hfunc {
+	u16 vsi_id;
+	u16 rss_algorithm; /* enum virtchnl_rss_algorithm */
+	u32 reserved;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_rss_hfunc);
+
 /* VIRTCHNL_OP_ENABLE_CHANNELS
  * VIRTCHNL_OP_DISABLE_CHANNELS
  * VF sends these messages to enable or disable channels based on
@@ -1542,6 +1558,9 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 							 vrl->lut_entries);
 		}
 		break;
+	case VIRTCHNL_OP_CONFIG_RSS_HFUNC:
+		valid_len = sizeof(struct virtchnl_rss_hfunc);
+		break;
 	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
 		break;
 	case VIRTCHNL_OP_SET_RSS_HENA:
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
