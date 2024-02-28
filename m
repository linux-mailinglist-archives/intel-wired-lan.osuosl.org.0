Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC2086B44D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C342241770;
	Wed, 28 Feb 2024 16:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uU2aWBP5Uwax; Wed, 28 Feb 2024 16:11:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2E7441747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136696;
	bh=l6jluIBiYyAZT+5MxIjbRkWwNlF/wEafoYy7rn3oXQI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RX2V+yxZuA8Vfep0+egshrTE6oisFFpOr3xSn3IlT0+QTAkypu5+FWSHFku1xWue2
	 No9nm3nxA+6NPBua0yimf0O4pwp0/EC/vVhBvxo3Uy+f4rU+/KBV9LnWtz1MTcehdO
	 Qatewj2tWRoH8lXCyZCC+tE52NQkS1r91Tlo2BbnSbvxubK2Hlh7rwANZYRKhGJjP6
	 pV1v828b97DLsINDCrqTPJ4o8JcJ12cp0HbgFRkcw3kJG8UiombYyp6skGBtt913yO
	 sKkTNiQz9jKIhb8fSI7X8UNG2oJZ0BP+/RqxZDn2tO8CGlUjQgNl4N6d/3OVqcbvOu
	 vgxFdCTjN1L+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2E7441747;
	Wed, 28 Feb 2024 16:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE911BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C96F1409F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wm9c4kA7n8nd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BADCA416E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BADCA416E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BADCA416E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3706639"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3706639"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:04:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7527818"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 Feb 2024 08:04:18 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 87BD536825;
 Wed, 28 Feb 2024 16:04:15 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Feb 2024 16:59:49 +0100
Message-ID: <20240228155957.408036-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240228155957.408036-1-larysa.zaremba@intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136689; x=1740672689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bjrp1tTlD6ezzWfPdYM+Tqz2X4qeW6q9D/krqY8Q3+k=;
 b=iBI/QYF5V3kIiB1+S2AvF0gRJmuDy8UB4WYEF/n/V64QGhW6WNlzSYt0
 PwByZNbuC22BWXzxn3+4jzxDsv5whg6708YilnAeq+gBAG/5syDBnnQZF
 FkH2ud43uLETDY/Eeb1eDRCoAFStEnhdPHNA/9812rUgrKXa179QofhIz
 XE1QPs4BQrRfr5/9Msi4FnJ9ixBgHVvir+qnojuMaFoohViy9DNoUWut+
 xQ3NyHYzMKz10R3EOuhHcMn2uZkBH4ttNkZanbYiuKmC4s+x3br8Yb8hH
 sCL9+FvXXv8UqmSirGzgF16HsbfSPy8QGTpCdMohyQHUnhDPuVORuGI5+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iBI/QYF5
Subject: [Intel-wired-lan] [PATCH iwl-net 5/5] ice: Implement VF LLDP TX
 support for VF
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

Add option to enable transmit LLDP on single trusted VF via a sysfs entry,
for example:

echo '1' > /sys/class/net/<PF_IFNAME>/device/virtfn0/transmit_lldp

Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Co-developed-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
 drivers/net/ethernet/intel/ice/ice_sriov.c  |   4 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 163 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  14 ++
 4 files changed, 184 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 19f08f2e0139..32b1ed74bfa4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2062,6 +2062,9 @@ void ice_dis_sw_lldp(struct ice_pf *pf)
 
 		if (vsi && vsi->rx_lldp_ena)
 			ice_cfg_sw_lldp(vsi, false, false);
+
+		if (vf->transmit_lldp)
+			ice_handle_vf_tx_lldp(vf, false);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a94a1c48c3de..0fe07330cc1a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -832,6 +832,10 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 		vf->vfdev = vfdev;
 		vf->vf_sw_id = pf->first_sw;
 
+		err = ice_init_vf_sysfs(vf);
+		if (err)
+			goto err_free_entries;
+
 		pci_dev_get(vfdev);
 
 		/* set default number of MSI-X */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2de6ef3661cf..244d0ac7c9c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -577,6 +577,165 @@ void ice_ena_all_vfs_rx_lldp(struct ice_pf *pf)
 	}
 }
 
+static bool ice_is_transmit_lldp_enabled(struct ice_pf *pf)
+{
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	ice_for_each_vf(pf, bkt, vf) {
+		if (vf->transmit_lldp)
+			return true;
+	}
+
+	return false;
+}
+
+/**
+ * ice_handle_vf_tx_lldp - enable/disable LLDP TX on VF
+ * @vf: VF to configure Tx LLDP for
+ * @ena: Enable or disable Tx LLDP switch rule
+ *
+ * Configure Tx filters for VF to transmit LLDP
+ */
+int ice_handle_vf_tx_lldp(struct ice_vf *vf, bool ena)
+{
+	void (*allow_override)(struct ice_vsi_ctx *ctx);
+	struct ice_vsi *vsi, *main_vsi;
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	bool prev_ena;
+
+	dev = ice_pf_to_dev(pf);
+	vsi = ice_get_vf_vsi(vf);
+	main_vsi = ice_get_main_vsi(pf);
+	if (!vsi || !main_vsi)
+		return -ENOENT;
+
+	if (ena && test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
+		dev_err(dev, "Transmit LLDP VF is only allowed when FW LLDP Agent is disabled");
+		return -EPERM;
+	}
+
+	if (ena && ice_is_transmit_lldp_enabled(pf)) {
+		dev_err(dev, "Only a single VF per port is allowed to transmit LLDP packets, ignoring the settings");
+		return -EPERM;
+	}
+
+	allow_override = ena ? ice_vsi_ctx_set_allow_override
+			     : ice_vsi_ctx_clear_allow_override;
+	prev_ena = vsi->info.sec_flags & ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
+
+	if (ice_vsi_update_security(vsi, allow_override))
+		return -ENOENT;
+
+	/* If VF can transmit LLDP, then PF cannot and vice versa */
+	allow_override = ena ? ice_vsi_ctx_clear_allow_override
+			     : ice_vsi_ctx_set_allow_override;
+
+	if (ice_vsi_update_security(main_vsi, allow_override)) {
+		allow_override = prev_ena  ? ice_vsi_ctx_set_allow_override
+					   : ice_vsi_ctx_clear_allow_override;
+		ice_vsi_update_security(vsi, allow_override);
+		return -ENOENT;
+	}
+
+	vf->transmit_lldp = ena;
+	return 0;
+}
+
+static ssize_t ice_transmit_lldp_vf_attr_show(struct device *dev,
+					      struct device_attribute *attr,
+					      char *buf)
+{
+	struct ice_vf *vf = ice_get_vf_by_dev(dev);
+
+	if (!vf)
+		return -ENOENT;
+
+	return sysfs_emit(buf, "%u\n", vf->transmit_lldp);
+}
+
+static ssize_t ice_transmit_lldp_vf_attr_store(struct device *dev,
+					       struct device_attribute *attr,
+					       const char *buf, size_t count)
+{
+	struct pci_dev *vfdev = container_of(dev, struct pci_dev, dev);
+	struct ice_vf *vf = ice_get_vf_by_dev(dev);
+	struct pci_dev *pdev = vfdev->physfn;
+	struct ice_pf *pf;
+	bool ena;
+	int err;
+
+	if (!vf)
+		return -ENOENT;
+
+	pf = pci_get_drvdata(pdev);
+	if (!pf)
+		return -ENOENT;
+
+	err = kstrtobool(buf, &ena);
+	if (err)
+		return -EINVAL;
+
+	if (ena == vf->transmit_lldp) {
+		dev_dbg(dev, "Transmit LLDP value already set for VF %d",
+			vf->vf_id);
+		return count;
+	}
+
+	err = ice_handle_vf_tx_lldp(vf, ena);
+	if (err)
+		return err;
+
+	return count;
+}
+
+static int ice_init_vf_transmit_lldp_sysfs(struct ice_vf *vf)
+{
+	struct device_attribute tmp = __ATTR(transmit_lldp, 0644,
+					     ice_transmit_lldp_vf_attr_show,
+					     ice_transmit_lldp_vf_attr_store);
+
+	vf->transmit_lldp_attr = tmp;
+
+	return device_create_file(&vf->vfdev->dev, &vf->transmit_lldp_attr);
+}
+
+/**
+ * ice_init_vf_sysfs - Initialize sysfs entries for a VF
+ * @vf: VF to init sysfs for
+ *
+ * Initialize sysfs entries (accessible from the host) for a VF
+ */
+int ice_init_vf_sysfs(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	int err = 0;
+
+	if (!vf->vfdev) {
+		dev_err(dev, "%s: no vfdev", __func__);
+		return -ENOENT;
+	}
+
+	err = ice_init_vf_transmit_lldp_sysfs(vf);
+	if (err)
+		dev_err(dev, "could not init transmit_lldp sysfs entry, err: %d",
+			err);
+
+	return err;
+}
+
+static int ice_vf_apply_tx_lldp(struct ice_vf *vf)
+{
+	if (!vf->transmit_lldp)
+		return 0;
+
+	/* Disable it so it can be applied again. */
+	vf->transmit_lldp = false;
+
+	return ice_handle_vf_tx_lldp(vf, true);
+}
+
 /**
  * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
  * @vf: VF to rebuild host configuration on
@@ -607,6 +766,10 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
 			vf->vf_id);
 
+	if (ice_vf_apply_tx_lldp(vf))
+		dev_err(dev, "failed to rebuild transmit LLDP configuration for VF %d\n",
+			vf->vf_id);
+
 	/* rebuild aggregator node config for main VF VSI */
 	ice_vf_rebuild_aggregator_node_cfg(vsi);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 81f734f2ae41..63e53591541e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -104,9 +104,11 @@ struct ice_vf {
 	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
 	struct virtchnl_vlan_caps vlan_v2_caps;
 	struct ice_mbx_vf_info mbx_info;
+	struct device_attribute transmit_lldp_attr;
 	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
 	u8 trusted:1;
 	u8 spoofchk:1;
+	u8 transmit_lldp:1;
 	u8 link_forced:1;
 	u8 link_up:1;			/* only valid if VF link is forced */
 	/* VSI indices - actual VSI pointers are maintained in the PF structure
@@ -234,6 +236,8 @@ void ice_reset_all_vfs(struct ice_pf *pf);
 struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi);
 void ice_ena_all_vfs_rx_lldp(struct ice_pf *pf);
 int ice_ena_vf_rx_lldp(struct ice_vf *vf);
+int ice_init_vf_sysfs(struct ice_vf *vf);
+int ice_handle_vf_tx_lldp(struct ice_vf *vf, bool ena);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -313,6 +317,16 @@ ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi)
 static inline void ice_ena_all_vfs_rx_lldp(struct ice_pf *pf)
 {
 }
+
+static inline int ice_handle_vf_tx_lldp(struct ice_vf *vf, bool ena)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int ice_init_vf_sysfs(struct ice_vf *vf)
+{
+	return 0;
+}
 #endif /* !CONFIG_PCI_IOV */
 
 #endif /* _ICE_VF_LIB_H_ */
-- 
2.43.0

