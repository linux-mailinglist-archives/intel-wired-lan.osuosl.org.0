Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF07262CF6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Sep 2020 12:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58B0C87143;
	Wed,  9 Sep 2020 10:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9HvRYQkNrNB; Wed,  9 Sep 2020 10:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9772987148;
	Wed,  9 Sep 2020 10:22:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38AFA1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 10:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3130087065
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 10:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWlZD1O28ixr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Sep 2020 10:22:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F7FD8705C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 10:22:05 +0000 (UTC)
IronPort-SDR: OcC29gVg4fgwxKICZeAWXL2hxtQW8YBDakoisjjTivewhOD0l4lyzSJNaSrgx/p0r5h+Z/yjt8
 JcHbERl/gbBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="138344837"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="138344837"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 03:22:04 -0700
IronPort-SDR: 9leVjR8M6qnukXML+HcSl73opL4CQMXWQXGGoBr/HI8mVzhMjZtfuWArpWSnk8VTQaeCap+3Nx
 WcFqJPGimZiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="504690958"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2020 03:21:52 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Sep 2020 10:21:26 +0000
Message-Id: <20200909102126.14171-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] i40e: Add EEE status getting&setting
 implementation
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This patch implements EEE /*Energy Efficient Ethernet*/ status
getting&setting.
The i40e_get_eee() requesting PHY eee capabilities from firmware.
The i40e_set_eee() function requests PHY eee capabilities
from firmware and sets PHY eee advertising to full abilities or 0
depending whether eee is to be enabled or disabled.


Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Reviewed-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Verified-by: Mateusz Palczewski <mateusz.placzewski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 123 +++++++++++++++++-
 .../net/ethernet/intel/i40e/i40e_register.h   |   2 +
 2 files changed, 123 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e353c64..9079bec 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5435,12 +5435,131 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
 
 static int i40e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
 {
-	return -EOPNOTSUPP;
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_aq_get_phy_abilities_resp phy_cfg;
+	enum i40e_status_code status = 0;
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_pf *pf = vsi->back;
+	struct i40e_hw *hw = &pf->hw;
+
+	/* Get initial PHY capabilities */
+	status = i40e_aq_get_phy_capabilities(hw, false, true, &phy_cfg, NULL);
+	if (status)
+		return -EAGAIN;
+
+	/* Check whether NIC configuration is compatible with Energy Efficient
+	 * Ethernet (EEE) mode.
+	 */
+	if (phy_cfg.eee_capability == 0)
+		return -EOPNOTSUPP;
+
+	edata->supported = SUPPORTED_Autoneg;
+	edata->lp_advertised = edata->supported;
+
+	/* Get current configuration */
+	status = i40e_aq_get_phy_capabilities(hw, false, false, &phy_cfg, NULL);
+	if (status)
+		return -EAGAIN;
+
+	edata->advertised = phy_cfg.eee_capability ? SUPPORTED_Autoneg : 0U;
+	edata->eee_enabled = !!edata->advertised;
+	edata->tx_lpi_enabled = pf->stats.tx_lpi_status;
+
+	edata->eee_active = pf->stats.tx_lpi_status && pf->stats.rx_lpi_status;
+
+	return 0;
+}
+
+static int i40e_is_eee_param_supported(struct net_device *netdev,
+				       struct ethtool_eee *edata)
+{
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_pf *pf = vsi->back;
+	struct i40e_ethtool_not_used {
+		u32 value;
+		const char *name;
+	} param[] = {
+		{edata->advertised & ~SUPPORTED_Autoneg, "advertise"},
+		{edata->tx_lpi_timer, "tx-timer"},
+		{edata->tx_lpi_enabled != pf->stats.tx_lpi_status, "tx-lpi"}
+	};
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(param); i++) {
+		if (param[i].value) {
+			netdev_info(netdev,
+				    "EEE setting %s not supported\n",
+				    param[i].name);
+			return -EOPNOTSUPP;
+		}
+	}
+
+	return 0;
 }
 
 static int i40e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 {
-	return -EOPNOTSUPP;
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_aq_get_phy_abilities_resp abilities;
+	enum i40e_status_code status = I40E_SUCCESS;
+	struct i40e_aq_set_phy_config config;
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_pf *pf = vsi->back;
+	struct i40e_hw *hw = &pf->hw;
+	__le16 eee_capability;
+
+	/* Deny parameters we don't support */
+	if (i40e_is_eee_param_supported(netdev, edata))
+		return -EOPNOTSUPP;
+
+	/* Get initial PHY capabilities */
+	status = i40e_aq_get_phy_capabilities(hw, false, true, &abilities,
+					      NULL);
+	if (status)
+		return -EAGAIN;
+
+	/* Check whether NIC configuration is compatible with Energy Efficient
+	 * Ethernet (EEE) mode.
+	 */
+	if (abilities.eee_capability == 0)
+		return -EOPNOTSUPP;
+
+	/* Cache initial EEE capability */
+	eee_capability = abilities.eee_capability;
+
+	/* Get current PHY configuration */
+	status = i40e_aq_get_phy_capabilities(hw, false, false, &abilities,
+					      NULL);
+	if (status)
+		return -EAGAIN;
+
+	/* Cache current PHY configuration */
+	config.phy_type = abilities.phy_type;
+	config.phy_type_ext = abilities.phy_type_ext;
+	config.link_speed = abilities.link_speed;
+	config.abilities = abilities.abilities |
+			   I40E_AQ_PHY_ENABLE_ATOMIC_LINK;
+	config.eeer = abilities.eeer_val;
+	config.low_power_ctrl = abilities.d3_lpan;
+	config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
+			    I40E_AQ_PHY_FEC_CONFIG_MASK;
+
+	/* Set desired EEE state */
+	if (edata->eee_enabled) {
+		config.eee_capability = eee_capability;
+		config.eeer |= I40E_PRTPM_EEER_TX_LPI_EN_MASK;
+	} else {
+		config.eee_capability = 0;
+		config.eeer &= ~I40E_PRTPM_EEER_TX_LPI_EN_MASK;
+	}
+
+	/* Apply modified PHY configuration */
+	status = i40e_aq_set_phy_config(hw, &config, NULL);
+	if (status)
+		return -EAGAIN;
+
+	return 0;
 }
 
 static const struct ethtool_ops i40e_ethtool_recovery_mode_ops = {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index e97cc76..8d5c65b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -405,6 +405,8 @@
 #define I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_MASK I40E_MASK(0x1, I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_SHIFT)
 #define I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_SHIFT 31
 #define I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_MASK I40E_MASK(0x1, I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_SHIFT)
+#define I40E_PRTPM_EEER_TX_LPI_EN_SHIFT 16
+#define I40E_PRTPM_EEER_TX_LPI_EN_MASK  I40E_MASK(0x1, I40E_PRTPM_EEER_TX_LPI_EN_SHIFT)
 #define I40E_PRTPM_RLPIC 0x001E43A0 /* Reset: GLOBR */
 #define I40E_PRTPM_TLPIC 0x001E43C0 /* Reset: GLOBR */
 #define I40E_GLQF_FDCNT_0 0x00269BAC /* Reset: CORER */
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
