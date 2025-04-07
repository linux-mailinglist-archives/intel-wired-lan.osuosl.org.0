Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2F8A7EC28
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:11:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55EFA40C26;
	Mon,  7 Apr 2025 19:11:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RczRTTCMmZjf; Mon,  7 Apr 2025 19:11:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DF5E40C99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053065;
	bh=/U9VGcBjnXf/s1TE/LgTFZdQSriWjUPaelE9wngBOOU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tOnMV9VljGa8alqEb4uJqKSo+gN+IsxLzxBESqzfvQPjRztVpTCiDWaQre2tQe4B3
	 Q+IEVKIxkYUz6rlSyuvycjCuE4sA89sBtxx0KEYEWqXhCv1EfSLUwfxX28oVustkZL
	 4q8Ghg5zrOSNIXXpUbSewIGwpT6gnbl8bRBJpr20nRqpSKY2obY868e/2uKynlUPvG
	 jKSyLLMJcTjEZ4jOuZlrKSaJouEgrxQVx1UHZrI2QE7HzfWvftv/zfw8eWX5TPt7SU
	 IyQwZLDoDMpU+JlPJvwV/aL0W6Cj2sA1+OrLu+mBKoRVLlMSiTUYEvJpJGFJCscH+c
	 BS5bcFiS6gikg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DF5E40C99;
	Mon,  7 Apr 2025 19:11:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C7D801DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADE4C81D0B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:11:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DA4Rh4UKihiz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:11:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77C1481D72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77C1481D72
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77C1481D72
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:11:01 +0000 (UTC)
X-CSE-ConnectionGUID: URYKX4Y1SIirow6O7ExRkg==
X-CSE-MsgGUID: v69611Q3Q6CPDIxeSIrJPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45550431"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45550431"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:10:56 -0700
X-CSE-ConnectionGUID: KhTnbmt8SyKI1un56UkExA==
X-CSE-MsgGUID: b2KzbmszRFGi6Go2AUrw3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132177665"
Received: from puneetse-mobl.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:10:48 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Mon,  7 Apr 2025 13:10:17 -0600
Message-ID: <20250407191017.944214-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250407191017.944214-1-ahmed.zaki@intel.com>
References: <20250407191017.944214-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053062; x=1775589062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1wt2EPEqtxCLr4PcXWD+gC2dCRNY/X+/ERXTeTtsQ90=;
 b=BFAU5z9jENdANagRs7U/Bs6n7Peb8aFCoReEcBIMC2umUM7iXsNo/VCg
 Hb8LrAA7xRMOb9k558WqgbOa/yHPPjeSmjE9+C53jSLNF92VyPEafX+1p
 LbjYVZjxuvCnluY9tjT0HtxVZhHdg5SIH1a33AS5TJjxFejmD7OgrTLTa
 t2/wB2MN1WNIVIzOjhvf+OHOdlsJuyYqYrHFgPC/IolqBigEI1O6v8uA+
 quipI9arD/0/boqTQGHKSaEz658rktTa34e4MYtzMe0fdewfWFB+kYxPd
 bI5bpLiZCHVE7M3NLM3Scyz/hAtFWOTWGQ+hwujCFoc7iSt1Zq5qi3F8J
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BFAU5z9j
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] idpf: add flow steering
 support
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

Use the new virtchnl2 OP codes to communicate with the Control Plane to
add flow steering filters. We add the basic functionality for ADD/Delete
with TCP/UDP IPv4 only. Support for other OP codes and protocols will be
added later.

Standard 'ethtool -N|--config-ntuple' should be used, for example:

    # ethtool -N ens801f0d1 flow-type tcp4 src-ip 10.0.0.1 action 6

to route all IPv4/TCP traffic from IP 10.0.0.1 to queue 6.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  13 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 298 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   5 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 105 ++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 5 files changed, 422 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 4e1c0b9e0bda..01a767ff0010 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -247,6 +247,12 @@ struct idpf_port_stats {
 	struct virtchnl2_vport_stats vport_stats;
 };
 
+struct idpf_fsteer_fltr {
+	struct list_head list;
+	u32 loc;
+	unsigned int q_index;
+};
+
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @num_txq: Number of allocated TX queues
@@ -379,6 +385,8 @@ struct idpf_rss_data {
  *		      ethtool
  * @user_flags: User toggled config flags
  * @mac_filter_list: List of MAC filters
+ * @num_fsteer_fltrs: number of flow steering filters
+ * @flow_steer_list: list of flow steering filters
  *
  * Used to restore configuration after a reset as the vport will get wiped.
  */
@@ -390,6 +398,8 @@ struct idpf_vport_user_config_data {
 	u32 num_req_rxq_desc;
 	DECLARE_BITMAP(user_flags, __IDPF_USER_FLAGS_NBITS);
 	struct list_head mac_filter_list;
+	u16 num_fsteer_fltrs;
+	struct list_head flow_steer_list;
 };
 
 /**
@@ -841,4 +851,7 @@ int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
 u8 idpf_vport_get_hsplit(const struct idpf_vport *vport);
 bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
 
+int idpf_add_del_fsteer_filters(struct idpf_adapter *adapter,
+				struct virtchnl2_flow_rule_add_del *rule,
+				bool add);
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 59b1a1a09996..71c3a7282d16 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2023 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_virtchnl.h"
 
 /**
  * idpf_get_rxnfc - command to get RX flow classification rules
@@ -12,26 +13,312 @@
  * Returns Success if the command is supported.
  */
 static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
-			  u32 __always_unused *rule_locs)
+			  u32 *rule_locs)
 {
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_vport_user_config_data *user_config;
+	struct idpf_fsteer_fltr *f;
 	struct idpf_vport *vport;
+	unsigned int cnt = 0;
+	int err = 0;
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
 		cmd->data = vport->num_rxq;
-		idpf_vport_ctrl_unlock(netdev);
-
-		return 0;
+		break;
+	case ETHTOOL_GRXCLSRLCNT:
+		cmd->rule_cnt = user_config->num_fsteer_fltrs;
+		cmd->data = idpf_fsteer_max_rules(vport);
+		break;
+	case ETHTOOL_GRXCLSRULE:
+		err = -EINVAL;
+		list_for_each_entry(f, &user_config->flow_steer_list, list)
+			if (f->loc == cmd->fs.location) {
+				cmd->fs.ring_cookie = f->q_index;
+				err = 0;
+				break;
+			}
+		break;
+	case ETHTOOL_GRXCLSRLALL:
+		cmd->data = idpf_fsteer_max_rules(vport);
+		list_for_each_entry(f, &user_config->flow_steer_list, list) {
+			if (cnt == cmd->rule_cnt) {
+				err = -EMSGSIZE;
+				break;
+			}
+			rule_locs[cnt] = f->loc;
+			cnt++;
+		}
+		if (!err)
+			cmd->rule_cnt = user_config->num_fsteer_fltrs;
+		break;
 	default:
 		break;
 	}
 
 	idpf_vport_ctrl_unlock(netdev);
 
-	return -EOPNOTSUPP;
+	return err;
+}
+
+static void idpf_fsteer_fill_ipv4(struct virtchnl2_proto_hdrs *hdrs,
+				  struct ethtool_rx_flow_spec *fsp)
+{
+	struct iphdr *iph;
+
+	hdrs->proto_hdr[0].hdr_type = cpu_to_le32(VIRTCHNL2_PROTO_HDR_IPV4);
+
+	iph = (struct iphdr *)hdrs->proto_hdr[0].buffer_spec;
+	iph->saddr = fsp->h_u.tcp_ip4_spec.ip4src;
+	iph->daddr = fsp->h_u.tcp_ip4_spec.ip4dst;
+
+	iph = (struct iphdr *)hdrs->proto_hdr[0].buffer_mask;
+	iph->saddr = fsp->m_u.tcp_ip4_spec.ip4src;
+	iph->daddr = fsp->m_u.tcp_ip4_spec.ip4dst;
+}
+
+static void idpf_fsteer_fill_udp(struct virtchnl2_proto_hdrs *hdrs,
+				 struct ethtool_rx_flow_spec *fsp,
+				 bool v4)
+{
+	struct udphdr *udph, *udpm;
+
+	hdrs->proto_hdr[1].hdr_type = cpu_to_le32(VIRTCHNL2_PROTO_HDR_UDP);
+
+	udph = (struct udphdr *)hdrs->proto_hdr[1].buffer_spec;
+	udpm = (struct udphdr *)hdrs->proto_hdr[1].buffer_mask;
+
+	if (v4) {
+		udph->source = fsp->h_u.udp_ip4_spec.psrc;
+		udph->dest = fsp->h_u.udp_ip4_spec.pdst;
+		udpm->source = fsp->m_u.udp_ip4_spec.psrc;
+		udpm->dest = fsp->m_u.udp_ip4_spec.pdst;
+	} else {
+		udph->source = fsp->h_u.udp_ip6_spec.psrc;
+		udph->dest = fsp->h_u.udp_ip6_spec.pdst;
+		udpm->source = fsp->m_u.udp_ip6_spec.psrc;
+		udpm->dest = fsp->m_u.udp_ip6_spec.pdst;
+	}
+}
+
+static void idpf_fsteer_fill_tcp(struct virtchnl2_proto_hdrs *hdrs,
+				 struct ethtool_rx_flow_spec *fsp,
+				 bool v4)
+{
+	struct tcphdr *tcph, *tcpm;
+
+	hdrs->proto_hdr[1].hdr_type = cpu_to_le32(VIRTCHNL2_PROTO_HDR_TCP);
+
+	tcph = (struct tcphdr *)hdrs->proto_hdr[1].buffer_spec;
+	tcpm = (struct tcphdr *)hdrs->proto_hdr[1].buffer_mask;
+
+	if (v4) {
+		tcph->source = fsp->h_u.tcp_ip4_spec.psrc;
+		tcph->dest = fsp->h_u.tcp_ip4_spec.pdst;
+		tcpm->source = fsp->m_u.tcp_ip4_spec.psrc;
+		tcpm->dest = fsp->m_u.tcp_ip4_spec.pdst;
+	} else {
+		tcph->source = fsp->h_u.tcp_ip6_spec.psrc;
+		tcph->dest = fsp->h_u.tcp_ip6_spec.pdst;
+		tcpm->source = fsp->m_u.tcp_ip6_spec.psrc;
+		tcpm->dest = fsp->m_u.tcp_ip6_spec.pdst;
+	}
+}
+
+/**
+ * idpf_add_flow_steer - add a Flow Steering filter
+ * @netdev: network interface device structure
+ * @cmd: command to add Flow Steering filter
+ *
+ * Return: 0 on success and negative values for failure
+ */
+static int idpf_add_flow_steer(struct net_device *netdev,
+			       struct ethtool_rxnfc *cmd)
+{
+	struct idpf_fsteer_fltr *fltr, *parent = NULL, *f;
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_vport_user_config_data *user_config;
+	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
+	struct virtchnl2_flow_rule_add_del *rule;
+	struct idpf_vport_config *vport_config;
+	struct virtchnl2_rule_action_set *acts;
+	struct virtchnl2_flow_rule_info *info;
+	struct virtchnl2_proto_hdrs *hdrs;
+	struct idpf_vport *vport;
+	u32 flow_type, q_index;
+	u16 num_rxq;
+	int err;
+
+	vport = idpf_netdev_to_vport(netdev);
+	vport_config = vport->adapter->vport_config[np->vport_idx];
+	user_config = &vport_config->user_config;
+	num_rxq = user_config->num_req_rx_qs;
+
+	flow_type = fsp->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS);
+	if (flow_type != fsp->flow_type)
+		return -EINVAL;
+
+	if (!idpf_sideband_action_ena(vport, fsp) ||
+	    !idpf_sideband_flow_type_ena(vport, flow_type))
+		return -EOPNOTSUPP;
+
+	if (user_config->num_fsteer_fltrs > idpf_fsteer_max_rules(vport))
+		return -ENOSPC;
+
+	q_index = fsp->ring_cookie;
+	if (q_index >= num_rxq)
+		return -EINVAL;
+
+	rule = kzalloc(struct_size(rule, rule_info, 1), GFP_KERNEL);
+	if (!rule)
+		return -ENOMEM;
+
+	rule->vport_id = cpu_to_le32(vport->vport_id);
+	rule->count = cpu_to_le32(1);
+	info = &rule->rule_info[0];
+	info->rule_id = cpu_to_le32(fsp->location);
+
+	hdrs = &info->rule_cfg.proto_hdrs;
+	hdrs->tunnel_level = 0;
+	hdrs->count = cpu_to_le32(2);
+
+	acts = &info->rule_cfg.action_set;
+	acts->count = cpu_to_le32(1);
+	acts->actions[0].action_type = cpu_to_le32(VIRTCHNL2_ACTION_QUEUE);
+	acts->actions[0].act_conf.q_id = cpu_to_le32(q_index);
+
+	switch (flow_type) {
+	case UDP_V4_FLOW:
+		idpf_fsteer_fill_ipv4(hdrs, fsp);
+		idpf_fsteer_fill_udp(hdrs, fsp, true);
+		break;
+	case TCP_V4_FLOW:
+		idpf_fsteer_fill_ipv4(hdrs, fsp);
+		idpf_fsteer_fill_tcp(hdrs, fsp, true);
+		break;
+	default:
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = idpf_add_del_fsteer_filters(vport->adapter, rule, true);
+	if (err)
+		goto out;
+
+	if (info->status != cpu_to_le32(VIRTCHNL2_FLOW_RULE_SUCCESS)) {
+		err = -EIO;
+		goto out;
+	}
+
+	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
+	if (!fltr) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	fltr->loc = fsp->location;
+	fltr->q_index = q_index;
+	list_for_each_entry(f, &user_config->flow_steer_list, list) {
+		if (f->loc >= fltr->loc)
+			break;
+		parent = f;
+	}
+
+	if (parent)
+		list_add(&fltr->list, &parent->list);
+	else
+		list_add(&fltr->list, &user_config->flow_steer_list);
+
+	user_config->num_fsteer_fltrs++;
+
+out:
+	kfree(rule);
+	return err;
+}
+
+/**
+ * idpf_del_flow_steer - delete a Flow Steering filter
+ * @netdev: network interface device structure
+ * @cmd: command to add Flow Steering filter
+ *
+ * Return: 0 on success and negative values for failure
+ */
+static int idpf_del_flow_steer(struct net_device *netdev,
+			       struct ethtool_rxnfc *cmd)
+{
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_vport_user_config_data *user_config;
+	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
+	struct virtchnl2_flow_rule_add_del *rule;
+	struct idpf_vport_config *vport_config;
+	struct virtchnl2_flow_rule_info *info;
+	struct idpf_fsteer_fltr *f, *iter;
+	struct idpf_vport *vport;
+	int err;
+
+	vport = idpf_netdev_to_vport(netdev);
+	vport_config = vport->adapter->vport_config[np->vport_idx];
+	user_config = &vport_config->user_config;
+
+	if (!idpf_sideband_action_ena(vport, fsp))
+		return -EOPNOTSUPP;
+
+	rule = kzalloc(struct_size(rule, rule_info, 1), GFP_KERNEL);
+	if (!rule)
+		return -ENOMEM;
+
+	rule->vport_id = cpu_to_le32(vport->vport_id);
+	rule->count = cpu_to_le32(1);
+	info = &rule->rule_info[0];
+	info->rule_id = cpu_to_le32(fsp->location);
+
+	err = idpf_add_del_fsteer_filters(vport->adapter, rule, false);
+	if (err)
+		goto out;
+
+	if (info->status != cpu_to_le32(VIRTCHNL2_FLOW_RULE_SUCCESS)) {
+		err = -EIO;
+		goto out;
+	}
+
+	list_for_each_entry_safe(f, iter,
+				 &user_config->flow_steer_list, list) {
+		if (f->loc == fsp->location) {
+			list_del(&f->list);
+			kfree(f);
+			user_config->num_fsteer_fltrs--;
+			goto out;
+		}
+	}
+	err = -EINVAL;
+
+out:
+	kfree(rule);
+	return err;
+}
+
+static int idpf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
+{
+	int ret = -EOPNOTSUPP;
+
+	idpf_vport_ctrl_lock(netdev);
+	switch (cmd->cmd) {
+	case ETHTOOL_SRXCLSRLINS:
+		ret = idpf_add_flow_steer(netdev, cmd);
+		break;
+	case ETHTOOL_SRXCLSRLDEL:
+		ret = idpf_del_flow_steer(netdev, cmd);
+		break;
+	default:
+		break;
+	}
+
+	idpf_vport_ctrl_unlock(netdev);
+	return ret;
 }
 
 /**
@@ -1328,6 +1615,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
 	.get_sset_count		= idpf_get_sset_count,
 	.get_channels		= idpf_get_channels,
 	.get_rxnfc		= idpf_get_rxnfc,
+	.set_rxnfc		= idpf_set_rxnfc,
 	.get_rxfh_key_size	= idpf_get_rxfh_key_size,
 	.get_rxfh_indir_size	= idpf_get_rxfh_indir_size,
 	.get_rxfh		= idpf_get_rxfh,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 730a9c7a59f2..835d5ae8d40f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -768,6 +768,10 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 
 	if (idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS))
 		dflt_features |= NETIF_F_RXHASH;
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
+			    VIRTCHNL2_CAP_FLOW_STEER) &&
+	    idpf_vport_is_cap_ena(vport, VIRTCHNL2_VPORT_SIDEBAND_FLOW_STEER))
+		dflt_features |= NETIF_F_NTUPLE;
 	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_TX_CSUM_L4V4))
 		csum_offloads |= NETIF_F_IP_CSUM;
 	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_TX_CSUM_L4V6))
@@ -1491,6 +1495,7 @@ void idpf_init_task(struct work_struct *work)
 	spin_lock_init(&vport_config->mac_filter_list_lock);
 
 	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
+	INIT_LIST_HEAD(&vport_config->user_config.flow_steer_list);
 
 	err = idpf_check_supported_desc_ids(vport);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 895f98304efc..0a7d9dc9c726 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -918,6 +918,38 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 	return 0;
 }
 
+/**
+ * idpf_add_del_fsteer_filters - Send virtchnl add/del Flow Steering message
+ * @adapter: adapter info struct
+ * @rule: Flow steering rule to add/delete
+ * @add: True to add filter, FALSE to delete
+ *
+ * Send ADD/DELETE flow steering virtchnl message and receive the result.
+ *
+ * Return: 0 on success, negative on failure.
+ */
+int idpf_add_del_fsteer_filters(struct idpf_adapter *adapter,
+				struct virtchnl2_flow_rule_add_del *rule,
+				bool add)
+{
+	struct idpf_vc_xn_params xn_params = {};
+	ssize_t reply_sz;
+
+	xn_params.vc_op = add ? VIRTCHNL2_OP_ADD_FLOW_RULE :
+				VIRTCHNL2_OP_DEL_FLOW_RULE;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.async = false;
+	xn_params.send_buf.iov_base = rule;
+	xn_params.send_buf.iov_len =
+		le32_to_cpu(struct_size(rule, rule_info, rule->count));
+	xn_params.recv_buf.iov_base = rule;
+	xn_params.recv_buf.iov_len =
+		le32_to_cpu(struct_size(rule, rule_info, rule->count));
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	return reply_sz < 0 ? reply_sz : 0;
+}
+
 /**
  * idpf_vport_alloc_max_qs - Allocate max queues for a vport
  * @adapter: Driver specific private structure
@@ -3501,6 +3533,79 @@ bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
 		return !!(*cap_field & flag);
 }
 
+/**
+ * idpf_vport_is_cap_ena - Check if vport capability is enabled
+ * @vport: Private data struct
+ * @flag: flag(s) to check
+ *
+ * Return: true if the capability is supported, false otherwise
+ */
+bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag)
+{
+	struct virtchnl2_create_vport *vport_msg;
+
+	vport_msg = vport->adapter->vport_params_recvd[vport->idx];
+
+	return !!(vport_msg->vport_flags & le16_to_cpu(flag));
+}
+
+/**
+ * idpf_sideband_flow_type_ena - Check if steering is enabled for flow type
+ * @vport: Private data struct
+ * @flow_type: flow type to check (from ethtool.h)
+ *
+ * Return: true if sideband filters are allowed for @flow_type, false otherwise
+ */
+bool idpf_sideband_flow_type_ena(struct idpf_vport *vport, u32 flow_type)
+{
+	struct virtchnl2_create_vport *vport_msg;
+	__le64 caps;
+
+	vport_msg = vport->adapter->vport_params_recvd[vport->idx];
+	caps = vport_msg->sideband_flow_caps;
+
+	switch (flow_type) {
+	case TCP_V4_FLOW:
+		return !!(caps & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_TCP));
+	case UDP_V4_FLOW:
+		return !!(caps & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_UDP));
+	default:
+		return false;
+	}
+}
+
+/**
+ * idpf_sideband_action_ena - Check if steering is enabled for action
+ * @vport: Private data struct
+ * @fsp: flow spec
+ *
+ * Return: true if sideband filters are allowed for @fsp, false otherwise
+ */
+bool idpf_sideband_action_ena(struct idpf_vport *vport,
+			      struct ethtool_rx_flow_spec *fsp)
+{
+	struct virtchnl2_create_vport *vport_msg;
+	__le32 supp_actions;
+
+	vport_msg = vport->adapter->vport_params_recvd[vport->idx];
+	supp_actions = vport_msg->sideband_flow_actions;
+
+	/* Actions Drop/Wake are not supported */
+	if (fsp->ring_cookie == RX_CLS_FLOW_DISC ||
+	    fsp->ring_cookie == RX_CLS_FLOW_WAKE)
+		return false;
+
+	return !!(supp_actions & cpu_to_le64(VIRTCHNL2_ACTION_QUEUE));
+}
+
+unsigned int idpf_fsteer_max_rules(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport *vport_msg;
+
+	vport_msg = vport->adapter->vport_params_recvd[vport->idx];
+	return le32_to_cpu(vport_msg->flow_steer_max_rules);
+}
+
 /**
  * idpf_get_vport_id: Get vport id
  * @vport: virtual port structure
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 83da5d8da56b..ee348375db8c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -21,6 +21,12 @@ int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 int idpf_queue_reg_init(struct idpf_vport *vport);
 int idpf_vport_queue_ids_init(struct idpf_vport *vport);
 
+bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag);
+bool idpf_sideband_flow_type_ena(struct idpf_vport *vport, u32 flow_type);
+bool idpf_sideband_action_ena(struct idpf_vport *vport,
+			      struct ethtool_rx_flow_spec *fsp);
+unsigned int idpf_fsteer_max_rules(struct idpf_vport *vport);
+
 int idpf_recv_mb_msg(struct idpf_adapter *adapter);
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     u16 msg_size, u8 *msg, u16 cookie);
-- 
2.43.0

