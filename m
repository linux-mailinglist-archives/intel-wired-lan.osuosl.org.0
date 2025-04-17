Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 202BEA92D27
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 00:13:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0B6340D09;
	Thu, 17 Apr 2025 22:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VjYErwaxGq1F; Thu, 17 Apr 2025 22:13:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3CC640169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744927992;
	bh=1n3eMrDsU4wGpyuIy1rVnbZD8PG9IN1rRlvLN+5wnjs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pq1juhn3rVATfBrhblFnItzwqzED9VnMCLkUGpi3ml8XRo7ODjXj1b4R7lGVYG+AF
	 4lH0evQLCtR1IGflinKiYUNMAddTr3Ko2UIDE8xp/jCdhJ3QUzSCfLjbdjGiyiV+Op
	 ywBY5TdJRfWbtgIEl/CLQ+jRgSFp0g2tT9lbGMXpuRJQdYu9AREXQ93SGSl9DcrUJH
	 2xEGCJZdP2qof/WzUoPUeqbWH/1s2H4EqeOkxmkPoNL6GKYnX4OrSyNRIwjbIbX3HI
	 q0sTUmwbB9JRvdHUauYlhxkvvDOdaC3l8gTbw2QrQukhnLKnF2OeWLOsEZCcCzmgAu
	 8MD+wv+HL1Ruw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3CC640169;
	Thu, 17 Apr 2025 22:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E331922D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 22:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C89DA4103D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 22:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m77GukVIemqc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 22:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B508540F19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B508540F19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B508540F19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 22:13:10 +0000 (UTC)
X-CSE-ConnectionGUID: taGZ3M7ZQAmbM+p9TMtvmw==
X-CSE-MsgGUID: 76DiKbtnQnGRh3IewD4u0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="34168362"
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="34168362"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 15:13:10 -0700
X-CSE-ConnectionGUID: N2YAQbkGQSy/nP4L2f40OA==
X-CSE-MsgGUID: YQEWVdsZTnWeaQqnd4920g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="168148951"
Received: from mgoodin-mobl2.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 15:13:05 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Thu, 17 Apr 2025 16:12:38 -0600
Message-ID: <20250417221239.1390721-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250417221239.1390721-1-ahmed.zaki@intel.com>
References: <20250417221239.1390721-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744927991; x=1776463991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aL4ftnH2f4Z+fg07xyVhRuUtBuHj3lfcJZoqVPeaUyE=;
 b=gEZ/yjw+s17PKNDj1fEzeeZZeh3LwfJfGeAHN/Xzh/XTOxdtnNY8sTpq
 +neyDUR3Cl8pw/tdODKUgNjKNWIPS1T0MFzHase8lR3lCYTTCNfKgMH/0
 JvGJ5OQF5eqSapGRulLE5/AbhY3IVrrw4q5pvxlWLtyik1tOyH0WisBf3
 wWF1NI1QGjwZhyoJeUcNQo7ivJ8e4yFi1iMUkQTr4O5Q5UgFuSVELAqI8
 vEt9LhJs5cMJSS0LVXOJ86Ea2D0R99v10g8t42syVLj+QB9Z3Iz0/808O
 TNKISC2qjU5iEWlzP+FoBIeVjt/CTU+xDacLmuQjpAggVu4sY2T7R3w4y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gEZ/yjw+
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/3] idpf: add flow steering
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
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 104 ++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 5 files changed, 421 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index c21903310354..1c791f5ca601 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -252,6 +252,12 @@ struct idpf_port_stats {
 	struct virtchnl2_vport_stats vport_stats;
 };
 
+struct idpf_fsteer_fltr {
+	struct list_head list;
+	u32 loc;
+	unsigned int q_index;
+};
+
 /**
  * struct idpf_tx_tstamp_stats - Tx timestamp statistics
  * @tx_hwtstamp_lock: Lock to protect Tx tstamp stats
@@ -406,6 +412,8 @@ struct idpf_rss_data {
  *		      ethtool
  * @user_flags: User toggled config flags
  * @mac_filter_list: List of MAC filters
+ * @num_fsteer_fltrs: number of flow steering filters
+ * @flow_steer_list: list of flow steering filters
  *
  * Used to restore configuration after a reset as the vport will get wiped.
  */
@@ -417,6 +425,8 @@ struct idpf_vport_user_config_data {
 	u32 num_req_rxq_desc;
 	DECLARE_BITMAP(user_flags, __IDPF_USER_FLAGS_NBITS);
 	struct list_head mac_filter_list;
+	u16 num_fsteer_fltrs;
+	struct list_head flow_steer_list;
 };
 
 /**
@@ -878,4 +888,7 @@ int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
 u8 idpf_vport_get_hsplit(const struct idpf_vport *vport);
 bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
 
+int idpf_add_del_fsteer_filters(struct idpf_adapter *adapter,
+				struct virtchnl2_flow_rule_add_del *rule,
+				bool add);
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 7a4793749bc5..35e1d5694212 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -3,6 +3,7 @@
 
 #include "idpf.h"
 #include "idpf_ptp.h"
+#include "idpf_virtchnl.h"
 
 /**
  * idpf_get_rxnfc - command to get RX flow classification rules
@@ -13,26 +14,312 @@
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
@@ -1400,6 +1687,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
 	.get_sset_count		= idpf_get_sset_count,
 	.get_channels		= idpf_get_channels,
 	.get_rxnfc		= idpf_get_rxnfc,
+	.set_rxnfc		= idpf_set_rxnfc,
 	.get_rxfh_key_size	= idpf_get_rxfh_key_size,
 	.get_rxfh_indir_size	= idpf_get_rxfh_indir_size,
 	.get_rxfh		= idpf_get_rxfh,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index bab12ecb2df5..7d42f21c86b6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -755,6 +755,10 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 
 	if (idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS))
 		dflt_features |= NETIF_F_RXHASH;
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
+			    VIRTCHNL2_CAP_FLOW_STEER) &&
+	    idpf_vport_is_cap_ena(vport, VIRTCHNL2_VPORT_SIDEBAND_FLOW_STEER))
+		dflt_features |= NETIF_F_NTUPLE;
 	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_TX_CSUM_L4V4))
 		csum_offloads |= NETIF_F_IP_CSUM;
 	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_TX_CSUM_L4V6))
@@ -1481,6 +1485,7 @@ void idpf_init_task(struct work_struct *work)
 	spin_lock_init(&vport_config->mac_filter_list_lock);
 
 	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
+	INIT_LIST_HEAD(&vport_config->user_config.flow_steer_list);
 
 	err = idpf_check_supported_desc_ids(vport);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 06c33b638e60..0f827a184176 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -890,6 +890,37 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
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
+	int rule_count = le32_to_cpu(rule->count);
+	struct idpf_vc_xn_params xn_params = {};
+	ssize_t reply_sz;
+
+	xn_params.vc_op = add ? VIRTCHNL2_OP_ADD_FLOW_RULE :
+				VIRTCHNL2_OP_DEL_FLOW_RULE;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.async = false;
+	xn_params.send_buf.iov_base = rule;
+	xn_params.send_buf.iov_len = struct_size(rule, rule_info, rule_count);
+	xn_params.recv_buf.iov_base = rule;
+	xn_params.recv_buf.iov_len = struct_size(rule, rule_info, rule_count);
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	return reply_sz < 0 ? reply_sz : 0;
+}
+
 /**
  * idpf_vport_alloc_max_qs - Allocate max queues for a vport
  * @adapter: Driver specific private structure
@@ -3491,6 +3522,79 @@ bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
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
+	return !!(le16_to_cpu(vport_msg->vport_flags) & flag);
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
+	unsigned int supp_actions;
+
+	vport_msg = vport->adapter->vport_params_recvd[vport->idx];
+	supp_actions = le32_to_cpu(vport_msg->sideband_flow_actions);
+
+	/* Actions Drop/Wake are not supported */
+	if (fsp->ring_cookie == RX_CLS_FLOW_DISC ||
+	    fsp->ring_cookie == RX_CLS_FLOW_WAKE)
+		return false;
+
+	return !!(supp_actions & VIRTCHNL2_ACTION_QUEUE);
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
index 3522c1238ea2..165767705469 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -105,6 +105,12 @@ int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
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

