Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C26331D80
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 04:26:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 832CA6F5EC;
	Tue,  9 Mar 2021 03:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9JBNhAQKg9CK; Tue,  9 Mar 2021 03:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41148606C0;
	Tue,  9 Mar 2021 03:26:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A74A11BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9FD55835E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z67XHrz5yB5x for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 03:26:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8867583595
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:11 +0000 (UTC)
IronPort-SDR: iIqDArvlinm5kXSCe22Yuv4/xPsxVbsLeCwct7y1g7iRK2q46FMAexwy4Uk+1B20GdDoUxTulI
 eBLTA/Nxclzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="187512331"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="187512331"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 19:26:11 -0800
IronPort-SDR: Tg0EYGqxIwdNtfwUVDYpyod0Ug0vVY+6X9ha4nJkJvb4XG3c0TlgJGvftMSI8CBM0WffndHZ3J
 5J5MtJsjNkdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="602436865"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2021 19:26:09 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Mar 2021 11:08:05 +0800
Message-Id: <20210309030815.5299-9-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210309030815.5299-1-haiyue.wang@intel.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action
 parser for VF
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
Cc: cunming.liang@intel.com, Yahui Cao <yahui.cao@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Add basic FDIR flow list and pattern / action parse functions for VF.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 348 +++++++++++++++++-
 1 file changed, 346 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 2a0718f7cd41..660f04288f90 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -26,6 +26,77 @@ struct virtchnl_fdir_fltr_conf {
 	struct ice_fdir_fltr input;
 };
 
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_tcp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_TCP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_udp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_sctp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_SCTP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_tcp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_TCP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_udp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_sctp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_SCTP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+struct virtchnl_fdir_pattern_match_item {
+	enum virtchnl_proto_hdr_type *list;
+	u64 input_set;
+	u64 *meta;
+};
+
+static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern[] = {
+	{vc_pattern_ipv4,                     0,         NULL},
+	{vc_pattern_ipv4_tcp,                 0,         NULL},
+	{vc_pattern_ipv4_udp,                 0,         NULL},
+	{vc_pattern_ipv4_sctp,                0,         NULL},
+	{vc_pattern_ipv6,                     0,         NULL},
+	{vc_pattern_ipv6_tcp,                 0,         NULL},
+	{vc_pattern_ipv6_udp,                 0,         NULL},
+	{vc_pattern_ipv6_sctp,                0,         NULL},
+};
+
 struct virtchnl_fdir_inset_map {
 	enum virtchnl_proto_hdr_field field;
 	enum ice_flow_field fld;
@@ -598,6 +669,270 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	return ret;
 }
 
+/**
+ * ice_vc_fdir_match_pattern
+ * @fltr: virtual channel add cmd buffer
+ * @type: virtual channel protocol filter header type
+ *
+ * Matching the header type by comparing fltr and type's value.
+ *
+ * Return: true on success, and false on error.
+ */
+static bool
+ice_vc_fdir_match_pattern(struct virtchnl_fdir_add *fltr,
+			  enum virtchnl_proto_hdr_type *type)
+{
+	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
+	int i = 0;
+
+	while ((i < proto->count) &&
+	       (*type == proto->proto_hdr[i].type) &&
+	       (*type != VIRTCHNL_PROTO_HDR_NONE)) {
+		type++;
+		i++;
+	}
+
+	return ((i == proto->count) &&
+		(*type == VIRTCHNL_PROTO_HDR_NONE));
+}
+
+/**
+ * ice_vc_fdir_get_pattern - get while list pattern
+ * @vf: pointer to the VF info
+ * @len: filter list length
+ *
+ * Return: pointer to allowed filter list
+ */
+static const struct virtchnl_fdir_pattern_match_item *
+ice_vc_fdir_get_pattern(struct ice_vf *vf, int *len)
+{
+	const struct virtchnl_fdir_pattern_match_item *item;
+
+	item = vc_fdir_pattern;
+	*len = ARRAY_SIZE(vc_fdir_pattern);
+
+	return item;
+}
+
+/**
+ * ice_vc_fdir_search_pattern
+ * @vf: pointer to the VF info
+ * @fltr: virtual channel add cmd buffer
+ *
+ * Search for matched pattern from supported pattern list
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_search_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr)
+{
+	const struct virtchnl_fdir_pattern_match_item *pattern;
+	int len, i;
+
+	pattern = ice_vc_fdir_get_pattern(vf, &len);
+
+	for (i = 0; i < len; i++)
+		if (ice_vc_fdir_match_pattern(fltr, pattern[i].list))
+			return 0;
+
+	return -EINVAL;
+}
+
+/**
+ * ice_vc_fdir_parse_pattern
+ * @vf: pointer to the VF info
+ * @fltr: virtual channel add cmd buffer
+ * @conf: FDIR configuration for each filter
+ *
+ * Parse the virtual channel filter's pattern and store them into conf
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
+			  struct virtchnl_fdir_fltr_conf *conf)
+{
+	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
+	enum virtchnl_proto_hdr_type l3 = VIRTCHNL_PROTO_HDR_NONE;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_fdir_fltr *input = &conf->input;
+	int i;
+
+	if (proto->count > VIRTCHNL_MAX_NUM_PROTO_HDRS) {
+		dev_dbg(dev, "Invalid protocol count:0x%x for VF %d\n",
+			proto->count, vf->vf_id);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < proto->count; i++) {
+		struct virtchnl_proto_hdr *hdr = &proto->proto_hdr[i];
+		struct sctphdr *sctph;
+		struct ipv6hdr *ip6h;
+		struct udphdr *udph;
+		struct tcphdr *tcph;
+		struct iphdr *iph;
+
+		switch (hdr->type) {
+		case VIRTCHNL_PROTO_HDR_ETH:
+			break;
+		case VIRTCHNL_PROTO_HDR_IPV4:
+			iph = (struct iphdr *)hdr->buffer;
+			l3 = VIRTCHNL_PROTO_HDR_IPV4;
+			input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_OTHER;
+
+			if (hdr->field_selector) {
+				input->ip.v4.src_ip = iph->saddr;
+				input->ip.v4.dst_ip = iph->daddr;
+				input->ip.v4.tos = iph->tos;
+				input->ip.v4.proto = iph->protocol;
+			}
+			break;
+		case VIRTCHNL_PROTO_HDR_IPV6:
+			ip6h = (struct ipv6hdr *)hdr->buffer;
+			l3 = VIRTCHNL_PROTO_HDR_IPV6;
+			input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_OTHER;
+
+			if (hdr->field_selector) {
+				memcpy(input->ip.v6.src_ip,
+				       ip6h->saddr.in6_u.u6_addr8,
+				       sizeof(ip6h->saddr));
+				memcpy(input->ip.v6.dst_ip,
+				       ip6h->daddr.in6_u.u6_addr8,
+				       sizeof(ip6h->daddr));
+				input->ip.v6.tc = ((u8)(ip6h->priority) << 4) |
+						  (ip6h->flow_lbl[0] >> 4);
+				input->ip.v6.proto = ip6h->nexthdr;
+			}
+			break;
+		case VIRTCHNL_PROTO_HDR_TCP:
+			tcph = (struct tcphdr *)hdr->buffer;
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_TCP;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_TCP;
+
+			if (hdr->field_selector) {
+				if (l3 == VIRTCHNL_PROTO_HDR_IPV4) {
+					input->ip.v4.src_port = tcph->source;
+					input->ip.v4.dst_port = tcph->dest;
+				} else if (l3 == VIRTCHNL_PROTO_HDR_IPV6) {
+					input->ip.v6.src_port = tcph->source;
+					input->ip.v6.dst_port = tcph->dest;
+				}
+			}
+			break;
+		case VIRTCHNL_PROTO_HDR_UDP:
+			udph = (struct udphdr *)hdr->buffer;
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_UDP;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_UDP;
+
+			if (hdr->field_selector) {
+				if (l3 == VIRTCHNL_PROTO_HDR_IPV4) {
+					input->ip.v4.src_port = udph->source;
+					input->ip.v4.dst_port = udph->dest;
+				} else if (l3 == VIRTCHNL_PROTO_HDR_IPV6) {
+					input->ip.v6.src_port = udph->source;
+					input->ip.v6.dst_port = udph->dest;
+				}
+			}
+			break;
+		case VIRTCHNL_PROTO_HDR_SCTP:
+			sctph = (struct sctphdr *)hdr->buffer;
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+				input->flow_type =
+					ICE_FLTR_PTYPE_NONF_IPV4_SCTP;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+				input->flow_type =
+					ICE_FLTR_PTYPE_NONF_IPV6_SCTP;
+
+			if (hdr->field_selector) {
+				if (l3 == VIRTCHNL_PROTO_HDR_IPV4) {
+					input->ip.v4.src_port = sctph->source;
+					input->ip.v4.dst_port = sctph->dest;
+				} else if (l3 == VIRTCHNL_PROTO_HDR_IPV6) {
+					input->ip.v6.src_port = sctph->source;
+					input->ip.v6.dst_port = sctph->dest;
+				}
+			}
+			break;
+		default:
+			dev_dbg(dev, "Invalid header type 0x:%x for VF %d\n",
+				hdr->type, vf->vf_id);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vc_fdir_parse_action
+ * @vf: pointer to the VF info
+ * @fltr: virtual channel add cmd buffer
+ * @conf: FDIR configuration for each filter
+ *
+ * Parse the virtual channel filter's action and store them into conf
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_parse_action(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
+			 struct virtchnl_fdir_fltr_conf *conf)
+{
+	struct virtchnl_filter_action_set *as = &fltr->rule_cfg.action_set;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_fdir_fltr *input = &conf->input;
+	u32 dest_num = 0;
+	u32 mark_num = 0;
+	int i;
+
+	if (as->count > VIRTCHNL_MAX_NUM_ACTIONS) {
+		dev_dbg(dev, "Invalid action numbers:0x%x for VF %d\n",
+			as->count, vf->vf_id);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < as->count; i++) {
+		struct virtchnl_filter_action *action = &as->actions[i];
+
+		switch (action->type) {
+		case VIRTCHNL_ACTION_DROP:
+			dest_num++;
+			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DROP_PKT;
+			break;
+		case VIRTCHNL_ACTION_QUEUE:
+			dest_num++;
+			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX;
+			input->q_index = action->act_conf.queue.index;
+			break;
+		case VIRTCHNL_ACTION_MARK:
+			mark_num++;
+			input->fltr_id = action->act_conf.mark_id;
+			input->fdid_prio = ICE_FXD_FLTR_QW1_FDID_PRI_THREE;
+			break;
+		default:
+			dev_dbg(dev, "Invalid action type:0x%x for VF %d\n",
+				action->type, vf->vf_id);
+			return -EINVAL;
+		}
+	}
+
+	if (dest_num == 0 || dest_num >= 2) {
+		dev_dbg(dev, "Invalid destination action for VF %d\n",
+			vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (mark_num >= 2) {
+		dev_dbg(dev, "Too many mark actions for VF %d\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ice_vc_validate_fdir_fltr - validate the virtual channel filter
  * @vf: pointer to the VF info
@@ -610,8 +945,17 @@ static int
 ice_vc_validate_fdir_fltr(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 			  struct virtchnl_fdir_fltr_conf *conf)
 {
-	/* Todo: rule validation */
-	return -EINVAL;
+	int ret;
+
+	ret = ice_vc_fdir_search_pattern(vf, fltr);
+	if (ret)
+		return ret;
+
+	ret = ice_vc_fdir_parse_pattern(vf, fltr, conf);
+	if (ret)
+		return ret;
+
+	return ice_vc_fdir_parse_action(vf, fltr, conf);
 }
 
 /**
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
