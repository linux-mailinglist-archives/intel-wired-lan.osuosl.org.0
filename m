Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E194C885B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 10:44:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67C7E60E89;
	Tue,  1 Mar 2022 09:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id msCgaJPSXTQ6; Tue,  1 Mar 2022 09:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D06560E77;
	Tue,  1 Mar 2022 09:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E93181BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 09:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5D3D400F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 09:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wHTxJOdZ99D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 09:44:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EECA9400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 09:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646127861; x=1677663861;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=hOXkljzCV2qZB0B9snmUR4wxonoIbjijF2U2y6dpYT0=;
 b=iaBL8MLEWG0p4hBtn9vCYKGRnGnVkKweURL8s+S+l6VeO7syO4AxEeSa
 MUb7iogZeP8Tgj7DClivXl+mOHPflrofq8Hn8bSWvdR9F8QyuIMS2Mvha
 3udFyNejWuYLPhD/4YG2XAxDta45zhKw4uSwE8cCPSigYpJjYHv5I90fS
 HeuKpT1ns3vUgyK8jcOlzg7hM/TosbAZ8zSDh0GlaoWuF+orB82twIgX2
 UZFJoxrEG5+PkVdywatw+7ySCLxXKRfTGbGejr+J0j2r93kXop/JhTrbA
 QLOIOYTLzUCrwVgIR/72r1Ot+fQDIbWnGrROrhBYQcFlaFYu5P5EDTe9s A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="240511258"
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; d="scan'208";a="240511258"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 01:44:21 -0800
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; d="scan'208";a="685664237"
Received: from unknown (HELO slawomir.imu.intel.com) ([10.237.94.16])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 01:44:20 -0800
From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Mar 2022 11:40:09 +0000
Message-Id: <20220301114010.2676-2-slawomirx.mrozowicz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220301114010.2676-1-slawomirx.mrozowicz@intel.com>
References: <20220301114010.2676-1-slawomirx.mrozowicz@intel.com>
Subject: [Intel-wired-lan] [PATCH net v2 2/3] ixgbe: add improvement for MDD
 response functionality
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
Cc: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 82599 PF driver disable VF driver after a special MDD event occurs.
Adds the option for administrators to control whether VFs are
automatically disabled after several MDD events.
The automatically disabling is now the default mode for 82599 PF driver,
as it is more reliable.

This addresses CVE-2021-33061.

Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  4 +++
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 21 ++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 28 ++++++++++++++++++-
 3 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index c9bf18086d9c..921a4d977d65 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -184,6 +184,7 @@ struct vf_data_storage {
 	u8 trusted;
 	int xcast_mode;
 	unsigned int vf_api;
+	u8 primary_abort_count;
 };
 
 enum ixgbevf_xcast_modes {
@@ -558,6 +559,8 @@ struct ixgbe_mac_addr {
 #define IXGBE_TRY_LINK_TIMEOUT (4 * HZ)
 #define IXGBE_SFP_POLL_JIFFIES (2 * HZ)	/* SFP poll every 2 seconds */
 
+#define IXGBE_PRIMARY_ABORT_LIMIT	5
+
 /* board specific private data structure */
 struct ixgbe_adapter {
 	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
@@ -616,6 +619,7 @@ struct ixgbe_adapter {
 #define IXGBE_FLAG2_RX_LEGACY			BIT(16)
 #define IXGBE_FLAG2_IPSEC_ENABLED		BIT(17)
 #define IXGBE_FLAG2_VF_IPSEC_ENABLED		BIT(18)
+#define IXGBE_FLAG2_AUTO_DISABLE_VF		BIT(19)
 
 	/* Tx fast path data */
 	int num_tx_queues;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index f70967c32116..628d0eb0599f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -138,6 +138,8 @@ static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
 	"legacy-rx",
 #define IXGBE_PRIV_FLAGS_VF_IPSEC_EN	BIT(1)
 	"vf-ipsec",
+#define IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF	BIT(2)
+	"mdd-disable-vf",
 };
 
 #define IXGBE_PRIV_FLAGS_STR_LEN ARRAY_SIZE(ixgbe_priv_flags_strings)
@@ -3510,6 +3512,9 @@ static u32 ixgbe_get_priv_flags(struct net_device *netdev)
 	if (adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)
 		priv_flags |= IXGBE_PRIV_FLAGS_VF_IPSEC_EN;
 
+	if (adapter->flags2 & IXGBE_FLAG2_AUTO_DISABLE_VF)
+		priv_flags |= IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF;
+
 	return priv_flags;
 }
 
@@ -3517,6 +3522,7 @@ static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	unsigned int flags2 = adapter->flags2;
+	unsigned int i;
 
 	flags2 &= ~IXGBE_FLAG2_RX_LEGACY;
 	if (priv_flags & IXGBE_PRIV_FLAGS_LEGACY_RX)
@@ -3526,6 +3532,21 @@ static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 	if (priv_flags & IXGBE_PRIV_FLAGS_VF_IPSEC_EN)
 		flags2 |= IXGBE_FLAG2_VF_IPSEC_ENABLED;
 
+	flags2 &= ~IXGBE_FLAG2_AUTO_DISABLE_VF;
+	if (priv_flags & IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF) {
+		if (adapter->hw.mac.type == ixgbe_mac_82599EB) {
+			/* Reset primary abort counter */
+			for (i = 0; i < adapter->num_vfs; i++)
+				adapter->vfinfo[i].primary_abort_count = 0;
+
+			flags2 |= IXGBE_FLAG2_AUTO_DISABLE_VF;
+		} else {
+			e_info(probe,
+			       "Cannot set private flags: Operation not supported\n");
+			return -EOPNOTSUPP;
+		}
+	}
+
 	if (flags2 != adapter->flags2) {
 		adapter->flags2 = flags2;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e553b1c18ee7..fde8d81ec818 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7613,6 +7613,27 @@ static void ixgbe_watchdog_flush_tx(struct ixgbe_adapter *adapter)
 }
 
 #ifdef CONFIG_PCI_IOV
+static void ixgbe_bad_vf_abort(struct ixgbe_adapter *adapter, u32 vf)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	if (adapter->hw.mac.type == ixgbe_mac_82599EB &&
+	    adapter->flags2 & IXGBE_FLAG2_AUTO_DISABLE_VF) {
+		adapter->vfinfo[vf].primary_abort_count++;
+		if (adapter->vfinfo[vf].primary_abort_count ==
+		    IXGBE_PRIMARY_ABORT_LIMIT) {
+			ixgbe_set_vf_link_state(adapter, vf,
+						IFLA_VF_LINK_STATE_DISABLE);
+			adapter->vfinfo[vf].primary_abort_count = 0;
+
+			e_info(drv,
+			       "Malicious Driver Detection event detected on PF %d VF %d MAC: %pM mdd-disable-vf=on",
+			       hw->bus.func, vf,
+			       adapter->vfinfo[vf].vf_mac_addresses);
+		}
+	}
+}
+
 static void ixgbe_check_for_bad_vf(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -7644,8 +7665,10 @@ static void ixgbe_check_for_bad_vf(struct ixgbe_adapter *adapter)
 			continue;
 		pci_read_config_word(vfdev, PCI_STATUS, &status_reg);
 		if (status_reg != IXGBE_FAILED_READ_CFG_WORD &&
-		    status_reg & PCI_STATUS_REC_MASTER_ABORT)
+		    status_reg & PCI_STATUS_REC_MASTER_ABORT) {
+			ixgbe_bad_vf_abort(adapter, vf);
 			pcie_flr(vfdev);
+		}
 	}
 }
 
@@ -10751,6 +10774,9 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_sw_init;
 
+	if (adapter->hw.mac.type == ixgbe_mac_82599EB)
+		adapter->flags2 |= IXGBE_FLAG2_AUTO_DISABLE_VF;
+
 	switch (adapter->hw.mac.type) {
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
