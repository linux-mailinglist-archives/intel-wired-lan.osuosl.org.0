Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCF87BC279
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 00:48:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 724926FACB;
	Fri,  6 Oct 2023 22:48:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 724926FACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696632504;
	bh=YgcgBNxsigWBz6GGzhMXhvRuPhG3K/f3V6ohgLAHgzY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M1UfzTLmL/gifVURF1iGry54DJXq7ls8XbuJ3TZF3g8PZ5Cy3T602Q0LiKlUQkpE7
	 iO1kXRMyD+CTYWRqLdvWAS7infRjCmlpHyqtnCtQ37DazlVcaMCoPnAI7bUYISgJZU
	 V+ueYUmqflDS2w+PAtbwZHo5UWFs/JzKPozCtJmW4M+1rovM1usQ3BFai9MCtyy2Vg
	 U3753n5t/Vg5n+pmc2ap7rfm5axXbQXXeQGugy2VBcXV8clDeLQoS8vFN8GyVaHQ+d
	 tUah/vw7lqBpy85P8MeujVoXWDQzI6BVqwGvUNwU6gT93H6J6mAWvOgVmkt7+p2rUc
	 npDM85FbyWQrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BySjMhvgmkpJ; Fri,  6 Oct 2023 22:48:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 129E760E24;
	Fri,  6 Oct 2023 22:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 129E760E24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F52E1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08AE941694
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08AE941694
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7zith1G0ogy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 22:48:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4173640141
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4173640141
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="448044434"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="448044434"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="1083610647"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="1083610647"
Received: from dianaman-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.113])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:48:07 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 16:47:26 -0600
Message-Id: <20231006224726.443836-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231006224726.443836-1-ahmed.zaki@intel.com>
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696632492; x=1728168492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V0oD1m7MvFUQ+AzSBLEPD+OD00w9gAK6X7Ab7JamBMo=;
 b=XUfySpTMXGnL2zn5zxAtEpLdg6pXpg1lov0MuIhBQC81UMA5ZmX9u/w7
 gUYN09XpqNSgE0CKp1/B1d9VJcy1UDrPZsbLGiqRP1JF5FzcV5tHgfqfD
 bRj5mzfzu8WoUyaHfhjakvg3LBxJHqw6Do2VxafkSYSl7Rpsj9B2ie3We
 jQmTsryX9x4Y9zY8XJmnEgf0EwTV5GEfZWiHmLjZD9qSeVN3CNFmRqwEa
 cerdu8AIfaOtRU3W3fbpHH2cr79OOFaGppqnjKTEJl6y1mTv30X7LLKxz
 VwhtXpRyzHe3ZFbtrcmd9yimPPu28Tx3s5QiBm58b4yPJBImSNt85NoyH
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XUfySpTM
Subject: [Intel-wired-lan] [PATCH net-next v2 6/6] iavf: enable symmetric
 RSS Toeplitz hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, corbet@lwn.net, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 Madhu Chittim <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow the VFs to support symmetric RSS for any flow type. The symmetric
RSS will not be supported on PFs not advertising the ADV RSS Offload
flag (ADV_RSS_SUPPORT()), for example the E700 series (i40e).

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  8 +++++--
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  3 ++-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 22 +++++++++++++++----
 3 files changed, 26 insertions(+), 7 deletions(-)

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
index 90397293525f..0eec30c390d6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1618,6 +1618,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	struct iavf_adv_rss *rss_old, *rss_new;
 	bool rss_new_add = false;
 	int count = 50, err = 0;
+	bool symm = false;
 	u64 hash_flds;
 	u32 hdrs;
 
@@ -1632,11 +1633,15 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	if (hash_flds == IAVF_ADV_RSS_HASH_INVALID)
 		return -EINVAL;
 
+	if (cmd->data & RXH_SYMMETRIC)
+		symm = true;
+
 	rss_new = kzalloc(sizeof(*rss_new), GFP_KERNEL);
 	if (!rss_new)
 		return -ENOMEM;
 
-	if (iavf_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs, hash_flds)) {
+	if (iavf_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs, hash_flds,
+				      symm)) {
 		kfree(rss_new);
 		return -EINVAL;
 	}
@@ -1655,9 +1660,11 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
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
 			adapter->aq_required |= IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
@@ -1669,6 +1676,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 		rss_new->state = IAVF_ADV_RSS_ADD_REQUEST;
 		rss_new->packet_hdrs = hdrs;
 		rss_new->hash_flds = hash_flds;
+		rss_new->symm = symm;
 		list_add_tail(&rss_new->list, &adapter->adv_rss_list_head);
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
 	}
@@ -1698,6 +1706,7 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 {
 	struct iavf_adv_rss *rss;
 	u64 hash_flds;
+	bool symm;
 	u32 hdrs;
 
 	if (!ADV_RSS_SUPPORT(adapter))
@@ -1711,10 +1720,12 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 
 	spin_lock_bh(&adapter->adv_rss_lock);
 	rss = iavf_find_adv_rss_cfg_by_hdrs(adapter, hdrs);
-	if (rss)
+	if (rss) {
 		hash_flds = rss->hash_flds;
-	else
+		symm = rss->symm;
+	} else {
 		hash_flds = IAVF_ADV_RSS_HASH_INVALID;
+	}
 	spin_unlock_bh(&adapter->adv_rss_lock);
 
 	if (hash_flds == IAVF_ADV_RSS_HASH_INVALID)
@@ -1738,6 +1749,9 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
 		cmd->data |= (u64)RXH_L4_B_2_3;
 
+	if (symm)
+		cmd->data |= (u64)RXH_SYMMETRIC;
+
 	return 0;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
