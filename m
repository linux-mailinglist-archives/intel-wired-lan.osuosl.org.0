Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DB5331D8A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 04:27:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFE5240167;
	Tue,  9 Mar 2021 03:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CXY0re11uhtA; Tue,  9 Mar 2021 03:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60B424015E;
	Tue,  9 Mar 2021 03:27:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6D911BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E32C083CD5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cYFBuOQpNQqO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 03:26:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE00983ACB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:30 +0000 (UTC)
IronPort-SDR: XuEh9fiBVeitSgkeg5tscVZ1qCJH1K2lLpI6Mn357Z9iU1wr0vVjpdNw0kOAaW7R/7tvelkQji
 qqOTvQ7uoCug==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="187512374"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="187512374"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 19:26:30 -0800
IronPort-SDR: j71uwZMUGncKfkC5dYqUae8NW1LnYYdPqzYeFZLkEZ9cH6tWqui8328N+IwNCaQ5Pr3iae8ex3
 7f2teZFUvdbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="602437012"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2021 19:26:28 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Mar 2021 11:08:15 +0800
Message-Id: <20210309030815.5299-19-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210309030815.5299-1-haiyue.wang@intel.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v5 18/18] iavf: Enable flex-bytes support
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

Flex-bytes allows for packet matching based on an offset and value. This
is supported via the ethtool user-def option.

The user-def 0xAAAABBBBCCCCDDDD: BBBB is the 2 byte pattern while AAAA
corresponds to its offset in the packet. Similarly DDDD is the 2 byte
pattern with CCCC being the corresponding offset. The offset ranges from
0x0 to 0x1F7 (up to 504 bytes into the packet). The offset starts from
the beginning of the packet.

This feature can be used to allow customers to set flow director rules
for protocols headers that are beyond standard ones supported by ethtool
(e.g. PFCP or GTP-U).

Like for matching GTP-U's TEID value 0x10203040:
ethtool -N ens787f0v0 flow-type udp4 dst-port 2152 \
user-def 0x002e102000303040 action 13

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  93 ++++++++
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 217 +++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  19 ++
 3 files changed, 327 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index bf33cf2a7925..d9ed4d4e3d78 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -909,6 +909,85 @@ static enum iavf_fdir_flow_type iavf_ethtool_flow_to_fltr(int eth)
 	}
 }
 
+/**
+ * iavf_is_mask_valid - check mask field set
+ * @mask: full mask to check
+ * @field: field for which mask should be valid
+ *
+ * If the mask is fully set return true. If it is not valid for field return
+ * false.
+ */
+static bool iavf_is_mask_valid(u64 mask, u64 field)
+{
+	return (mask & field) == field;
+}
+
+/**
+ * iavf_parse_rx_flow_user_data - deconstruct user-defined data
+ * @fsp: pointer to ethtool Rx flow specification
+ * @fltr: pointer to Flow Director filter for userdef data storage
+ *
+ * Returns 0 on success, negative error value on failure
+ */
+static int
+iavf_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
+			     struct iavf_fdir_fltr *fltr)
+{
+	struct iavf_flex_word *flex;
+	int i, cnt = 0;
+
+	if (!(fsp->flow_type & FLOW_EXT))
+		return 0;
+
+	for (i = 0; i < 2; i++) {
+#define IAVF_USERDEF_FLEX_WORD_M	GENMASK(15, 0)
+#define IAVF_USERDEF_FLEX_OFFS_S	16
+#define IAVF_USERDEF_FLEX_OFFS_M	GENMASK(31, IAVF_USERDEF_FLEX_OFFS_S)
+#define IAVF_USERDEF_FLEX_FLTR_M	GENMASK(31, 0)
+		u32 value = be32_to_cpu(fsp->h_ext.data[i]);
+		u32 mask = be32_to_cpu(fsp->m_ext.data[i]);
+
+		if (!value || !mask)
+			continue;
+
+		if (!iavf_is_mask_valid(mask, IAVF_USERDEF_FLEX_FLTR_M))
+			return -EINVAL;
+
+		/* 504 is the maximum value for offsets, and offset is measured
+		 * from the start of the MAC address.
+		 */
+#define IAVF_USERDEF_FLEX_MAX_OFFS_VAL 504
+		flex = &fltr->flex_words[cnt++];
+		flex->word = value & IAVF_USERDEF_FLEX_WORD_M;
+		flex->offset = (value & IAVF_USERDEF_FLEX_OFFS_M) >>
+			     IAVF_USERDEF_FLEX_OFFS_S;
+		if (flex->offset > IAVF_USERDEF_FLEX_MAX_OFFS_VAL)
+			return -EINVAL;
+	}
+
+	fltr->flex_cnt = cnt;
+
+	return 0;
+}
+
+/**
+ * iavf_fill_rx_flow_ext_data - fill the additional data
+ * @fsp: pointer to ethtool Rx flow specification
+ * @fltr: pointer to Flow Director filter to get additional data
+ */
+static void
+iavf_fill_rx_flow_ext_data(struct ethtool_rx_flow_spec *fsp,
+			   struct iavf_fdir_fltr *fltr)
+{
+	if (!fltr->ext_mask.usr_def[0] && !fltr->ext_mask.usr_def[1])
+		return;
+
+	fsp->flow_type |= FLOW_EXT;
+
+	memcpy(fsp->h_ext.data, fltr->ext_data.usr_def, sizeof(fsp->h_ext.data));
+	memcpy(fsp->m_ext.data, fltr->ext_mask.usr_def, sizeof(fsp->m_ext.data));
+}
+
 /**
  * iavf_get_ethtool_fdir_entry - fill ethtool structure with Flow Director filter data
  * @adapter: the VF adapter structure that contains filter list
@@ -1038,6 +1117,8 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
 		break;
 	}
 
+	iavf_fill_rx_flow_ext_data(fsp, rule);
+
 	if (rule->action == VIRTCHNL_ACTION_DROP)
 		fsp->ring_cookie = RX_CLS_FLOW_DISC;
 	else
@@ -1100,6 +1181,7 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 {
 	u32 flow_type, q_index = 0;
 	enum virtchnl_action act;
+	int err;
 
 	if (fsp->ring_cookie == RX_CLS_FLOW_DISC) {
 		act = VIRTCHNL_ACTION_DROP;
@@ -1115,6 +1197,13 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 	fltr->loc = fsp->location;
 	fltr->q_index = q_index;
 
+	if (fsp->flow_type & FLOW_EXT) {
+		memcpy(fltr->ext_data.usr_def, fsp->h_ext.data,
+		       sizeof(fltr->ext_data.usr_def));
+		memcpy(fltr->ext_mask.usr_def, fsp->m_ext.data,
+		       sizeof(fltr->ext_mask.usr_def));
+	}
+
 	flow_type = fsp->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS);
 	fltr->flow_type = iavf_ethtool_flow_to_fltr(flow_type);
 
@@ -1217,6 +1306,10 @@ iavf_add_fdir_fltr_info(struct iavf_adapter *adapter, struct ethtool_rx_flow_spe
 	if (iavf_fdir_is_dup_fltr(adapter, fltr))
 		return -EEXIST;
 
+	err = iavf_parse_rx_flow_user_data(fsp, fltr);
+	if (err)
+		return err;
+
 	return iavf_fill_fdir_add_msg(adapter, fltr);
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 635850814313..2a355cd6e7c8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -5,6 +5,10 @@
 
 #include "iavf.h"
 
+#define GTPU_PORT	2152
+#define NAT_T_ESP_PORT	4500
+#define PFCP_PORT	8805
+
 static const struct in6_addr ipv6_addr_full_mask = {
 	.in6_u = {
 		.u6_addr8 = {
@@ -14,6 +18,206 @@ static const struct in6_addr ipv6_addr_full_mask = {
 	}
 };
 
+/**
+ * iavf_pkt_udp_no_pay_len - the length of UDP packet without payload
+ * @fltr: Flow Director filter data structure
+ */
+static u16 iavf_pkt_udp_no_pay_len(struct iavf_fdir_fltr *fltr)
+{
+	return sizeof(struct ethhdr) +
+	       (fltr->ip_ver == 4 ? sizeof(struct iphdr) : sizeof(struct ipv6hdr)) +
+	       sizeof(struct udphdr);
+}
+
+/**
+ * iavf_fill_fdir_gtpu_hdr - fill the GTP-U protocol header
+ * @fltr: Flow Director filter data structure
+ * @proto_hdrs: Flow Director protocol headers data structure
+ *
+ * Returns 0 if the GTP-U protocol header is set successfully
+ */
+static int
+iavf_fill_fdir_gtpu_hdr(struct iavf_fdir_fltr *fltr,
+			struct virtchnl_proto_hdrs *proto_hdrs)
+{
+	struct virtchnl_proto_hdr *uhdr = &proto_hdrs->proto_hdr[proto_hdrs->count - 1];
+	struct virtchnl_proto_hdr *ghdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	struct virtchnl_proto_hdr *ehdr = NULL; /* Extension Header if it exists */
+	u16 adj_offs, hdr_offs;
+	int i;
+
+	VIRTCHNL_SET_PROTO_HDR_TYPE(ghdr, GTPU_IP);
+
+	adj_offs = iavf_pkt_udp_no_pay_len(fltr);
+
+	for (i = 0; i < fltr->flex_cnt; i++) {
+#define IAVF_GTPU_HDR_TEID_OFFS0	4
+#define IAVF_GTPU_HDR_TEID_OFFS1	6
+#define IAVF_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS	10
+#define IAVF_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS		13
+#define IAVF_GTPU_PSC_EXTHDR_TYPE	0x85 /* PDU Session Container Extension Header */
+		if (fltr->flex_words[i].offset < adj_offs)
+			return -EINVAL;
+
+		hdr_offs = fltr->flex_words[i].offset - adj_offs;
+
+		switch (hdr_offs) {
+		case IAVF_GTPU_HDR_TEID_OFFS0:
+		case IAVF_GTPU_HDR_TEID_OFFS1: {
+			__be16 *pay_word = (__be16 *)ghdr->buffer;
+
+			pay_word[hdr_offs >> 1] = htons(fltr->flex_words[i].word);
+			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(ghdr, GTPU_IP, TEID);
+			}
+			break;
+		case IAVF_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS:
+			if ((fltr->flex_words[i].word & 0xff) != IAVF_GTPU_PSC_EXTHDR_TYPE)
+				return -EOPNOTSUPP;
+			if (!ehdr)
+				ehdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+			VIRTCHNL_SET_PROTO_HDR_TYPE(ehdr, GTPU_EH);
+			break;
+		case IAVF_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS:
+			if (!ehdr)
+				return -EINVAL;
+			ehdr->buffer[1] = fltr->flex_words[i].word & 0x3F;
+			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(ehdr, GTPU_EH, QFI);
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	uhdr->field_selector = 0; /* The PF ignores the UDP header fields */
+
+	return 0;
+}
+
+/**
+ * iavf_fill_fdir_pfcp_hdr - fill the PFCP protocol header
+ * @fltr: Flow Director filter data structure
+ * @proto_hdrs: Flow Director protocol headers data structure
+ *
+ * Returns 0 if the PFCP protocol header is set successfully
+ */
+static int
+iavf_fill_fdir_pfcp_hdr(struct iavf_fdir_fltr *fltr,
+			struct virtchnl_proto_hdrs *proto_hdrs)
+{
+	struct virtchnl_proto_hdr *uhdr = &proto_hdrs->proto_hdr[proto_hdrs->count - 1];
+	struct virtchnl_proto_hdr *hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	u16 adj_offs, hdr_offs;
+	int i;
+
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, PFCP);
+
+	adj_offs = iavf_pkt_udp_no_pay_len(fltr);
+
+	for (i = 0; i < fltr->flex_cnt; i++) {
+#define IAVF_PFCP_HDR_SFIELD_AND_MSG_TYPE_OFFS	0
+		if (fltr->flex_words[i].offset < adj_offs)
+			return -EINVAL;
+
+		hdr_offs = fltr->flex_words[i].offset - adj_offs;
+
+		switch (hdr_offs) {
+		case IAVF_PFCP_HDR_SFIELD_AND_MSG_TYPE_OFFS:
+			hdr->buffer[0] = (fltr->flex_words[i].word >> 8) & 0xff;
+			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, PFCP, S_FIELD);
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	uhdr->field_selector = 0; /* The PF ignores the UDP header fields */
+
+	return 0;
+}
+
+/**
+ * iavf_fill_fdir_nat_t_esp_hdr - fill the NAT-T-ESP protocol header
+ * @fltr: Flow Director filter data structure
+ * @proto_hdrs: Flow Director protocol headers data structure
+ *
+ * Returns 0 if the NAT-T-ESP protocol header is set successfully
+ */
+static int
+iavf_fill_fdir_nat_t_esp_hdr(struct iavf_fdir_fltr *fltr,
+			     struct virtchnl_proto_hdrs *proto_hdrs)
+{
+	struct virtchnl_proto_hdr *uhdr = &proto_hdrs->proto_hdr[proto_hdrs->count - 1];
+	struct virtchnl_proto_hdr *hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+	u16 adj_offs, hdr_offs;
+	u32 spi = 0;
+	int i;
+
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, ESP);
+
+	adj_offs = iavf_pkt_udp_no_pay_len(fltr);
+
+	for (i = 0; i < fltr->flex_cnt; i++) {
+#define IAVF_NAT_T_ESP_SPI_OFFS0	0
+#define IAVF_NAT_T_ESP_SPI_OFFS1	2
+		if (fltr->flex_words[i].offset < adj_offs)
+			return -EINVAL;
+
+		hdr_offs = fltr->flex_words[i].offset - adj_offs;
+
+		switch (hdr_offs) {
+		case IAVF_NAT_T_ESP_SPI_OFFS0:
+			spi |= fltr->flex_words[i].word << 16;
+			break;
+		case IAVF_NAT_T_ESP_SPI_OFFS1:
+			spi |= fltr->flex_words[i].word;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	if (!spi)
+		return -EOPNOTSUPP; /* Not support IKE Header Format with SPI 0 */
+
+	*(__be32 *)hdr->buffer = htonl(spi);
+	VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, ESP, SPI);
+
+	uhdr->field_selector = 0; /* The PF ignores the UDP header fields */
+
+	return 0;
+}
+
+/**
+ * iavf_fill_fdir_udp_flex_pay_hdr - fill the UDP payload header
+ * @fltr: Flow Director filter data structure
+ * @proto_hdrs: Flow Director protocol headers data structure
+ *
+ * Returns 0 if the UDP payload defined protocol header is set successfully
+ */
+static int
+iavf_fill_fdir_udp_flex_pay_hdr(struct iavf_fdir_fltr *fltr,
+				struct virtchnl_proto_hdrs *proto_hdrs)
+{
+	int err;
+
+	switch (ntohs(fltr->ip_data.dst_port)) {
+	case GTPU_PORT:
+		err = iavf_fill_fdir_gtpu_hdr(fltr, proto_hdrs);
+		break;
+	case NAT_T_ESP_PORT:
+		err = iavf_fill_fdir_nat_t_esp_hdr(fltr, proto_hdrs);
+		break;
+	case PFCP_PORT:
+		err = iavf_fill_fdir_pfcp_hdr(fltr, proto_hdrs);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+		break;
+	}
+
+	return err;
+}
+
 /**
  * iavf_fill_fdir_ip4_hdr - fill the IPv4 protocol header
  * @fltr: Flow Director filter data structure
@@ -50,6 +254,8 @@ iavf_fill_fdir_ip4_hdr(struct iavf_fdir_fltr *fltr,
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DST);
 	}
 
+	fltr->ip_ver = 4;
+
 	return 0;
 }
 
@@ -94,6 +300,8 @@ iavf_fill_fdir_ip6_hdr(struct iavf_fdir_fltr *fltr,
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST);
 	}
 
+	fltr->ip_ver = 6;
+
 	return 0;
 }
 
@@ -152,7 +360,10 @@ iavf_fill_fdir_udp_hdr(struct iavf_fdir_fltr *fltr,
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP, DST_PORT);
 	}
 
-	return 0;
+	if (!fltr->flex_cnt)
+		return 0;
+
+	return iavf_fill_fdir_udp_flex_pay_hdr(fltr, proto_hdrs);
 }
 
 /**
@@ -511,7 +722,9 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 		if (!memcmp(&tmp->eth_data, &fltr->eth_data,
 			    sizeof(fltr->eth_data)) &&
 		    !memcmp(&tmp->ip_data, &fltr->ip_data,
-			    sizeof(fltr->ip_data))) {
+			    sizeof(fltr->ip_data)) &&
+		    !memcmp(&tmp->ext_data, &fltr->ext_data,
+			    sizeof(fltr->ext_data))) {
 			ret = true;
 			break;
 		}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 45ff4423ef47..10f6ffb85c70 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -35,6 +35,11 @@ enum iavf_fdir_flow_type {
 	IAVF_FDIR_FLOW_PTYPE_MAX,
 };
 
+struct iavf_flex_word {
+	u16 offset;
+	u16 word;
+};
+
 struct iavf_ipv4_addrs {
 	__be32 src_ip;
 	__be32 dst_ip;
@@ -64,6 +69,11 @@ struct iavf_fdir_ip {
 	};
 	u8 proto;
 };
+
+struct iavf_fdir_extra {
+	u32 usr_def[2];
+};
+
 /* bookkeeping of Flow Director filters */
 struct iavf_fdir_fltr {
 	enum iavf_fdir_fltr_state_t state;
@@ -77,7 +87,16 @@ struct iavf_fdir_fltr {
 	struct iavf_fdir_ip ip_data;
 	struct iavf_fdir_ip ip_mask;
 
+	struct iavf_fdir_extra ext_data;
+	struct iavf_fdir_extra ext_mask;
+
 	enum virtchnl_action action;
+
+	/* flex byte filter data */
+	u8 ip_ver; /* used to adjust the flex offset, 4 : IPv4, 6 : IPv6 */
+	u8 flex_cnt;
+	struct iavf_flex_word flex_words[2];
+
 	u32 flow_id;
 
 	u32 loc;	/* Rule location inside the flow table */
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
