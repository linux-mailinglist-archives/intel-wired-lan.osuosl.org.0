Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BE886B449
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 427AF409F0;
	Wed, 28 Feb 2024 16:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKXj0N-BOnyz; Wed, 28 Feb 2024 16:11:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A99CC40809
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136692;
	bh=k75BY/My/UBUijEW2zTjvVdRtkt5PiCY1vhtTE+2++0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0kJgO2NN8QZ8Kh9wIUKngJ+dpf4vgxQOwl3NUI9omGnBYVNz6AkJOAX97zBKZ8MAp
	 xWh9XqiUkx4hC+J15a1h/i+53VtP+9dT53ibRgiIwhlO62rhtUck8zR0RTRcfogflq
	 kFpIKs8q33UrEEMFNYLyZg+5hW6eFJihadYYadMniYWpzphkgDKWpBjKBz9V+fwdog
	 tFBoEPw+6uoWGLWXVX4lex7eKvb57Ye+rUXSPSm642dbwoWbtKhfyapJ765bF3C9vO
	 T1SPZD2RFjTyEly5qhftvb8V7Qk7Od7UipC3hyfnGrH+lpjdridnxdxb47pVJZ4lyS
	 tAO+NwhCGvnFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A99CC40809;
	Wed, 28 Feb 2024 16:11:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D35A1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3B3741718
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uz4Nl-pdr3So for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9E93416E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9E93416E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9E93416E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3706619"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3706619"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7527773"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 Feb 2024 08:04:16 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 44B5D36827;
 Wed, 28 Feb 2024 16:04:13 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Feb 2024 16:59:48 +0100
Message-ID: <20240228155957.408036-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240228155957.408036-1-larysa.zaremba@intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136688; x=1740672688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kjxgC/aVSCUWtEC5c6qjFlGNa0rOxl4TrK/MLmqCnfk=;
 b=LVrmGLkroXrIXHsdh9TL3v91lgu5iL6p87b2vB3P6j8NYYCP/UYMmruy
 QUn1Jji7kzRsHax2rNMTQPzLtQs0nVDCZZrsms4Zveo5NFcsWH/GHkiLt
 fzf9vfDInbsLf/B+DJCNSqSfwePRR9HD4ZxeePc/8DaPVDgjXK75+zl/O
 8aLgo7yugjvkJFQFq9acZU1CDv+inIeFH0Y8/0HPlTcvx97wsOiQkWhgJ
 yp85+MXZ2gesZfCcgXhYKgSKqc3Zvd0+fs7kG8JR/zNO6A0+e+FWPWiK0
 HKSG9bz7U0mIU/i/lIk6IiNJ82bKt7mIPhpbfKoCYJbslxMnR8eIHUID4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LVrmGLkr
Subject: [Intel-wired-lan] [PATCH iwl-net 4/5] ice: Implement VF LLDP RX
 support on VF
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>

Add rx_lldp sysfs to allow user to disable (enabled by default) RX
LLDP packets on PF when FW LLDP agent is disabled and the support for VF
LLDP is present.
Configure LLDP multicast MAC address on trusted VF to allow it to receive
LLDP packets.

Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Co-developed-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 47 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h      |  4 ++
 drivers/net/ethernet/intel/ice/ice_main.c     | 58 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 59 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  6 ++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 11 ++++
 8 files changed, 191 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 365c03d1c462..992c0dfaab6f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -344,6 +344,8 @@ struct ice_vsi {
 	u32 tx_busy;
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
+	u8 lldp_macs;			/* counter for LLDP MACs added to VSI */
+	u8 rx_lldp_ena : 1;		/* Rx LLDP filter enabled */
 	u16 num_q_vectors;
 	/* tell if only dynamic irq allocation is allowed */
 	bool irq_dyn_alloc;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3cc364a4d682..8ae448af51e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1480,6 +1480,8 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			if (status)
 				dev_warn(dev, "Fail to init DCB\n");
 
+			ice_ena_all_vfs_rx_lldp(pf);
+
 			pf->dcbx_cap &= ~DCB_CAP_DCBX_LLD_MANAGED;
 			pf->dcbx_cap |= DCB_CAP_DCBX_HOST;
 		} else {
@@ -1493,10 +1495,10 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 				goto ethtool_exit;
 			}
 
-			/* Remove rule to direct LLDP packets to default VSI.
+			/* Remove rules to direct LLDP packets to PF/VF VSIs.
 			 * The FW LLDP engine will now be consuming them.
 			 */
-			ice_cfg_sw_lldp(vsi, false, false);
+			ice_dis_sw_lldp(pf);
 
 			/* AQ command to start FW LLDP agent will return an
 			 * error if the agent is already started
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a774bcdcc0c4..19f08f2e0139 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2039,6 +2039,50 @@ static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 	ice_vsi_set_dcb_tc_cfg(vsi);
 }
 
+/**
+ * ice_dis_sw_lldp - Disable SW LLDP on PFs and VFs
+ * @pf: pointer to PF structure
+ *
+ * Disable SW LLDP settings on each entity that can have it
+ */
+void ice_dis_sw_lldp(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi;
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	vsi = ice_get_main_vsi(pf);
+	ice_cfg_sw_lldp(vsi, false, false);
+
+	if (!test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
+		return;
+
+	ice_for_each_vf(pf, bkt, vf) {
+		vsi = ice_get_vf_vsi(vf);
+
+		if (vsi && vsi->rx_lldp_ena)
+			ice_cfg_sw_lldp(vsi, false, false);
+	}
+}
+
+/**
+ * ice_is_mc_lldp_eth_addr - Check if given MAC is an LLDP multicast address
+ * @mac: MAC address
+ *
+ * Check if given MAC is one of three possible LLDP multicast addresses.
+ */
+bool ice_is_mc_lldp_eth_addr(const u8 *mac)
+{
+	u8 lldp_mac_base[] = {0x01, 0x80, 0xc2, 0x00, 0x00};
+
+	/* Compare the first 5 octets of given and multicast LLDP address */
+	if (memcmp(mac, lldp_mac_base, (ETH_ALEN - 1) * sizeof(*mac)))
+		return false;
+
+	/* Compare the possible last octets of LLDP address and the given one */
+	return (mac[5] == 0x0e || mac[5] == 0x03 || mac[5] == 0x00);
+}
+
 /**
  * ice_lldp_fltr_remove_from_port - Remove a LLDP Rx filter from the port
  * @hw: port
@@ -2086,6 +2130,9 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 
 		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX,
 				  ICE_FWD_TO_VSI);
+
+		if (!status)
+			vsi->rx_lldp_ena = create;
 	}
 
 	if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0c77d581416a..befd7dec7e55 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -68,6 +68,10 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
+void ice_dis_sw_lldp(struct ice_pf *pf);
+
+bool ice_is_mc_lldp_eth_addr(const u8 *mac);
+
 int ice_set_link(struct ice_vsi *vsi, bool ena);
 
 void ice_vsi_delete(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9c2c8637b4a7..af3611055e60 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4704,9 +4704,60 @@ void ice_deinit_dev(struct ice_pf *pf)
 	ice_clear_interrupt_scheme(pf);
 }
 
+static ssize_t rx_lldp_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct ice_pf *pf = dev_get_drvdata(dev);
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+
+	return sysfs_emit(buf, "%u\n", vsi->rx_lldp_ena);
+}
+
+static ssize_t rx_lldp_store(struct device *dev, struct device_attribute *attr,
+			     const char *buf, size_t count)
+{
+	struct ice_pf *pf = dev_get_drvdata(dev);
+	struct ice_vsi *vsi;
+	bool ena;
+	int err;
+
+	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
+		dev_err(dev, "Toggling Rx LLDP for PF is only allowed when FW LLDP Agent is disabled");
+		return -EPERM;
+	}
+
+	err = kstrtobool(buf, &ena);
+	if (err)
+		return -EINVAL;
+
+	vsi = ice_get_main_vsi(pf);
+
+	if (ena == vsi->rx_lldp_ena) {
+		dev_dbg(dev, "Rx LLDP already %sabled", ena ? "en" : "dis");
+		return count;
+	}
+
+	ice_cfg_sw_lldp(vsi, false, ena);
+
+	return count;
+}
+
+static DEVICE_ATTR_RW(rx_lldp);
+
+static int ice_init_rx_lldp_sysfs(struct ice_pf *pf)
+{
+	return device_create_file(ice_pf_to_dev(pf), &dev_attr_rx_lldp);
+}
+
+static void ice_deinit_rx_lldp_sysfs(struct ice_pf *pf)
+{
+	device_remove_file(ice_pf_to_dev(pf), &dev_attr_rx_lldp);
+}
+
 static void ice_init_features(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
+	int err;
 
 	if (ice_is_safe_mode(pf))
 		return;
@@ -4734,6 +4785,11 @@ static void ice_init_features(struct ice_pf *pf)
 		ice_cfg_lldp_mib_change(&pf->hw, true);
 	}
 
+	err = ice_init_rx_lldp_sysfs(pf);
+	if (err)
+		dev_err(dev, "could not init rx_lldp sysfs entry, err: %d",
+			err);
+
 	if (ice_init_lag(pf))
 		dev_warn(dev, "Failed to init link aggregation support\n");
 
@@ -4757,6 +4813,8 @@ static void ice_deinit_features(struct ice_pf *pf)
 		ice_dpll_deinit(pf);
 	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
 		xa_destroy(&pf->eswitch.reprs);
+
+	ice_deinit_rx_lldp_sysfs(pf);
 }
 
 static void ice_init_wakeup(struct ice_pf *pf)
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 21d22e3ad0ba..2de6ef3661cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -518,6 +518,65 @@ static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
 		vsi->agg_node->num_vsis++;
 }
 
+/**
+ * ice_ena_vf_rx_lldp
+ * @vf: VF to configure Rx LLDP for
+ *
+ * Configure Rx filters for VF to receive LLDP
+ */
+int ice_ena_vf_rx_lldp(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+
+	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
+		dev_err(ice_pf_to_dev(pf), "FW LLDP agent is enabled, cannot enable Rx LLDP on VF %d\n",
+			vf->vf_id);
+		return -EPERM;
+	}
+
+	if (!vf->trusted) {
+		dev_dbg(ice_pf_to_dev(pf), "VF %d is not trusted - cannot configure Rx LLDP filter.\n",
+			vf->vf_id);
+		return -EPERM;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -ENOENT;
+
+	if (vsi->rx_lldp_ena)
+		return 0;
+
+	ice_cfg_sw_lldp(vsi, false, true);
+
+	return 0;
+}
+
+/**
+ * ice_ena_all_vfs_rx_lldp - Re-add RX LLDP filter on applicable VFs.
+ * @pf: ptr to PF
+ *
+ * That is in case when fw-lldp-agent is toggled and LLDP multicast addresses
+ * are added to the interface.
+ * RX LLDP filter will be added for trusted VFs only.
+ */
+void ice_ena_all_vfs_rx_lldp(struct ice_pf *pf)
+{
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	if (!test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
+		return;
+
+	ice_for_each_vf(pf, bkt, vf) {
+		struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+		if (vsi && vsi->lldp_macs > 0 && !vsi->rx_lldp_ena)
+			ice_ena_vf_rx_lldp(vf);
+	}
+}
+
 /**
  * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
  * @vf: VF to rebuild host configuration on
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 48f4cdbd6d27..81f734f2ae41 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -232,6 +232,8 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int ice_reset_vf(struct ice_vf *vf, u32 flags);
 void ice_reset_all_vfs(struct ice_pf *pf);
 struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi);
+void ice_ena_all_vfs_rx_lldp(struct ice_pf *pf);
+int ice_ena_vf_rx_lldp(struct ice_vf *vf);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -307,6 +309,10 @@ ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi)
 {
 	return NULL;
 }
+
+static inline void ice_ena_all_vfs_rx_lldp(struct ice_pf *pf)
+{
+}
 #endif /* !CONFIG_PCI_IOV */
 
 #endif /* _ICE_VF_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index c925813ec9ca..259fcbb0f397 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1958,6 +1958,11 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 		return ret;
 	} else {
 		vf->num_mac++;
+
+		if (ice_is_mc_lldp_eth_addr(mac_addr)) {
+			vsi->lldp_macs++;
+			ice_ena_vf_rx_lldp(vf);
+		}
 	}
 
 	ice_vfhw_mac_add(vf, vc_ether_addr);
@@ -2049,6 +2054,12 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 		return -EIO;
 	}
 
+	if (ice_is_mc_lldp_eth_addr(mac_addr))
+		vsi->lldp_macs--;
+
+	if (vsi->rx_lldp_ena && !vsi->lldp_macs)
+		ice_cfg_sw_lldp(vsi, false, false);
+
 	ice_vfhw_mac_del(vf, vc_ether_addr);
 
 	vf->num_mac--;
-- 
2.43.0

