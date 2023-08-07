Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE1E772823
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 16:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1956C81ED5;
	Mon,  7 Aug 2023 14:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1956C81ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691419706;
	bh=IVcoQ4PF3n7IJSS+58aO6+z8X75g9H5AUPJt8U4xhS4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v3TwEQzKMBxOeyYI4Q15xMYAT83Qkom+eod9AgO07WIAVCDGfk2pn9EzV47vIgvBH
	 cack/acbPUK6I7yP1/vWAbAcm1+NA5hSllMWeTLYCjgkg1JgYMQQ2/LsSg+gp6ucTc
	 +oUAaRXYYilj0vfdEdA2cHJS4w5pS5eB3IjzgYYmpXsyjpgGc+42TCHG4eeayCliRj
	 I6kOHWnHhkSapH02IIu/CXuUYfS/PBUfy+tN0e9hmLcYX6cJf0917u1+0kdV5xN2DF
	 l0rikgbpPYNuCMOZYVthJV6rGODaF4HzSclJoOa0XpYtdFgi35jQgN4Jkq6jD8uCmG
	 fm1BYwZAVmrzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfoTAC5vIi5w; Mon,  7 Aug 2023 14:48:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8336981E18;
	Mon,  7 Aug 2023 14:48:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8336981E18
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F1011BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 14:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 681CE61087
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 14:47:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 681CE61087
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pfXgEiOyPvCy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 14:47:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6816361078
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 14:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6816361078
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="374236801"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="374236801"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 07:46:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821001048"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="821001048"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 07:46:15 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 16:46:04 +0200
Message-Id: <20230807144604.1014049-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691419623; x=1722955623;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/SiRCR7m2ebf/SDFBN/zIsQbXPob/n2MH1jp7haF4bA=;
 b=ZdJdBtgjaGuOZ5jG38E9bgHItkch0KipgV2vm0a7DZUeh/0jFDC7dan6
 HfAqAAo8rYk110rnWHmhtftu+tLFinN9OEjpzkXQoLDqXaCJAiFPlVP/o
 B5HgQewSNUHz133l0KuzD+XX3gBYvGuDeMYjhvDSl84rts7TGA68JVvro
 sYnjxuZmF+LrTPYl21dA8th4H2mg29FLiHgSy76pXyJX+Pea7cr+R9+wi
 TlyQRLyyLIvP1PhSawZDQ2BYGAiQc+pfXqy2pttehL8pmNsbTDDBvSpxF
 22hUJ1K1HIZEi5NyvbZWYZhtHHLMsUAPxLrMsEzWE33qpoZRMsgkj6L8w
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZdJdBtgj
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix FDIR rule fields masks
 validation
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

Return an error if a field's mask is neither full nor empty. When a mask
is only partial the field is not being used for rule programming but it
gives a wrong impression it is used. Fix by returning an error on any
partial mask to make it clear they are not supported.
The ip_ver assignment is moved earlier in code to allow using it in
iavf_validate_fdir_fltr_masks.

Fixes: 527691bf0682 ("iavf: Support IPv4 Flow Director filters")
Fixes: e90cbc257a6f ("iavf: Support IPv6 Flow Director filters")
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 10 +++
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 77 ++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  2 +
 3 files changed, 85 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 460ca561819a..a34303ad057d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1289,6 +1289,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.src_port = fsp->m_u.tcp_ip4_spec.psrc;
 		fltr->ip_mask.dst_port = fsp->m_u.tcp_ip4_spec.pdst;
 		fltr->ip_mask.tos = fsp->m_u.tcp_ip4_spec.tos;
+		fltr->ip_ver = 4;
 		break;
 	case AH_V4_FLOW:
 	case ESP_V4_FLOW:
@@ -1300,6 +1301,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.v4_addrs.dst_ip = fsp->m_u.ah_ip4_spec.ip4dst;
 		fltr->ip_mask.spi = fsp->m_u.ah_ip4_spec.spi;
 		fltr->ip_mask.tos = fsp->m_u.ah_ip4_spec.tos;
+		fltr->ip_ver = 4;
 		break;
 	case IPV4_USER_FLOW:
 		fltr->ip_data.v4_addrs.src_ip = fsp->h_u.usr_ip4_spec.ip4src;
@@ -1312,6 +1314,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.l4_header = fsp->m_u.usr_ip4_spec.l4_4_bytes;
 		fltr->ip_mask.tos = fsp->m_u.usr_ip4_spec.tos;
 		fltr->ip_mask.proto = fsp->m_u.usr_ip4_spec.proto;
+		fltr->ip_ver = 4;
 		break;
 	case TCP_V6_FLOW:
 	case UDP_V6_FLOW:
@@ -1330,6 +1333,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.src_port = fsp->m_u.tcp_ip6_spec.psrc;
 		fltr->ip_mask.dst_port = fsp->m_u.tcp_ip6_spec.pdst;
 		fltr->ip_mask.tclass = fsp->m_u.tcp_ip6_spec.tclass;
+		fltr->ip_ver = 6;
 		break;
 	case AH_V6_FLOW:
 	case ESP_V6_FLOW:
@@ -1345,6 +1349,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		       sizeof(struct in6_addr));
 		fltr->ip_mask.spi = fsp->m_u.ah_ip6_spec.spi;
 		fltr->ip_mask.tclass = fsp->m_u.ah_ip6_spec.tclass;
+		fltr->ip_ver = 6;
 		break;
 	case IPV6_USER_FLOW:
 		memcpy(&fltr->ip_data.v6_addrs.src_ip, fsp->h_u.usr_ip6_spec.ip6src,
@@ -1361,6 +1366,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.l4_header = fsp->m_u.usr_ip6_spec.l4_4_bytes;
 		fltr->ip_mask.tclass = fsp->m_u.usr_ip6_spec.tclass;
 		fltr->ip_mask.proto = fsp->m_u.usr_ip6_spec.l4_proto;
+		fltr->ip_ver = 6;
 		break;
 	case ETHER_FLOW:
 		fltr->eth_data.etype = fsp->h_u.ether_spec.h_proto;
@@ -1371,6 +1377,10 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		return -EINVAL;
 	}
 
+	err = iavf_validate_fdir_fltr_masks(adapter, fltr);
+	if (err)
+		return err;
+
 	if (iavf_fdir_is_dup_fltr(adapter, fltr))
 		return -EEXIST;
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 505e82ebafe4..de91e31853db 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -18,6 +18,79 @@ static const struct in6_addr ipv6_addr_full_mask = {
 	}
 };
 
+static const struct in6_addr ipv6_addr_zero_mask = {
+	.in6_u = {
+		.u6_addr8 = {
+			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		}
+	}
+};
+
+/**
+ * iavf_validate_fdir_fltr_masks - validate Flow Director filter fields masks
+ * @adapter: pointer to the VF adapter structure
+ * @fltr: Flow Director filter data structure
+ *
+ * Returns 0 if all masks of packet fields are either full or empty. Returns
+ * error on at least one partial mask.
+ */
+int iavf_validate_fdir_fltr_masks(struct iavf_adapter *adapter,
+				  struct iavf_fdir_fltr *fltr)
+{
+	if (fltr->eth_mask.etype && fltr->eth_mask.etype != htons(U16_MAX))
+		goto partial_mask;
+
+	if (fltr->ip_ver == 4) {
+		if (fltr->ip_mask.v4_addrs.src_ip &&
+		    fltr->ip_mask.v4_addrs.src_ip != htonl(U32_MAX))
+			goto partial_mask;
+
+		if (fltr->ip_mask.v4_addrs.dst_ip &&
+		    fltr->ip_mask.v4_addrs.dst_ip != htonl(U32_MAX))
+			goto partial_mask;
+
+		if (fltr->ip_mask.tos && fltr->ip_mask.tos != U8_MAX)
+			goto partial_mask;
+	} else if (fltr->ip_ver == 6) {
+		if (memcmp(&fltr->ip_mask.v6_addrs.src_ip, &ipv6_addr_zero_mask,
+			   sizeof(struct in6_addr)) &&
+		    memcmp(&fltr->ip_mask.v6_addrs.src_ip, &ipv6_addr_full_mask,
+			  sizeof(struct in6_addr)))
+			goto partial_mask;
+
+		if (memcmp(&fltr->ip_mask.v6_addrs.dst_ip, &ipv6_addr_zero_mask,
+			   sizeof(struct in6_addr)) &&
+		    memcmp(&fltr->ip_mask.v6_addrs.dst_ip, &ipv6_addr_full_mask,
+			   sizeof(struct in6_addr)))
+			goto partial_mask;
+
+		if (fltr->ip_mask.tclass && fltr->ip_mask.tclass != U8_MAX)
+			goto partial_mask;
+	}
+
+	if (fltr->ip_mask.proto && fltr->ip_mask.proto != U8_MAX)
+		goto partial_mask;
+
+	if (fltr->ip_mask.src_port && fltr->ip_mask.src_port != htons(U16_MAX))
+		goto partial_mask;
+
+	if (fltr->ip_mask.dst_port && fltr->ip_mask.dst_port != htons(U16_MAX))
+		goto partial_mask;
+
+	if (fltr->ip_mask.spi && fltr->ip_mask.spi != htonl(U32_MAX))
+		goto partial_mask;
+
+	if (fltr->ip_mask.l4_header &&
+	    fltr->ip_mask.l4_header != htonl(U32_MAX))
+		goto partial_mask;
+
+	return 0;
+
+partial_mask:
+	dev_err(&adapter->pdev->dev, "Failed to add Flow Director filter, partial masks are not supported\n");
+	return -EOPNOTSUPP;
+}
+
 /**
  * iavf_pkt_udp_no_pay_len - the length of UDP packet without payload
  * @fltr: Flow Director filter data structure
@@ -263,8 +336,6 @@ iavf_fill_fdir_ip4_hdr(struct iavf_fdir_fltr *fltr,
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DST);
 	}
 
-	fltr->ip_ver = 4;
-
 	return 0;
 }
 
@@ -309,8 +380,6 @@ iavf_fill_fdir_ip6_hdr(struct iavf_fdir_fltr *fltr,
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST);
 	}
 
-	fltr->ip_ver = 6;
-
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 33c55c366315..9eb9f73f6adf 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -110,6 +110,8 @@ struct iavf_fdir_fltr {
 	struct virtchnl_fdir_add vc_add_msg;
 };
 
+int iavf_validate_fdir_fltr_masks(struct iavf_adapter *adapter,
+				  struct iavf_fdir_fltr *fltr);
 int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
 void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
 bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
