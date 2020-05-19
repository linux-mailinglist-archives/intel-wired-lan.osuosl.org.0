Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E883F1D9425
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 12:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42B3787ECA;
	Tue, 19 May 2020 10:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9WYwsTE0zJF; Tue, 19 May 2020 10:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E708B87E61;
	Tue, 19 May 2020 10:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AF591BF85D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 10:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EDF9203FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 10:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M+qIzuKE5ZdE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 10:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id F13AD20111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 10:16:46 +0000 (UTC)
IronPort-SDR: mQH0teyL0xaHE2jsaB29ySFPk7Lzkpo9+HlG/zIn3qv8FJwqJ86kPaaEsPqkGXnzh2CTFRYKVU
 gAyzjgZcLkeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 03:16:46 -0700
IronPort-SDR: 29FnYhL9tkHp+MWyCouOU0vBYchaBCyJZN3+wz0KmEstgygk0q0pqzQLRyhvRdCt26Z2QSei5p
 vdLS8FmALTRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; d="scan'208";a="288908635"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga004.fm.intel.com with ESMTP; 19 May 2020 03:16:45 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 13:16:44 +0300
Message-Id: <20200519101644.8246-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add initial EEE support
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

IEEE802.3az-2010 Energy Efficient Ethernet has been
approved as standard (September 2010) and the driver
can enable and disable it via ethtool.
Disable the feature by default on parts which support it.
Add enable/disable eee options.
tx-lpi, tx-timer and advertise not supported yet.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |   4 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  10 +++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 104 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_hw.h      |   1 +
 drivers/net/ethernet/intel/igc/igc_i225.c    |  61 ++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_i225.h    |   2 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  17 +++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |   5 ++
 8 files changed, 204 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5dbc5a156626..ce3ca6d4a6de 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -117,6 +117,9 @@ struct igc_ring {
 struct igc_adapter {
 	struct net_device *netdev;
 
+	struct ethtool_eee eee;
+	u16 eee_advert;
+
 	unsigned long state;
 	unsigned int flags;
 	unsigned int num_q_vectors;
@@ -256,6 +259,7 @@ extern char igc_driver_version[];
 #define IGC_FLAG_MEDIA_RESET		BIT(10)
 #define IGC_FLAG_MAS_ENABLE		BIT(12)
 #define IGC_FLAG_HAS_MSIX		BIT(13)
+#define IGC_FLAG_EEE			BIT(14)
 #define IGC_FLAG_VLAN_PROMISC		BIT(15)
 #define IGC_FLAG_RX_LEGACY		BIT(16)
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 80b664e64465..a7baadc49d84 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -512,4 +512,14 @@
 /* Maximum size of the MTA register table in all supported adapters */
 #define MAX_MTA_REG			128
 
+/* EEE defines */
+#define IGC_IPCNFG_EEE_2_5G_AN		0x00000010 /* IPCNFG EEE Ena 2.5G AN */
+#define IGC_IPCNFG_EEE_1G_AN		0x00000008 /* IPCNFG EEE Ena 1G AN */
+#define IGC_IPCNFG_EEE_100M_AN		0x00000004 /* IPCNFG EEE Ena 100M AN */
+#define IGC_EEER_EEE_NEG		0x20000000 /* EEE capability nego */
+#define IGC_EEER_TX_LPI_EN		0x00010000 /* EEER Tx LPI Enable */
+#define IGC_EEER_RX_LPI_EN		0x00020000 /* EEER Rx LPI Enable */
+#define IGC_EEER_LPI_FC			0x00040000 /* EEER Ena on Flow Cntrl */
+#define IGC_EEE_SU_LPI_CLK_STP		0x00800000 /* EEE LPI Clock Stop */
+
 #endif /* _IGC_DEFINES_H_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 2214a5d3a259..d93d7f2c19b9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -4,6 +4,7 @@
 /* ethtool support for igc */
 #include <linux/if_vlan.h>
 #include <linux/pm_runtime.h>
+#include <linux/mdio.h>
 
 #include "igc.h"
 #include "igc_diag.h"
@@ -1549,6 +1550,107 @@ static int igc_ethtool_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 	return 0;
 }
 
+static int igc_ethtool_get_eee(struct net_device *netdev,
+			       struct ethtool_eee *edata)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	u32 eeer;
+
+	if (!hw->dev_spec._base.eee_disable)
+		edata->advertised =
+			mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
+
+	*edata = adapter->eee;
+	edata->supported = (SUPPORTED_Autoneg);
+	netdev_info(netdev,
+		    "Supported EEE link modes: 100baseT/Full, 1000baseT/Full, 2500baseT/Full");
+
+	eeer = rd32(IGC_EEER);
+
+	/* EEE status on negotiated link */
+	if (eeer & IGC_EEER_EEE_NEG)
+		edata->eee_active = true;
+
+	if (eeer & IGC_EEER_TX_LPI_EN)
+		edata->tx_lpi_enabled = true;
+
+	edata->eee_enabled = !hw->dev_spec._base.eee_disable;
+
+	edata->advertised = SUPPORTED_Autoneg;
+	edata->lp_advertised = SUPPORTED_Autoneg;
+
+	/* Report correct negotiated EEE status for devices that
+	 * wrongly report EEE at half-duplex
+	 */
+	if (adapter->link_duplex == HALF_DUPLEX) {
+		edata->eee_enabled = false;
+		edata->eee_active = false;
+		edata->tx_lpi_enabled = false;
+		edata->advertised &= ~edata->advertised;
+	}
+
+	return 0;
+}
+
+static int igc_ethtool_set_eee(struct net_device *netdev,
+			       struct ethtool_eee *edata)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	struct ethtool_eee eee_curr;
+	s32 ret_val;
+
+	if (hw->phy.media_type != igc_media_type_copper)
+		return -EOPNOTSUPP;
+
+	memset(&eee_curr, 0, sizeof(struct ethtool_eee));
+
+	ret_val = igc_ethtool_get_eee(netdev, &eee_curr);
+	if (ret_val)
+		return ret_val;
+
+	if (eee_curr.eee_enabled) {
+		if (eee_curr.tx_lpi_enabled != edata->tx_lpi_enabled) {
+			netdev_err(netdev,
+				   "Setting EEE tx-lpi is not supported");
+			return -EINVAL;
+		}
+
+		/* Tx LPI timer is not implemented currently */
+		if (edata->tx_lpi_timer) {
+			netdev_err(netdev,
+				   "Setting EEE Tx LPI timer is not supported");
+			return -EINVAL;
+		}
+
+	} else if (!edata->eee_enabled) {
+		netdev_err(netdev,
+			   "Setting EEE options are not supported with EEE disabled");
+		return -EINVAL;
+	}
+
+	adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
+	if (hw->dev_spec._base.eee_disable != !edata->eee_enabled) {
+		hw->dev_spec._base.eee_disable = !edata->eee_enabled;
+		adapter->flags |= IGC_FLAG_EEE;
+
+		/* reset link */
+		if (netif_running(netdev))
+			igc_reinit_locked(adapter);
+		else
+			igc_reset(adapter);
+	}
+
+	if (ret_val) {
+		netdev_err(netdev,
+			   "Problem setting EEE advertisement options");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int igc_ethtool_begin(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
@@ -1830,6 +1932,8 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.set_channels		= igc_ethtool_set_channels,
 	.get_priv_flags		= igc_ethtool_get_priv_flags,
 	.set_priv_flags		= igc_ethtool_set_priv_flags,
+	.get_eee                = igc_ethtool_get_eee,
+	.set_eee                = igc_ethtool_set_eee,
 	.begin			= igc_ethtool_begin,
 	.complete		= igc_ethtool_complete,
 	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index af34ae310327..caa00cf93f81 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -191,6 +191,7 @@ struct igc_fc_info {
 
 struct igc_dev_spec_base {
 	bool clear_semaphore_once;
+	bool eee_disable;
 };
 
 struct igc_hw {
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index c25f555aaf82..3dafcd265e1c 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -488,3 +488,64 @@ s32 igc_init_nvm_params_i225(struct igc_hw *hw)
 	}
 	return 0;
 }
+
+/**
+ *  igc_set_eee_i225 - Enable/disable EEE support
+ *  @hw: pointer to the HW structure
+ *  @adv2p5G: boolean flag enabling 2.5G EEE advertisement
+ *  @adv1G: boolean flag enabling 1G EEE advertisement
+ *  @adv100M: boolean flag enabling 100M EEE advertisement
+ *
+ *  Enable/disable EEE based on setting in dev_spec structure.
+ *
+ **/
+s32 igc_set_eee_i225(struct igc_hw *hw, bool adv2p5G, bool adv1G,
+		     bool adv100M)
+{
+	u32 ipcnfg, eeer;
+
+	if (hw->mac.type != igc_i225 ||
+	    hw->phy.media_type != igc_media_type_copper)
+		goto out;
+	ipcnfg = rd32(IGC_IPCNFG);
+	eeer = rd32(IGC_EEER);
+
+	/* enable or disable per user setting */
+	if (!(hw->dev_spec._base.eee_disable)) {
+		u32 eee_su = rd32(IGC_EEE_SU);
+
+		if (adv100M)
+			ipcnfg |= IGC_IPCNFG_EEE_100M_AN;
+		else
+			ipcnfg &= ~IGC_IPCNFG_EEE_100M_AN;
+
+		if (adv1G)
+			ipcnfg |= IGC_IPCNFG_EEE_1G_AN;
+		else
+			ipcnfg &= ~IGC_IPCNFG_EEE_1G_AN;
+
+		if (adv2p5G)
+			ipcnfg |= IGC_IPCNFG_EEE_2_5G_AN;
+		else
+			ipcnfg &= ~IGC_IPCNFG_EEE_2_5G_AN;
+
+		eeer |= (IGC_EEER_TX_LPI_EN | IGC_EEER_RX_LPI_EN |
+			IGC_EEER_LPI_FC);
+
+		/* This bit should not be set in normal operation. */
+		if (eee_su & IGC_EEE_SU_LPI_CLK_STP)
+			hw_dbg("LPI Clock Stop Bit should not be set!");
+	} else {
+		ipcnfg &= ~(IGC_IPCNFG_EEE_2_5G_AN | IGC_IPCNFG_EEE_1G_AN |
+			IGC_IPCNFG_EEE_100M_AN);
+		eeer &= ~(IGC_EEER_TX_LPI_EN | IGC_EEER_RX_LPI_EN |
+			IGC_EEER_LPI_FC);
+	}
+	wr32(IGC_IPCNFG, ipcnfg);
+	wr32(IGC_EEER, eeer);
+	rd32(IGC_IPCNFG);
+	rd32(IGC_EEER);
+out:
+
+	return IGC_SUCCESS;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.h b/drivers/net/ethernet/intel/igc/igc_i225.h
index 7b66e1f9c0e6..04759e076a9e 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.h
+++ b/drivers/net/ethernet/intel/igc/igc_i225.h
@@ -9,5 +9,7 @@ void igc_release_swfw_sync_i225(struct igc_hw *hw, u16 mask);
 
 s32 igc_init_nvm_params_i225(struct igc_hw *hw);
 bool igc_get_flash_presence_i225(struct igc_hw *hw);
+s32 igc_set_eee_i225(struct igc_hw *hw, bool adv2p5G, bool adv1G,
+		     bool adv100M);
 
 #endif
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c4df7129f930..26dc437fa9da 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -105,6 +105,10 @@ void igc_reset(struct igc_adapter *adapter)
 	if (hw->mac.ops.init_hw(hw))
 		netdev_err(dev, "Error on hardware initialization");
 
+	/* Re-establish EEE setting */
+	if (hw->phy.media_type == igc_media_type_copper)
+		igc_set_eee_i225(hw, true, true, true);
+
 	if (!netif_running(adapter->netdev))
 		igc_power_down_link(adapter);
 
@@ -4259,6 +4263,15 @@ static void igc_watchdog_task(struct work_struct *work)
 				    (ctrl & IGC_CTRL_RFCE) ?  "RX" :
 				    (ctrl & IGC_CTRL_TFCE) ?  "TX" : "None");
 
+			/* disable EEE if enabled */
+			if ((adapter->flags & IGC_FLAG_EEE) &&
+			    adapter->link_duplex == HALF_DUPLEX) {
+				netdev_info(netdev,
+					    "EEE Disabled: unsupported at half duplex. Re-enable using ethtool when at full duplex\n");
+				adapter->hw.dev_spec._base.eee_disable = true;
+				adapter->flags &= ~IGC_FLAG_EEE;
+			}
+
 			/* check if SmartSpeed worked */
 			igc_check_downshift(hw);
 			if (phy->speed_downgraded)
@@ -5190,6 +5203,10 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev_info(netdev, "MAC: %pM", netdev->dev_addr);
 
 	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
+	/* Disable EEE for internal copper PHY devices */
+	hw->dev_spec._base.eee_disable = true;
+	adapter->flags &= ~IGC_FLAG_EEE;
+	igc_set_eee_i225(hw, false, false, false);
 
 	pm_runtime_put_noidle(&pdev->dev);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 7f999cfc9b39..9970242d0d75 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -249,6 +249,11 @@
 /* Wake Up packet memory */
 #define IGC_WUPM_REG(_i)	(0x05A00 + ((_i) * 4))
 
+/* Energy Efficient Ethernet "EEE" registers */
+#define IGC_EEER	0x0E30 /* Energy Efficient Ethernet "EEE"*/
+#define IGC_IPCNFG	0x0E38 /* Internal PHY Configuration */
+#define IGC_EEE_SU	0x0E34 /* EEE Setup */
+
 /* forward declaration */
 struct igc_hw;
 u32 igc_rd32(struct igc_hw *hw, u32 reg);
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
