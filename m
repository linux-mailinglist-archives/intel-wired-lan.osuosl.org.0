Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FEE49EFCC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 01:35:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D053784DAA;
	Fri, 28 Jan 2022 00:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3h0UoNgjoBC9; Fri, 28 Jan 2022 00:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB96584D8A;
	Fri, 28 Jan 2022 00:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 104EC1C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C78B284D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDHzbzAVyEpM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 00:34:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2903284D98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643330080; x=1674866080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FD6rJJSePq2j8kKH01ML6ozIuRmwyHE8bw2mZ6ouNCY=;
 b=mUNaJC6ux+VWenp4F4DO6mFCwfioJ9WkSdgv293pBZp4so7DhYCK7EmN
 mHIViqH8SF9rOqGX0bi+O5rD7osZk2JhC5tUz3DEMP9jxegQx1zBfvvPY
 UMghu7+i4hucJQfysUGBvAU0yVxKAu8RLDuntw+VzUI6EDE5RHJD9Qfjz
 5zuF+8SkfKN0N2YE51pPAknEGO4Q92z7PTBPWHfxdGO7tldQJSyrfTyqo
 B7DK5WBvLsBNemU876gXkbmDfrf23GjPjbfarfFoXpBwKdQ5LDHzePfm+
 27QQ7WUrhDP54n2A9ImC3vVNDZOrognFTztYy+6t9nAQR+CQ1EXB55T4G w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234380438"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="234380438"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 16:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="563999755"
Received: from dev1-atbrady.jf.intel.com ([10.166.244.128])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 16:34:27 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:10:08 -0800
Message-Id: <20220128001009.721392-19-alan.brady@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220128001009.721392-1-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 18/19] iecm: add advanced rss
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

From: Haiyue Wang <haiyue.wang@intel.com>

Continuing with advanced features this implements what's needed to do
advanced rss.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/iecm/iecm_lib.c    | 547 ++++++++++++++++++
 .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  71 +++
 drivers/net/ethernet/intel/include/iecm.h     |  73 +++
 3 files changed, 691 insertions(+)

diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
index d11413cb438c..baa1e312652a 100644
--- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
+++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
@@ -1013,6 +1013,52 @@ static void iecm_remove_vlan_filters(struct iecm_vport *vport)
 	}
 }
 
+/**
+ * iecm_remove_adv_rss_cfgs - Remove all RSS configuration
+ * @vport: vport structure
+ */
+static void iecm_remove_adv_rss_cfgs(struct iecm_vport *vport)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+
+	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADV_RSS))
+		return;
+
+	if (!list_empty(&adapter->config_data.adv_rss_list)) {
+		struct iecm_adv_rss *rss;
+
+		spin_lock_bh(&adapter->adv_rss_list_lock);
+		list_for_each_entry(rss, &adapter->config_data.adv_rss_list,
+				    list) {
+			rss->remove = true;
+		}
+		spin_unlock_bh(&adapter->adv_rss_list_lock);
+		iecm_send_add_del_adv_rss_cfg_msg(vport, false);
+	}
+}
+
+/**
+ * iecm_del_all_adv_rss_cfgs - delete all RSS configuration
+ * @vport: vport structure
+ *
+ * This function will loop through the list of RSS configuration and deletes
+ * them.
+ **/
+static void iecm_del_all_adv_rss_cfgs(struct iecm_vport *vport)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+	struct iecm_adv_rss *rss, *rss_tmp;
+
+	spin_lock_bh(&adapter->adv_rss_list_lock);
+	list_for_each_entry_safe(rss, rss_tmp,
+				 &adapter->config_data.adv_rss_list,
+				 list) {
+		list_del(&rss->list);
+		kfree(rss);
+	}
+	spin_unlock_bh(&adapter->adv_rss_list_lock);
+}
+
 /**
  * iecm_remove_fdir_filters - Remove all Flow Director filters
  * @vport: vport structure
@@ -1099,6 +1145,7 @@ static void iecm_vport_stop(struct iecm_vport *vport)
 		iecm_remove_vlan_filters(vport);
 	}
 
+	iecm_remove_adv_rss_cfgs(vport);
 	iecm_remove_fdir_filters(vport);
 
 	adapter->link_up = false;
@@ -1332,6 +1379,27 @@ static void iecm_restore_cloud_filters(struct iecm_vport *vport)
 	}
 }
 
+/**
+ * iecm_restore_adv_rss_cfgs - Restore all RSS configuration
+ * @vport: vport structure
+ */
+static void iecm_restore_adv_rss_cfgs(struct iecm_vport *vport)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+
+	if (!list_empty(&adapter->config_data.adv_rss_list)) {
+		struct iecm_adv_rss *rss;
+
+		spin_lock_bh(&adapter->adv_rss_list_lock);
+		list_for_each_entry(rss, &adapter->config_data.adv_rss_list,
+				    list) {
+			rss->add = true;
+		}
+		spin_unlock_bh(&adapter->adv_rss_list_lock);
+		iecm_send_add_del_adv_rss_cfg_msg(vport, true);
+	}
+}
+
 /**
  * iecm_restore_fdir_filters - Restore all Flow Director filters
  * @vport: vport structure
@@ -1380,6 +1448,9 @@ static void iecm_restore_features(struct iecm_vport *vport)
 	if (iecm_is_feature_ena(vport, NETIF_F_HW_TC))
 		iecm_restore_cloud_filters(vport);
 
+	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADV_RSS))
+		iecm_restore_adv_rss_cfgs(vport);
+
 	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_FDIR))
 		iecm_restore_fdir_filters(vport);
 }
@@ -2219,6 +2290,7 @@ static void iecm_del_user_cfg_data(struct iecm_adapter *adapter)
 		if (!adapter->vports[i])
 			continue;
 
+		iecm_del_all_adv_rss_cfgs(adapter->vports[i]);
 		iecm_del_all_fdir_filters(adapter->vports[i]);
 	}
 }
@@ -3633,6 +3705,481 @@ static int iecm_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	return err;
 }
 
+/**
+ * iecm_fill_adv_rss_ip4_hdr - fill the IPv4 RSS protocol header
+ * @hdr: the virtchnl message protocol header data structure
+ * @hash_flds: the RSS configuration protocol hash fields
+ */
+static void
+iecm_fill_adv_rss_ip4_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
+{
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV4);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV4_SA)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, SRC);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV4_DA)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DST);
+}
+
+/**
+ * iecm_fill_adv_rss_ip6_hdr - fill the IPv6 RSS protocol header
+ * @hdr: the virtchnl message protocol header data structure
+ * @hash_flds: the RSS configuration protocol hash fields
+ */
+static void
+iecm_fill_adv_rss_ip6_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
+{
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV6);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV6_SA)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, SRC);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV6_DA)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST);
+}
+
+/**
+ * iecm_fill_adv_rss_tcp_hdr - fill the TCP RSS protocol header
+ * @hdr: the virtchnl message protocol header data structure
+ * @hash_flds: the RSS configuration protocol hash fields
+ */
+static void
+iecm_fill_adv_rss_tcp_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
+{
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, TCP);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP, SRC_PORT);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP, DST_PORT);
+}
+
+/**
+ * iecm_fill_adv_rss_udp_hdr - fill the UDP RSS protocol header
+ * @hdr: the virtchnl message protocol header data structure
+ * @hash_flds: the RSS configuration protocol hash fields
+ */
+static void
+iecm_fill_adv_rss_udp_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
+{
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, UDP);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP, SRC_PORT);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP, DST_PORT);
+}
+
+/**
+ * iecm_fill_adv_rss_sctp_hdr - fill the SCTP RSS protocol header
+ * @hdr: the virtchnl message protocol header data structure
+ * @hash_flds: the RSS configuration protocol hash fields
+ */
+static void
+iecm_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr *hdr, s64 hash_flds)
+{
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, SCTP);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP, SRC_PORT);
+
+	if (hash_flds & IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP, DST_PORT);
+}
+
+/**
+ * iecm_fill_adv_rss_cfg_msg - fill the RSS configuration into virtchnl message
+ * @rss_cfg: the virtchnl message to be filled with RSS configuration setting
+ * @packet_hdrs: the RSS configuration protocol header types
+ * @hash_flds: the RSS configuration protocol hash fields
+ *
+ * Returns 0 if the RSS configuration virtchnl message is filled successfully
+ */
+static int
+iecm_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
+			  u32 packet_hdrs, u64 hash_flds)
+{
+	struct virtchnl_proto_hdrs *proto_hdrs = &rss_cfg->proto_hdrs;
+	struct virtchnl_proto_hdr *hdr;
+
+	rss_cfg->rss_algorithm = VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
+
+	proto_hdrs->tunnel_level = 0;	/* always outer layer */
+
+	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	switch (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_L3) {
+	case IECM_ADV_RSS_FLOW_SEG_HDR_IPV4:
+		iecm_fill_adv_rss_ip4_hdr(hdr, hash_flds);
+		break;
+	case IECM_ADV_RSS_FLOW_SEG_HDR_IPV6:
+		iecm_fill_adv_rss_ip6_hdr(hdr, hash_flds);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	switch (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_L4) {
+	case IECM_ADV_RSS_FLOW_SEG_HDR_TCP:
+		iecm_fill_adv_rss_tcp_hdr(hdr, hash_flds);
+		break;
+	case IECM_ADV_RSS_FLOW_SEG_HDR_UDP:
+		iecm_fill_adv_rss_udp_hdr(hdr, hash_flds);
+		break;
+	case IECM_ADV_RSS_FLOW_SEG_HDR_SCTP:
+		iecm_fill_adv_rss_sctp_hdr(hdr, hash_flds);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * iecm_find_adv_rss_cfg_by_hdrs - find RSS configuration with header type
+ * @vport: vport structure
+ * @packet_hdrs: protocol header type to find.
+ *
+ * Returns pointer to advance RSS configuration if found or null
+ */
+static struct iecm_adv_rss *
+iecm_find_adv_rss_cfg_by_hdrs(struct iecm_vport *vport, u32 packet_hdrs)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+	struct iecm_adv_rss *rss;
+
+	list_for_each_entry(rss, &adapter->config_data.adv_rss_list, list)
+		if (rss->packet_hdrs == packet_hdrs)
+			return rss;
+
+	return NULL;
+}
+
+/**
+ * iecm_dump_adv_rss_cfg_info
+ * @vport: vport structure
+ * @packet_hdrs: The protocol headers for RSS configuration
+ * @hash_flds: The protocol hash fields for RSS configuration
+ * @prefix: the prefix string description to dump the RSS
+ * @postfix: the postfix string description to dump the RSS
+ *
+ * Dump the advance RSS configuration
+ **/
+static void
+iecm_dump_adv_rss_cfg_info(struct iecm_vport *vport,
+			   u32 packet_hdrs, u64 hash_flds,
+			   const char *prefix, const char *postfix)
+{
+	static char hash_opt[300];
+	const char *proto;
+
+	if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_TCP)
+		proto = "TCP";
+	else if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_UDP)
+		proto = "UDP";
+	else if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_SCTP)
+		proto = "SCTP";
+	else
+		return;
+
+	memset(hash_opt, 0, sizeof(hash_opt));
+
+	strcat(hash_opt, proto);
+	if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_IPV4)
+		strcat(hash_opt, "v4 ");
+	else
+		strcat(hash_opt, "v6 ");
+
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_SA |
+			 IECM_ADV_RSS_HASH_FLD_IPV6_SA))
+		strcat(hash_opt, "[IP SA] ");
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_DA |
+			 IECM_ADV_RSS_HASH_FLD_IPV6_DA))
+		strcat(hash_opt, "[IP DA] ");
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
+			 IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
+			 IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
+		strcat(hash_opt, "[src port] ");
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT |
+			 IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT |
+			 IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
+		strcat(hash_opt, "[dst port] ");
+
+	if (!prefix)
+		prefix = "";
+
+	if (!postfix)
+		postfix = "";
+
+	dev_info(&vport->adapter->pdev->dev, "%s %s %s\n",
+		 prefix, hash_opt, postfix);
+}
+
+/**
+ * iecm_adv_rss_parse_hdrs - parses headers from RSS hash input
+ * @cmd: ethtool rxnfc command
+ *
+ * This function parses the rxnfc command and returns intended
+ * header types for RSS configuration
+ */
+static u32 iecm_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
+{
+	u32 hdrs = IECM_ADV_RSS_FLOW_SEG_HDR_NONE;
+
+	switch (cmd->flow_type) {
+	case TCP_V4_FLOW:
+		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_TCP |
+			IECM_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case UDP_V4_FLOW:
+		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_UDP |
+			IECM_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case SCTP_V4_FLOW:
+		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_SCTP |
+			IECM_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case TCP_V6_FLOW:
+		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_TCP |
+			IECM_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case UDP_V6_FLOW:
+		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_UDP |
+			IECM_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case SCTP_V6_FLOW:
+		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_SCTP |
+			IECM_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	default:
+		break;
+	}
+
+	return hdrs;
+}
+
+/**
+ * iecm_adv_rss_parse_hash_flds - parses hash fields from RSS hash input
+ * @cmd: ethtool rxnfc command
+ *
+ * This function parses the rxnfc command and returns intended hash fields for
+ * RSS configuration
+ */
+static u64 iecm_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd)
+{
+	u64 hfld = IECM_ADV_RSS_HASH_INVALID;
+
+	if (cmd->data & RXH_IP_SRC || cmd->data & RXH_IP_DST) {
+		switch (cmd->flow_type) {
+		case TCP_V4_FLOW:
+		case UDP_V4_FLOW:
+		case SCTP_V4_FLOW:
+			if (cmd->data & RXH_IP_SRC)
+				hfld |= IECM_ADV_RSS_HASH_FLD_IPV4_SA;
+			if (cmd->data & RXH_IP_DST)
+				hfld |= IECM_ADV_RSS_HASH_FLD_IPV4_DA;
+			break;
+		case TCP_V6_FLOW:
+		case UDP_V6_FLOW:
+		case SCTP_V6_FLOW:
+			if (cmd->data & RXH_IP_SRC)
+				hfld |= IECM_ADV_RSS_HASH_FLD_IPV6_SA;
+			if (cmd->data & RXH_IP_DST)
+				hfld |= IECM_ADV_RSS_HASH_FLD_IPV6_DA;
+			break;
+		default:
+			break;
+		}
+	}
+
+	if (cmd->data & RXH_L4_B_0_1 || cmd->data & RXH_L4_B_2_3) {
+		switch (cmd->flow_type) {
+		case TCP_V4_FLOW:
+		case TCP_V6_FLOW:
+			if (cmd->data & RXH_L4_B_0_1)
+				hfld |= IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT;
+			if (cmd->data & RXH_L4_B_2_3)
+				hfld |= IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT;
+			break;
+		case UDP_V4_FLOW:
+		case UDP_V6_FLOW:
+			if (cmd->data & RXH_L4_B_0_1)
+				hfld |= IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT;
+			if (cmd->data & RXH_L4_B_2_3)
+				hfld |= IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT;
+			break;
+		case SCTP_V4_FLOW:
+		case SCTP_V6_FLOW:
+			if (cmd->data & RXH_L4_B_0_1)
+				hfld |= IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT;
+			if (cmd->data & RXH_L4_B_2_3)
+				hfld |= IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT;
+			break;
+		default:
+			break;
+		}
+	}
+
+	return hfld;
+}
+
+/**
+ * iecm_set_adv_rss_hash_opt - Enable/Disable flow types for RSS hash
+ * @vport: vport structure
+ * @cmd: ethtool rxnfc command
+ *
+ * Returns Success if the flow input set is supported.
+ */
+int
+iecm_set_adv_rss_hash_opt(struct iecm_vport *vport, struct ethtool_rxnfc *cmd)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+	struct iecm_adv_rss *rss, *rss_new;
+	u64 hash_flds;
+	u32 hdrs;
+	int err;
+
+	if (adapter->state != __IECM_UP)
+		return -EIO;
+
+	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADV_RSS))
+		return -EOPNOTSUPP;
+
+	hdrs = iecm_adv_rss_parse_hdrs(cmd);
+	if (hdrs == IECM_ADV_RSS_FLOW_SEG_HDR_NONE)
+		return -EINVAL;
+
+	hash_flds = iecm_adv_rss_parse_hash_flds(cmd);
+	if (hash_flds == IECM_ADV_RSS_HASH_INVALID)
+		return -EINVAL;
+
+	rss_new = kzalloc(sizeof(*rss_new), GFP_KERNEL);
+	if (!rss_new)
+		return -ENOMEM;
+
+	/* Since this can fail, do it now to avoid dirtying the list, we'll
+	 * copy it from rss_new if it turns out we're updating an existing
+	 * filter instead of adding a new one.
+	 */
+	if (iecm_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs, hash_flds)) {
+		kfree(rss_new);
+		return -EINVAL;
+	}
+
+	iecm_dump_adv_rss_cfg_info(vport, hdrs, hash_flds,
+				   "Input set change for", "is pending");
+
+	spin_lock_bh(&adapter->adv_rss_list_lock);
+	rss = iecm_find_adv_rss_cfg_by_hdrs(vport, hdrs);
+	if (rss) {
+		if (rss->hash_flds != hash_flds) {
+			rss->remove = false;
+			memcpy(&rss->cfg_msg, &rss_new->cfg_msg,
+			       sizeof(rss_new->cfg_msg));
+			kfree(rss_new);
+		} else {
+			kfree(rss_new);
+			spin_unlock_bh(&adapter->adv_rss_list_lock);
+			return -EEXIST;
+		}
+	} else {
+		rss = rss_new;
+		rss->packet_hdrs = hdrs;
+		list_add_tail(&rss->list, &adapter->config_data.adv_rss_list);
+	}
+	rss->add = true;
+	rss->hash_flds = hash_flds;
+	spin_unlock_bh(&adapter->adv_rss_list_lock);
+
+	err = iecm_send_add_del_adv_rss_cfg_msg(vport, true);
+	if (err) {
+		spin_lock_bh(&adapter->adv_rss_list_lock);
+		/* We have to find it again to make sure another thread hasn't
+		 * already deleted and kfreed it.
+		 */
+		rss = iecm_find_adv_rss_cfg_by_hdrs(vport, hdrs);
+		if (rss) {
+			list_del(&rss->list);
+			kfree(rss);
+		}
+		spin_unlock_bh(&adapter->adv_rss_list_lock);
+	}
+
+	if (!err)
+		iecm_dump_adv_rss_cfg_info(vport, hdrs, hash_flds,
+					   "Input set change for",
+					   "successful");
+	else
+		iecm_dump_adv_rss_cfg_info(vport, hdrs, hash_flds,
+					   "Failed to change the input set for",
+					   NULL);
+
+	return err;
+}
+
+/**
+ * iecm_get_adv_rss_hash_opt - Retrieve hash fields for a given flow-type
+ * @vport: vport structure
+ * @cmd: ethtool rxnfc command
+ *
+ * Returns Success if the flow input set is supported.
+ */
+int
+iecm_get_adv_rss_hash_opt(struct iecm_vport *vport, struct ethtool_rxnfc *cmd)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+	struct iecm_adv_rss *rss;
+	u64 hash_flds;
+	u32 hdrs;
+
+	if (adapter->state != __IECM_UP)
+		return -EIO;
+
+	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADV_RSS))
+		return -EOPNOTSUPP;
+
+	cmd->data = 0;
+
+	hdrs = iecm_adv_rss_parse_hdrs(cmd);
+	if (hdrs == IECM_ADV_RSS_FLOW_SEG_HDR_NONE)
+		return -EINVAL;
+
+	spin_lock_bh(&adapter->adv_rss_list_lock);
+	rss = iecm_find_adv_rss_cfg_by_hdrs(vport, hdrs);
+	if (rss)
+		hash_flds = rss->hash_flds;
+	else
+		hash_flds = IECM_ADV_RSS_HASH_INVALID;
+	spin_unlock_bh(&adapter->adv_rss_list_lock);
+
+	if (hash_flds == IECM_ADV_RSS_HASH_INVALID)
+		return -EINVAL;
+
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_SA |
+			 IECM_ADV_RSS_HASH_FLD_IPV6_SA))
+		cmd->data |= (u64)RXH_IP_SRC;
+
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_DA |
+			 IECM_ADV_RSS_HASH_FLD_IPV6_DA))
+		cmd->data |= (u64)RXH_IP_DST;
+
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
+			 IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
+			 IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
+		cmd->data |= (u64)RXH_L4_B_0_1;
+
+	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT |
+			 IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT |
+			 IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
+		cmd->data |= (u64)RXH_L4_B_2_3;
+
+	return 0;
+}
+
 /**
  * iecm_pkt_udp_no_pay_len - the length of UDP packet without payload
  * @fltr: Flow Director filter data structure
diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
index 94af45c36866..c05baf12515c 100644
--- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
+++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
@@ -2799,6 +2799,77 @@ int iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport, bool add)
 	return err;
 }
 
+/**
+ * iecm_send_add_del_adv_rss_cfg_msg: Send add/del RSS configuration message
+ * @vport: vport structure
+ * @add: True to add, false to delete RSS configuration
+ *
+ * Request the CP/PF to add/del RSS configuration as specified by the user via
+ * ethtool
+ *
+ * Return 0 on success, negative on failure
+ **/
+int iecm_send_add_del_adv_rss_cfg_msg(struct iecm_vport *vport, bool add)
+{
+	struct iecm_adapter *adapter = vport->adapter;
+	struct virtchnl_rss_cfg *rss_cfg;
+	struct iecm_adv_rss *rss;
+	int len, err = -ENXIO;
+
+	len = sizeof(struct virtchnl_rss_cfg);
+	rss_cfg = kzalloc(len, GFP_KERNEL);
+	if (!rss_cfg)
+		return -ENOMEM;
+
+	while (true) {
+		bool process_rss = false;
+
+		spin_lock_bh(&adapter->adv_rss_list_lock);
+		list_for_each_entry(rss, &adapter->config_data.adv_rss_list, list) {
+			if (add && rss->add) {
+				/* Only add needs print the RSS information */
+				process_rss = true;
+				rss->add = false;
+				memcpy(rss_cfg, &rss->cfg_msg, len);
+				break;
+			} else if (!add && rss->remove) {
+				process_rss = true;
+				rss->remove = false;
+				memcpy(rss_cfg, &rss->cfg_msg, len);
+				break;
+			}
+		}
+		spin_unlock_bh(&adapter->adv_rss_list_lock);
+
+		/* Don't send mailbox message when there are no RSS to add/del */
+		if (!process_rss)
+			break;
+
+		if (add) {
+			err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_ADD_RSS_CFG,
+					       len, (u8 *)rss_cfg);
+			if (err)
+				break;
+
+			err = iecm_wait_for_event(adapter, IECM_VC_ADD_RSS_CFG,
+						  IECM_VC_ADD_RSS_CFG_ERR);
+		} else {
+			err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_DEL_RSS_CFG,
+					       len, (u8 *)rss_cfg);
+			if (err)
+				break;
+
+			err = iecm_min_wait_for_event(adapter, IECM_VC_DEL_RSS_CFG,
+						      IECM_VC_DEL_RSS_CFG_ERR);
+		}
+		if (err)
+			break;
+	}
+
+	kfree(rss_cfg);
+	return err;
+}
+
 /**
  * iecm_send_add_fdir_filter_msg: Send add Flow Director filter message
  * @vport: vport structure
diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
index 0aab41cf982c..c7be8c88f9b3 100644
--- a/drivers/net/ethernet/intel/include/iecm.h
+++ b/drivers/net/ethernet/intel/include/iecm.h
@@ -432,6 +432,74 @@ struct iecm_channel_config {
 	u8 num_tc;
 };
 
+enum iecm_adv_rss_flow_seg_hdr {
+	IECM_ADV_RSS_FLOW_SEG_HDR_NONE	= 0x00000000,
+	IECM_ADV_RSS_FLOW_SEG_HDR_IPV4	= 0x00000001,
+	IECM_ADV_RSS_FLOW_SEG_HDR_IPV6	= 0x00000002,
+	IECM_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
+	IECM_ADV_RSS_FLOW_SEG_HDR_UDP	= 0x00000008,
+	IECM_ADV_RSS_FLOW_SEG_HDR_SCTP	= 0x00000010,
+};
+
+#define IECM_ADV_RSS_FLOW_SEG_HDR_L3		\
+	(IECM_ADV_RSS_FLOW_SEG_HDR_IPV4	|	\
+	 IECM_ADV_RSS_FLOW_SEG_HDR_IPV6)
+
+#define IECM_ADV_RSS_FLOW_SEG_HDR_L4		\
+	(IECM_ADV_RSS_FLOW_SEG_HDR_TCP |	\
+	 IECM_ADV_RSS_FLOW_SEG_HDR_UDP |	\
+	 IECM_ADV_RSS_FLOW_SEG_HDR_SCTP)
+
+enum iecm_adv_rss_flow_field {
+	/* L3 */
+	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_DA,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_SA,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_DA,
+	/* L4 */
+	IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT,
+	IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT,
+
+	/* The total number of enums must not exceed 64 */
+	IECM_ADV_RSS_FLOW_FIELD_IDX_MAX
+};
+
+#define IECM_ADV_RSS_HASH_INVALID	0
+#define IECM_ADV_RSS_HASH_FLD_IPV4_SA	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA)
+#define IECM_ADV_RSS_HASH_FLD_IPV6_SA	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_SA)
+#define IECM_ADV_RSS_HASH_FLD_IPV4_DA	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_DA)
+#define IECM_ADV_RSS_HASH_FLD_IPV6_DA	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_DA)
+#define IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT)
+#define IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT)
+#define IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT)
+#define IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT)
+#define IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT)
+#define IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT	\
+	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT)
+
+/* bookkeeping of advanced RSS configuration */
+struct iecm_adv_rss {
+	struct list_head list;
+	u32 packet_hdrs;
+	u64 hash_flds;
+	struct virtchnl_rss_cfg cfg_msg;
+	bool remove;	/* RSS filter needs to be deleted */
+	bool add;	/* RSS filter needs to be added */
+};
+
 enum iecm_fdir_flow_type {
 	/* NONE - used for undef/error */
 	IECM_FDIR_FLOW_NONE = 0,
@@ -878,6 +946,11 @@ void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
 void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add, bool async);
 int iecm_set_promiscuous(struct iecm_adapter *adapter);
 int iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport, bool add);
+int iecm_send_add_del_adv_rss_cfg_msg(struct iecm_vport *vport, bool add);
+int iecm_set_adv_rss_hash_opt(struct iecm_vport *vport,
+			      struct ethtool_rxnfc *cmd);
+int iecm_get_adv_rss_hash_opt(struct iecm_vport *vport,
+			      struct ethtool_rxnfc *cmd);
 int iecm_send_add_fdir_filter_msg(struct iecm_vport *vport);
 int iecm_send_del_fdir_filter_msg(struct iecm_vport *vport);
 int iecm_get_fdir_fltr_entry(struct iecm_vport *vport,
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
