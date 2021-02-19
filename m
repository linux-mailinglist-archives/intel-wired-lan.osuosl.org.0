Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A5D31F9C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 14:18:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 387738748C;
	Fri, 19 Feb 2021 13:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PP+Yh3mOLSCM; Fri, 19 Feb 2021 13:18:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A6B4874A3;
	Fri, 19 Feb 2021 13:18:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33B6B1BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 30AA387132
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CBhTzorYuWCA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 13:18:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD5FB8715C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:17:41 +0000 (UTC)
IronPort-SDR: S9OL9nxPdjL0zE6RUhWqZj5TDy4xQ3lry2nds88JKMThjSaGo/lfb5uD8GgOYKYMJ9GyT2NJK+
 Yi/EMD48ET8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="171507310"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="171507310"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 05:17:41 -0800
IronPort-SDR: sG85wSN643LsuxL0S2sz+ADLtEbrGF8QWHXVYzk2yhIUCE7cYNFnqXE2lHX2WKPnHn4Mk6+1KB
 0Zt05RcOW9KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="401025359"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by orsmga008.jf.intel.com with ESMTP; 19 Feb 2021 05:17:39 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Feb 2021 20:59:59 +0800
Message-Id: <20210219130001.49600-17-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219130001.49600-1-haiyue.wang@intel.com>
References: <20210219130001.49600-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v4 16/18] iavf: Support IPv6 Flow Director
 filters
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

Support the addition and deletion of IPv6 filters.

Supported fields are: src-ip, dst-ip, src-port, dst-port and l4proto
Supported flow-types are: tcp6, udp6, sctp6, ip6, ah6, esp6

Example usage:
ethtool -N ens787f0v0 flow-type tcp6 src-ip 2001::2 \
  dst-ip CDCD:910A:2222:5498:8475:1111:3900:2020 \
  tclass 1 src-port 22 dst-port 23 action 7

L2TPv3 over IP with 'Session ID' 17:
ethtool -N ens787f0v0 flow-type ip6 l4proto 115 l4data 17 action 7

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 122 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 111 ++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  13 ++
 3 files changed, 246 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 39b377e1e569..78fbe34a2bdc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -849,6 +849,18 @@ static int iavf_fltr_to_ethtool_flow(enum iavf_fdir_flow_type flow)
 		return ESP_V4_FLOW;
 	case IAVF_FDIR_FLOW_IPV4_OTHER:
 		return IPV4_USER_FLOW;
+	case IAVF_FDIR_FLOW_IPV6_TCP:
+		return TCP_V6_FLOW;
+	case IAVF_FDIR_FLOW_IPV6_UDP:
+		return UDP_V6_FLOW;
+	case IAVF_FDIR_FLOW_IPV6_SCTP:
+		return SCTP_V6_FLOW;
+	case IAVF_FDIR_FLOW_IPV6_AH:
+		return AH_V6_FLOW;
+	case IAVF_FDIR_FLOW_IPV6_ESP:
+		return ESP_V6_FLOW;
+	case IAVF_FDIR_FLOW_IPV6_OTHER:
+		return IPV6_USER_FLOW;
 	default:
 		/* 0 is undefined ethtool flow */
 		return 0;
@@ -876,6 +888,18 @@ static enum iavf_fdir_flow_type iavf_ethtool_flow_to_fltr(int eth)
 		return IAVF_FDIR_FLOW_IPV4_ESP;
 	case IPV4_USER_FLOW:
 		return IAVF_FDIR_FLOW_IPV4_OTHER;
+	case TCP_V6_FLOW:
+		return IAVF_FDIR_FLOW_IPV6_TCP;
+	case UDP_V6_FLOW:
+		return IAVF_FDIR_FLOW_IPV6_UDP;
+	case SCTP_V6_FLOW:
+		return IAVF_FDIR_FLOW_IPV6_SCTP;
+	case AH_V6_FLOW:
+		return IAVF_FDIR_FLOW_IPV6_AH;
+	case ESP_V6_FLOW:
+		return IAVF_FDIR_FLOW_IPV6_ESP;
+	case IPV6_USER_FLOW:
+		return IAVF_FDIR_FLOW_IPV6_OTHER;
 	default:
 		return IAVF_FDIR_FLOW_NONE;
 	}
@@ -952,6 +976,55 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
 		fsp->m_u.usr_ip4_spec.ip_ver = 0xFF;
 		fsp->m_u.usr_ip4_spec.proto = rule->ip_mask.proto;
 		break;
+	case TCP_V6_FLOW:
+	case UDP_V6_FLOW:
+	case SCTP_V6_FLOW:
+		memcpy(fsp->h_u.usr_ip6_spec.ip6src, &rule->ip_data.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		memcpy(fsp->h_u.usr_ip6_spec.ip6dst, &rule->ip_data.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		fsp->h_u.tcp_ip6_spec.psrc = rule->ip_data.src_port;
+		fsp->h_u.tcp_ip6_spec.pdst = rule->ip_data.dst_port;
+		fsp->h_u.tcp_ip6_spec.tclass = rule->ip_data.tclass;
+		memcpy(fsp->m_u.usr_ip6_spec.ip6src, &rule->ip_mask.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		memcpy(fsp->m_u.usr_ip6_spec.ip6dst, &rule->ip_mask.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		fsp->m_u.tcp_ip6_spec.psrc = rule->ip_mask.src_port;
+		fsp->m_u.tcp_ip6_spec.pdst = rule->ip_mask.dst_port;
+		fsp->m_u.tcp_ip6_spec.tclass = rule->ip_mask.tclass;
+		break;
+	case AH_V6_FLOW:
+	case ESP_V6_FLOW:
+		memcpy(fsp->h_u.ah_ip6_spec.ip6src, &rule->ip_data.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		memcpy(fsp->h_u.ah_ip6_spec.ip6dst, &rule->ip_data.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		fsp->h_u.ah_ip6_spec.spi = rule->ip_data.spi;
+		fsp->h_u.ah_ip6_spec.tclass = rule->ip_data.tclass;
+		memcpy(fsp->m_u.ah_ip6_spec.ip6src, &rule->ip_mask.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		memcpy(fsp->m_u.ah_ip6_spec.ip6dst, &rule->ip_mask.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		fsp->m_u.ah_ip6_spec.spi = rule->ip_mask.spi;
+		fsp->m_u.ah_ip6_spec.tclass = rule->ip_mask.tclass;
+		break;
+	case IPV6_USER_FLOW:
+		memcpy(fsp->h_u.usr_ip6_spec.ip6src, &rule->ip_data.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		memcpy(fsp->h_u.usr_ip6_spec.ip6dst, &rule->ip_data.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		fsp->h_u.usr_ip6_spec.l4_4_bytes = rule->ip_data.l4_header;
+		fsp->h_u.usr_ip6_spec.tclass = rule->ip_data.tclass;
+		fsp->h_u.usr_ip6_spec.l4_proto = rule->ip_data.proto;
+		memcpy(fsp->m_u.usr_ip6_spec.ip6src, &rule->ip_mask.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		memcpy(fsp->m_u.usr_ip6_spec.ip6dst, &rule->ip_mask.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		fsp->m_u.usr_ip6_spec.l4_4_bytes = rule->ip_mask.l4_header;
+		fsp->m_u.usr_ip6_spec.tclass = rule->ip_mask.tclass;
+		fsp->m_u.usr_ip6_spec.l4_proto = rule->ip_mask.proto;
+		break;
 	default:
 		ret = -EINVAL;
 		break;
@@ -1075,6 +1148,55 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 		fltr->ip_mask.tos = fsp->m_u.usr_ip4_spec.tos;
 		fltr->ip_mask.proto = fsp->m_u.usr_ip4_spec.proto;
 		break;
+	case TCP_V6_FLOW:
+	case UDP_V6_FLOW:
+	case SCTP_V6_FLOW:
+		memcpy(&fltr->ip_data.v6_addrs.src_ip, fsp->h_u.usr_ip6_spec.ip6src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr->ip_data.v6_addrs.dst_ip, fsp->h_u.usr_ip6_spec.ip6dst,
+		       sizeof(struct in6_addr));
+		fltr->ip_data.src_port = fsp->h_u.tcp_ip6_spec.psrc;
+		fltr->ip_data.dst_port = fsp->h_u.tcp_ip6_spec.pdst;
+		fltr->ip_data.tclass = fsp->h_u.tcp_ip6_spec.tclass;
+		memcpy(&fltr->ip_mask.v6_addrs.src_ip, fsp->m_u.usr_ip6_spec.ip6src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr->ip_mask.v6_addrs.dst_ip, fsp->m_u.usr_ip6_spec.ip6dst,
+		       sizeof(struct in6_addr));
+		fltr->ip_mask.src_port = fsp->m_u.tcp_ip6_spec.psrc;
+		fltr->ip_mask.dst_port = fsp->m_u.tcp_ip6_spec.pdst;
+		fltr->ip_mask.tclass = fsp->m_u.tcp_ip6_spec.tclass;
+		break;
+	case AH_V6_FLOW:
+	case ESP_V6_FLOW:
+		memcpy(&fltr->ip_data.v6_addrs.src_ip, fsp->h_u.ah_ip6_spec.ip6src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr->ip_data.v6_addrs.dst_ip, fsp->h_u.ah_ip6_spec.ip6dst,
+		       sizeof(struct in6_addr));
+		fltr->ip_data.spi = fsp->h_u.ah_ip6_spec.spi;
+		fltr->ip_data.tclass = fsp->h_u.ah_ip6_spec.tclass;
+		memcpy(&fltr->ip_mask.v6_addrs.src_ip, fsp->m_u.ah_ip6_spec.ip6src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr->ip_mask.v6_addrs.dst_ip, fsp->m_u.ah_ip6_spec.ip6dst,
+		       sizeof(struct in6_addr));
+		fltr->ip_mask.spi = fsp->m_u.ah_ip6_spec.spi;
+		fltr->ip_mask.tclass = fsp->m_u.ah_ip6_spec.tclass;
+		break;
+	case IPV6_USER_FLOW:
+		memcpy(&fltr->ip_data.v6_addrs.src_ip, fsp->h_u.usr_ip6_spec.ip6src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr->ip_data.v6_addrs.dst_ip, fsp->h_u.usr_ip6_spec.ip6dst,
+		       sizeof(struct in6_addr));
+		fltr->ip_data.l4_header = fsp->h_u.usr_ip6_spec.l4_4_bytes;
+		fltr->ip_data.tclass = fsp->h_u.usr_ip6_spec.tclass;
+		fltr->ip_data.proto = fsp->h_u.usr_ip6_spec.l4_proto;
+		memcpy(&fltr->ip_mask.v6_addrs.src_ip, fsp->m_u.usr_ip6_spec.ip6src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr->ip_mask.v6_addrs.dst_ip, fsp->m_u.usr_ip6_spec.ip6dst,
+		       sizeof(struct in6_addr));
+		fltr->ip_mask.l4_header = fsp->m_u.usr_ip6_spec.l4_4_bytes;
+		fltr->ip_mask.tclass = fsp->m_u.usr_ip6_spec.tclass;
+		fltr->ip_mask.proto = fsp->m_u.usr_ip6_spec.l4_proto;
+		break;
 	default:
 		/* not doing un-parsed flow types */
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 1202c86a7f9d..abcdf69777d7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -5,6 +5,15 @@
 
 #include "iavf.h"
 
+static const struct in6_addr ipv6_addr_full_mask = {
+	.in6_u = {
+		.u6_addr8 = {
+			0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
+			0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
+		}
+	}
+};
+
 /**
  * iavf_fill_fdir_ip4_hdr - fill the IPv4 protocol header
  * @fltr: Flow Director filter data structure
@@ -44,6 +53,50 @@ iavf_fill_fdir_ip4_hdr(struct iavf_fdir_fltr *fltr,
 	return 0;
 }
 
+/**
+ * iavf_fill_fdir_ip6_hdr - fill the IPv6 protocol header
+ * @fltr: Flow Director filter data structure
+ * @proto_hdrs: Flow Director protocol headers data structure
+ *
+ * Returns 0 if the IPv6 protocol header is set successfully
+ */
+static int
+iavf_fill_fdir_ip6_hdr(struct iavf_fdir_fltr *fltr,
+		       struct virtchnl_proto_hdrs *proto_hdrs)
+{
+	struct virtchnl_proto_hdr *hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	struct ipv6hdr *iph = (struct ipv6hdr *)hdr->buffer;
+
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV6);
+
+	if (fltr->ip_mask.tclass == U8_MAX) {
+		iph->priority = (fltr->ip_data.tclass >> 4) & 0xF;
+		iph->flow_lbl[0] = (fltr->ip_data.tclass << 4) & 0xF0;
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, TC);
+	}
+
+	if (fltr->ip_mask.proto == U8_MAX) {
+		iph->nexthdr = fltr->ip_data.proto;
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, PROT);
+	}
+
+	if (!memcmp(&fltr->ip_mask.v6_addrs.src_ip, &ipv6_addr_full_mask,
+		    sizeof(struct in6_addr))) {
+		memcpy(&iph->saddr, &fltr->ip_data.v6_addrs.src_ip,
+		       sizeof(struct in6_addr));
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, SRC);
+	}
+
+	if (!memcmp(&fltr->ip_mask.v6_addrs.dst_ip, &ipv6_addr_full_mask,
+		    sizeof(struct in6_addr))) {
+		memcpy(&iph->daddr, &fltr->ip_data.v6_addrs.dst_ip,
+		       sizeof(struct in6_addr));
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST);
+	}
+
+	return 0;
+}
+
 /**
  * iavf_fill_fdir_tcp_hdr - fill the TCP protocol header
  * @fltr: Flow Director filter data structure
@@ -274,6 +327,30 @@ int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 		err = iavf_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
 		      iavf_fill_fdir_l4_hdr(fltr, proto_hdrs);
 		break;
+	case IAVF_FDIR_FLOW_IPV6_TCP:
+		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
+		      iavf_fill_fdir_tcp_hdr(fltr, proto_hdrs);
+		break;
+	case IAVF_FDIR_FLOW_IPV6_UDP:
+		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
+		      iavf_fill_fdir_udp_hdr(fltr, proto_hdrs);
+		break;
+	case IAVF_FDIR_FLOW_IPV6_SCTP:
+		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
+		      iavf_fill_fdir_sctp_hdr(fltr, proto_hdrs);
+		break;
+	case IAVF_FDIR_FLOW_IPV6_AH:
+		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
+		      iavf_fill_fdir_ah_hdr(fltr, proto_hdrs);
+		break;
+	case IAVF_FDIR_FLOW_IPV6_ESP:
+		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
+		      iavf_fill_fdir_esp_hdr(fltr, proto_hdrs);
+		break;
+	case IAVF_FDIR_FLOW_IPV6_OTHER:
+		err = iavf_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
+		      iavf_fill_fdir_l4_hdr(fltr, proto_hdrs);
+		break;
 	default:
 		err = -EINVAL;
 		break;
@@ -298,16 +375,22 @@ static const char *iavf_fdir_flow_proto_name(enum iavf_fdir_flow_type flow_type)
 {
 	switch (flow_type) {
 	case IAVF_FDIR_FLOW_IPV4_TCP:
+	case IAVF_FDIR_FLOW_IPV6_TCP:
 		return "TCP";
 	case IAVF_FDIR_FLOW_IPV4_UDP:
+	case IAVF_FDIR_FLOW_IPV6_UDP:
 		return "UDP";
 	case IAVF_FDIR_FLOW_IPV4_SCTP:
+	case IAVF_FDIR_FLOW_IPV6_SCTP:
 		return "SCTP";
 	case IAVF_FDIR_FLOW_IPV4_AH:
+	case IAVF_FDIR_FLOW_IPV6_AH:
 		return "AH";
 	case IAVF_FDIR_FLOW_IPV4_ESP:
+	case IAVF_FDIR_FLOW_IPV6_ESP:
 		return "ESP";
 	case IAVF_FDIR_FLOW_IPV4_OTHER:
+	case IAVF_FDIR_FLOW_IPV6_OTHER:
 		return "Other";
 	default:
 		return NULL;
@@ -357,6 +440,34 @@ void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *f
 			 fltr->ip_data.proto,
 			 ntohl(fltr->ip_data.l4_header));
 		break;
+	case IAVF_FDIR_FLOW_IPV6_TCP:
+	case IAVF_FDIR_FLOW_IPV6_UDP:
+	case IAVF_FDIR_FLOW_IPV6_SCTP:
+		dev_info(&adapter->pdev->dev, "Rule ID: %u dst_ip: %pI6 src_ip %pI6 %s: dst_port %hu src_port %hu\n",
+			 fltr->loc,
+			 &fltr->ip_data.v6_addrs.dst_ip,
+			 &fltr->ip_data.v6_addrs.src_ip,
+			 proto,
+			 ntohs(fltr->ip_data.dst_port),
+			 ntohs(fltr->ip_data.src_port));
+		break;
+	case IAVF_FDIR_FLOW_IPV6_AH:
+	case IAVF_FDIR_FLOW_IPV6_ESP:
+		dev_info(&adapter->pdev->dev, "Rule ID: %u dst_ip: %pI6 src_ip %pI6 %s: SPI %u\n",
+			 fltr->loc,
+			 &fltr->ip_data.v6_addrs.dst_ip,
+			 &fltr->ip_data.v6_addrs.src_ip,
+			 proto,
+			 ntohl(fltr->ip_data.spi));
+		break;
+	case IAVF_FDIR_FLOW_IPV6_OTHER:
+		dev_info(&adapter->pdev->dev, "Rule ID: %u dst_ip: %pI6 src_ip %pI6 proto: %u L4_bytes: 0x%x\n",
+			 fltr->loc,
+			 &fltr->ip_data.v6_addrs.dst_ip,
+			 &fltr->ip_data.v6_addrs.src_ip,
+			 fltr->ip_data.proto,
+			 ntohl(fltr->ip_data.l4_header));
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 8cc83324e25f..50f4d01a4cd2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -24,6 +24,12 @@ enum iavf_fdir_flow_type {
 	IAVF_FDIR_FLOW_IPV4_AH,
 	IAVF_FDIR_FLOW_IPV4_ESP,
 	IAVF_FDIR_FLOW_IPV4_OTHER,
+	IAVF_FDIR_FLOW_IPV6_TCP,
+	IAVF_FDIR_FLOW_IPV6_UDP,
+	IAVF_FDIR_FLOW_IPV6_SCTP,
+	IAVF_FDIR_FLOW_IPV6_AH,
+	IAVF_FDIR_FLOW_IPV6_ESP,
+	IAVF_FDIR_FLOW_IPV6_OTHER,
 	/* MAX - this must be last and add anything new just above it */
 	IAVF_FDIR_FLOW_PTYPE_MAX,
 };
@@ -33,9 +39,15 @@ struct iavf_ipv4_addrs {
 	__be32 dst_ip;
 };
 
+struct iavf_ipv6_addrs {
+	struct in6_addr src_ip;
+	struct in6_addr dst_ip;
+};
+
 struct iavf_fdir_ip {
 	union {
 		struct iavf_ipv4_addrs v4_addrs;
+		struct iavf_ipv6_addrs v6_addrs;
 	};
 	__be16 src_port;
 	__be16 dst_port;
@@ -43,6 +55,7 @@ struct iavf_fdir_ip {
 	__be32 spi;		/* security parameter index for AH/ESP */
 	union {
 		u8 tos;
+		u8 tclass;
 	};
 	u8 proto;
 };
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
