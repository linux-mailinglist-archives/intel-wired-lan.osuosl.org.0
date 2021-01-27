Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD63304FBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 04:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 004A72051E;
	Wed, 27 Jan 2021 03:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i99ih-Oe1H+R; Wed, 27 Jan 2021 03:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 42DFE20529;
	Wed, 27 Jan 2021 03:26:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F8EE1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:26:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 68660861B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hE47Vh-PEVhH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 03:26:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BEB97859B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:26:16 +0000 (UTC)
IronPort-SDR: KcDtq0U9GdAGTHV8vv9d/hIdOHlgUkO4+AHqNOmUcgSBo4cQkoKhHXUpR/QAqV8UMD7r38ER7b
 aVZOff4gYRYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180090393"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="180090393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 19:26:16 -0800
IronPort-SDR: WmxjYWR53FuzmauTrNAuicQgDmiLHqK4wuJ0IvOxwyx3Q8Uoj8CVp1UJnbx6jCp5WZ065qxyWY
 JJTyMjsDMAOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="388129056"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.189])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 19:26:15 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jan 2021 11:09:17 +0800
Message-Id: <20210127030918.200919-20-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210127030918.200919-1-haiyue.wang@intel.com>
References: <20210127030918.200919-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v3 19/20] iavf: Support Ethernet Type Flow
 Director filters
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
Cc: cunming.liang@intel.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Support the addition and deletion of Ethernet filters.

Supported fields are: proto
Supported flow-types are: ether

Example usage:
ethtool -N ens787f0v0 flow-type ether proto 0x8863 action 6
ethtool -N ens787f0v0 flow-type ether proto 0x8864 action 7

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 12 ++++++++++
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 23 ++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  8 +++++++
 3 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 8d856f5dc38e..24ee6ddb8dcb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -861,6 +861,8 @@ static int iavf_fltr_to_ethtool_flow(enum iavf_fdir_flow_type flow)
 		return ESP_V6_FLOW;
 	case IAVF_FDIR_FLOW_IPV6_OTHER:
 		return IPV6_USER_FLOW;
+	case IAVF_FDIR_FLOW_NON_IP_L2:
+		return ETHER_FLOW;
 	default:
 		/* 0 is undefined ethtool flow */
 		return 0;
@@ -900,6 +902,8 @@ static enum iavf_fdir_flow_type iavf_ethtool_flow_to_fltr(int eth)
 		return IAVF_FDIR_FLOW_IPV6_ESP;
 	case IPV6_USER_FLOW:
 		return IAVF_FDIR_FLOW_IPV6_OTHER;
+	case ETHER_FLOW:
+		return IAVF_FDIR_FLOW_NON_IP_L2;
 	default:
 		return IAVF_FDIR_FLOW_NONE;
 	}
@@ -1025,6 +1029,10 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
 		fsp->m_u.usr_ip6_spec.tclass = rule->ip_mask.tclass;
 		fsp->m_u.usr_ip6_spec.l4_proto = rule->ip_mask.proto;
 		break;
+	case ETHER_FLOW:
+		fsp->h_u.ether_spec.h_proto = rule->eth_data.etype;
+		fsp->m_u.ether_spec.h_proto = rule->eth_mask.etype;
+		break;
 	default:
 		ret = -EINVAL;
 		break;
@@ -1197,6 +1205,10 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.tclass = fsp->m_u.usr_ip6_spec.tclass;
 		fltr->ip_mask.proto = fsp->m_u.usr_ip6_spec.l4_proto;
 		break;
+	case ETHER_FLOW:
+		fltr->eth_data.etype = fsp->h_u.ether_spec.h_proto;
+		fltr->eth_mask.etype = fsp->m_u.ether_spec.h_proto;
+		break;
 	default:
 		/* not doing un-parsed flow types */
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index abcdf69777d7..635850814313 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -277,9 +277,19 @@ iavf_fill_fdir_eth_hdr(struct iavf_fdir_fltr *fltr,
 		       struct virtchnl_proto_hdrs *proto_hdrs)
 {
 	struct virtchnl_proto_hdr *hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	struct ethhdr *ehdr = (struct ethhdr *)hdr->buffer;
 
 	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, ETH);
 
+	if (fltr->eth_mask.etype == htons(U16_MAX)) {
+		if (fltr->eth_data.etype == htons(ETH_P_IP) ||
+		    fltr->eth_data.etype == htons(ETH_P_IPV6))
+			return -EOPNOTSUPP;
+
+		ehdr->h_proto = fltr->eth_data.etype;
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, ETH, ETHERTYPE);
+	}
+
 	return 0;
 }
 
@@ -351,6 +361,8 @@ int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
 		      iavf_fill_fdir_l4_hdr(fltr, proto_hdrs);
 		break;
+	case IAVF_FDIR_FLOW_NON_IP_L2:
+		break;
 	default:
 		err = -EINVAL;
 		break;
@@ -392,6 +404,8 @@ static const char *iavf_fdir_flow_proto_name(enum iavf_fdir_flow_type flow_type)
 	case IAVF_FDIR_FLOW_IPV4_OTHER:
 	case IAVF_FDIR_FLOW_IPV6_OTHER:
 		return "Other";
+	case IAVF_FDIR_FLOW_NON_IP_L2:
+		return "Ethernet";
 	default:
 		return NULL;
 	}
@@ -468,6 +482,11 @@ void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *f
 			 fltr->ip_data.proto,
 			 ntohl(fltr->ip_data.l4_header));
 		break;
+	case IAVF_FDIR_FLOW_NON_IP_L2:
+		dev_info(&adapter->pdev->dev, "Rule ID: %u eth_type: 0x%x\n",
+			 fltr->loc,
+			 ntohs(fltr->eth_data.etype));
+		break;
 	default:
 		break;
 	}
@@ -489,7 +508,9 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 		if (tmp->flow_type != fltr->flow_type)
 			continue;
 
-		if (!memcmp(&tmp->ip_data, &fltr->ip_data,
+		if (!memcmp(&tmp->eth_data, &fltr->eth_data,
+			    sizeof(fltr->eth_data)) &&
+		    !memcmp(&tmp->ip_data, &fltr->ip_data,
 			    sizeof(fltr->ip_data))) {
 			ret = true;
 			break;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 50f4d01a4cd2..45ff4423ef47 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -30,6 +30,7 @@ enum iavf_fdir_flow_type {
 	IAVF_FDIR_FLOW_IPV6_AH,
 	IAVF_FDIR_FLOW_IPV6_ESP,
 	IAVF_FDIR_FLOW_IPV6_OTHER,
+	IAVF_FDIR_FLOW_NON_IP_L2,
 	/* MAX - this must be last and add anything new just above it */
 	IAVF_FDIR_FLOW_PTYPE_MAX,
 };
@@ -44,6 +45,10 @@ struct iavf_ipv6_addrs {
 	struct in6_addr dst_ip;
 };
 
+struct iavf_fdir_eth {
+	__be16 etype;
+};
+
 struct iavf_fdir_ip {
 	union {
 		struct iavf_ipv4_addrs v4_addrs;
@@ -66,6 +71,9 @@ struct iavf_fdir_fltr {
 
 	enum iavf_fdir_flow_type flow_type;
 
+	struct iavf_fdir_eth eth_data;
+	struct iavf_fdir_eth eth_mask;
+
 	struct iavf_fdir_ip ip_data;
 	struct iavf_fdir_ip ip_mask;
 
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
