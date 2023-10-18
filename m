Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8562D7CE3FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 19:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F8B3421B3;
	Wed, 18 Oct 2023 17:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F8B3421B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697648861;
	bh=5TzIT1mCq27xIS/36q5f3gOTSwOdbx64lcl1rIZfayQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l0/6kiwWIaQSrBNWAP1WSCWXmGu0bF9wysO+s/8FB4cHTNVDwPwjy2Bu6Coklzp0O
	 sGTt1ca+oLLcfm4tMv0FJC6s5UtbMqg9Xcxi7Q+iOJRGwaxC8RAGukPvVg9g+5n/2c
	 fijw8ZOPBK7axMs8iEhKMRk4kNP+/UJj2EgWZHbZhs2JtK2gQuiyf8tfXGNmaRhCXp
	 m7qSLeluq4oorTQV2nMjc4oh9C45k5pA1VpU6k03cbG0tNW/6pT6WWEGzMWZulP1Ry
	 crBT0GAulTuuFV8MOHlE4TnGCxITqFGrAIBMpW8HAdE+8bCs8jsFmuTw8C9Y/F/4nX
	 MntOZrMtSRNZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7LLPVqpLRCj; Wed, 18 Oct 2023 17:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF9E242097;
	Wed, 18 Oct 2023 17:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF9E242097
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59BD41BF27A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31B2F40590
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31B2F40590
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpEZX9LXbfwZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 17:07:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F014840004
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F014840004
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388925091"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388925091"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="822494268"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="822494268"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.38.47])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:07:22 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Oct 2023 11:06:35 -0600
Message-Id: <20231018170635.65409-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018170635.65409-1-ahmed.zaki@intel.com>
References: <20231018170635.65409-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697648849; x=1729184849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bnAgZhMpQI9Wls8t1VQ9+UojvEPXbDgQi1tviIYGidE=;
 b=bPDYNxD12UeN0VIrlFcfmQSihid9v2cp29vfK5LmjKrIe/kQPuho04z6
 5Co9e2cg3//aX2Ctjann0jvkfaUpOO2p53GUsKefCM17RgaNur5PdYhS3
 /U9eLGpT1/QMZlJUK/K85dxBOyUGzr8lDVdTuse2MpbkeJgOf6cTQyIFu
 DfK751nl5GcA7v2CZkyCSdEMk6YUZaT2ID7JqNC8Pk+/XPVfANrAghJgw
 PEiJnhBx53ekMyV778g0y0jmVP8GBphblpoMEmU2egUNNRUtdS7olENUI
 TkZdRDDzE7W0mjJ88lEVRiMDuP66Pqnc0H0JbZu/CmI+J7BPB5y6YIA5H
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bPDYNxD1
Subject: [Intel-wired-lan] [PATCH net-next v5 6/6] iavf: enable symmetric
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, vladimir.oltean@nxp.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
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
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  8 +++--
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 33 ++++++++++++++++---
 3 files changed, 37 insertions(+), 7 deletions(-)

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
index 90397293525f..62a3cf88189e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1550,6 +1550,17 @@ static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd)
 {
 	u64 hfld = IAVF_ADV_RSS_HASH_INVALID;
 
+	/* Sanity check: if a symmetric hash is requested, then:
+	 * 1 - no other fields besides IP src/dst and/or L4 src/dst
+	 * 2 - If src is set, dst must also be set
+	 */
+	if ((cmd->data & RXH_SYMMETRIC_XOR) &&
+	    ((cmd->data & ~(RXH_SYMMETRIC_XOR | RXH_IP_SRC | RXH_IP_DST |
+	      RXH_L4_B_0_1 | RXH_L4_B_2_3)) ||
+	     (!!(cmd->data & RXH_IP_SRC) ^ !!(cmd->data & RXH_IP_DST)) ||
+	     (!!(cmd->data & RXH_L4_B_0_1) ^ !!(cmd->data & RXH_L4_B_2_3))))
+		return hfld;
+
 	if (cmd->data & RXH_IP_SRC || cmd->data & RXH_IP_DST) {
 		switch (cmd->flow_type) {
 		case TCP_V4_FLOW:
@@ -1618,6 +1629,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	struct iavf_adv_rss *rss_old, *rss_new;
 	bool rss_new_add = false;
 	int count = 50, err = 0;
+	bool symm = false;
 	u64 hash_flds;
 	u32 hdrs;
 
@@ -1632,11 +1644,15 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	if (hash_flds == IAVF_ADV_RSS_HASH_INVALID)
 		return -EINVAL;
 
+	if (cmd->data & RXH_SYMMETRIC_XOR)
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
@@ -1655,9 +1671,11 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
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
@@ -1669,6 +1687,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 		rss_new->state = IAVF_ADV_RSS_ADD_REQUEST;
 		rss_new->packet_hdrs = hdrs;
 		rss_new->hash_flds = hash_flds;
+		rss_new->symm = symm;
 		list_add_tail(&rss_new->list, &adapter->adv_rss_list_head);
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
 	}
@@ -1698,6 +1717,7 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 {
 	struct iavf_adv_rss *rss;
 	u64 hash_flds;
+	bool symm;
 	u32 hdrs;
 
 	if (!ADV_RSS_SUPPORT(adapter))
@@ -1711,10 +1731,12 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 
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
@@ -1738,6 +1760,9 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
 		cmd->data |= (u64)RXH_L4_B_2_3;
 
+	if (symm)
+		cmd->data |= (u64)RXH_SYMMETRIC_XOR;
+
 	return 0;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
