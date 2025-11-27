Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2FFC8CCD4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 05:30:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 775528232C;
	Thu, 27 Nov 2025 04:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RhYDcUFvznRJ; Thu, 27 Nov 2025 04:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A974582339
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764217856;
	bh=6npSUhzWfJyihXsG6deh98KI1plU2MLohAC4HM7XJSI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nlfeW0tqUAjRDphesjJHRaIEXz/c4i2+xjsJmQYuUODiq/xjC9flzmo9icB2PFQiH
	 1gMOs1ldyH9TE7Btntsadk3zLrWPQ/mOvVChrjoN1ksne6YfWIua9r1N4xAalZG5EN
	 C0wMPBFOoVUDkIqGKd09snmmjOJfuqKNA8fVov0wOcaqKXbWwGQrjB1Uckex/9yFFO
	 AAzatoQ5wEGrv7xrwt+PwOmfkoNdtfbebit/oDS0XZjSgiX/bAvqfNmrpkYyozm1zm
	 4AgAXHuCzMOGe3eN0FK85kBdQZzrYq5AJeOcAf8uIgKe/Ue4bCN4iGYqIQi4sMMcXZ
	 62+lBhTpr0Y8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A974582339;
	Thu, 27 Nov 2025 04:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 370552A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 04:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29466822A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 04:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AjoV0JpETLR3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 04:30:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4FF548229D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FF548229D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FF548229D
 for <intel-wired-lan@osuosl.org>; Thu, 27 Nov 2025 04:30:53 +0000 (UTC)
X-CSE-ConnectionGUID: JEH0/IcGQ8OUjXfuKitP8Q==
X-CSE-MsgGUID: zbcUi8cOQYyHnJfszv+d5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77625022"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77625022"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 20:30:53 -0800
X-CSE-ConnectionGUID: kfPQP0dAQYyncKYK+1Rl3g==
X-CSE-MsgGUID: L5MmAWq4QgenPI/dZaLjCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="198079068"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 20:30:51 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org, netdev@vger.kernel.org, andrew+netdev@lunn.ch,
 horms@kernel.org, kuba@kernel.org, edumazet@google.com,
 davem@davemloft.net, pabeni@redhat.com
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Thu, 27 Nov 2025 06:30:47 +0200
Message-Id: <20251127043047.728116-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764217854; x=1795753854;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=thAE5Beno2ivMQNVSCVf47IBVxGLTgHfsFGBA8RJM7c=;
 b=m1u2KEfaQ+vVBPIDOBCyVUllKlWDkxABpIpi8RwOHAbIWh6l5bW8wFfb
 KusPzo/ghaf64nTQ9pvZ8FJjXOK6rNBpTJ5w5FezC6Ho8v0Gn1bwPv9Xy
 /0EBnl61TwKZ6J9EiKlkFROcQ+rtWxPxVHi7YX5wHwo5sBetThtpeuzLC
 tHoWbjvKGCGYLt20FTrOahRdNX0DF+R3xUcTVIxUQ49cb+Zt7gtE3sboB
 YzjrMOMEjzfvrYFJD1ziEMATrRoQjAkJAy1CP0FSdAUUqey22XVTvp4n9
 oPCpV3moNb2aUI1Jb6c4b66nAokBp1xBnyXPnlNZ9mNwyqRo+GcWvJALv
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m1u2KEfa
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce private
 flag to override XTAL clock frequency
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

On some TGP and ADP systems, the hardware XTAL clock is incorrectly
set to 24MHz instead of the expected 38.4MHz, causing PTP timer
inaccuracies. Since affected systems cannot be reliably detected,
introduce an ethtool private flag that allows user-space to override
the XTAL clock frequency.

Tested on an affected system using the phc_ctl tool:

Without the flag:
  sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
  phc_ctl[...] clock time is 16.000541250 (expected ~10s)

With the flag:
  sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
  phc_ctl[...] clock time is 9.984407212 (expected ~10s)

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  7 ++--
 drivers/net/ethernet/intel/e1000e/ethtool.c | 39 ++++++++++-----------
 drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 +--
 drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++---
 4 files changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index aa08f397988e..63145bf5adcf 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -310,6 +310,7 @@ struct e1000_adapter {
 
 	unsigned int flags;
 	unsigned int flags2;
+	unsigned int priv_flags;
 	struct work_struct downshift_task;
 	struct work_struct update_phy_task;
 	struct work_struct print_hang_task;
@@ -460,8 +461,10 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
 #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
 #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
 #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
-#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
-#define FLAG2_DISABLE_K1		   BIT(16)
+
+#define PRIV_FLAG_ENABLE_S0IX_FLOWS	   BIT(0)
+#define PRIV_FLAG_DISABLE_K1		   BIT(1)
+#define PRIV_FLAG_38_4MHZ_XTAL_CLK	   BIT(2)
 
 #define E1000_RX_DESC_PS(R, i)	    \
 	(&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index cee57a2149ab..3415c38e1d9a 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -24,10 +24,9 @@ struct e1000_stats {
 };
 
 static const char e1000e_priv_flags_strings[][ETH_GSTRING_LEN] = {
-#define E1000E_PRIV_FLAGS_S0IX_ENABLED	BIT(0)
 	"s0ix-enabled",
-#define E1000E_PRIV_FLAGS_DISABLE_K1	BIT(1)
 	"disable-k1",
+	"force_38_4mhz_xtal_clock",
 };
 
 #define E1000E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(e1000e_priv_flags_strings)
@@ -2298,49 +2297,49 @@ static int e1000e_get_ts_info(struct net_device *netdev,
 static u32 e1000e_get_priv_flags(struct net_device *netdev)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
-	u32 priv_flags = 0;
 
-	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
-		priv_flags |= E1000E_PRIV_FLAGS_S0IX_ENABLED;
-
-	if (adapter->flags2 & FLAG2_DISABLE_K1)
-		priv_flags |= E1000E_PRIV_FLAGS_DISABLE_K1;
-
-	return priv_flags;
+	return adapter->priv_flags;
 }
 
 static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
-	unsigned int flags2 = adapter->flags2;
+	unsigned int temp_flags = 0;
 	unsigned int changed;
 
-	flags2 &= ~(FLAG2_ENABLE_S0IX_FLOWS | FLAG2_DISABLE_K1);
-
-	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
+	if (priv_flags & PRIV_FLAG_ENABLE_S0IX_FLOWS) {
 		if (hw->mac.type < e1000_pch_cnp) {
 			e_err("S0ix is not supported on this device\n");
 			return -EINVAL;
 		}
 
-		flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+		temp_flags |= PRIV_FLAG_ENABLE_S0IX_FLOWS;
 	}
 
-	if (priv_flags & E1000E_PRIV_FLAGS_DISABLE_K1) {
+	if (priv_flags & PRIV_FLAG_DISABLE_K1) {
 		if (hw->mac.type < e1000_ich8lan) {
 			e_err("Disabling K1 is not supported on this device\n");
 			return -EINVAL;
 		}
 
-		flags2 |= FLAG2_DISABLE_K1;
+		temp_flags |= PRIV_FLAG_DISABLE_K1;
+	}
+
+	if (priv_flags & PRIV_FLAG_38_4MHZ_XTAL_CLK) {
+		if (hw->mac.type != e1000_pch_tgp && hw->mac.type != e1000_pch_adp) {
+			e_err("Forcing 38.4MHz frequency on the XTAL is not supported on this device\n");
+			return -EINVAL;
+		}
+
+		temp_flags |= PRIV_FLAG_38_4MHZ_XTAL_CLK;
 	}
 
-	changed = adapter->flags2 ^ flags2;
+	changed = adapter->priv_flags ^ temp_flags;
 	if (changed)
-		adapter->flags2 = flags2;
+		adapter->priv_flags = temp_flags;
 
-	if (changed & FLAG2_DISABLE_K1) {
+	if (changed & (PRIV_FLAG_DISABLE_K1 | PRIV_FLAG_38_4MHZ_XTAL_CLK)) {
 		/* reset the hardware to apply the changes */
 		while (test_and_set_bit(__E1000_RESETTING,
 					&adapter->state))
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 0ff8688ac3b8..8669dfaf38ea 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -302,7 +302,7 @@ static s32 e1000_reconfigure_k1_params(struct e1000_hw *hw)
 	s32 ret_val;
 
 	if (hw->mac.type < e1000_pch_mtp) {
-		if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
+		if (hw->adapter->priv_flags & PRIV_FLAG_DISABLE_K1)
 			return e1000_configure_k1_ich8lan(hw, false);
 		return 0;
 	}
@@ -315,7 +315,7 @@ static s32 e1000_reconfigure_k1_params(struct e1000_hw *hw)
 
 	/* Wait for the interface the settle */
 	usleep_range(1000, 1100);
-	if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
+	if (hw->adapter->flags2 & PRIV_FLAG_DISABLE_K1)
 		return e1000_configure_k1_ich8lan(hw, false);
 
 	/* Change K1 exit timeout */
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 116f3c92b5bc..93ab22f3cd3e 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3531,9 +3531,17 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 		shift = INCVALUE_SHIFT_24MHZ;
 		adapter->cc.shift = shift;
 		break;
-	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+		if (adapter->priv_flags & PRIV_FLAG_38_4MHZ_XTAL_CLK) {
+			incperiod = INCPERIOD_38400KHZ;
+			incvalue = INCVALUE_38400KHZ;
+			shift = INCVALUE_SHIFT_38400KHZ;
+			adapter->cc.shift = shift;
+			break;
+		}
+		fallthrough;
+	case e1000_pch_cnp:
 	case e1000_pch_nvp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
@@ -6987,7 +6995,7 @@ static int e1000e_pm_suspend(struct device *dev)
 	rc = __e1000_shutdown(pdev, false);
 	if (!rc) {
 		/* Introduce S0ix implementation */
-		if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
+		if (adapter->priv_flags & PRIV_FLAG_ENABLE_S0IX_FLOWS)
 			e1000e_s0ix_entry_flow(adapter);
 	}
 
@@ -7002,7 +7010,7 @@ static int e1000e_pm_resume(struct device *dev)
 	int rc;
 
 	/* Introduce S0ix implementation */
-	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
+	if (adapter->priv_flags & PRIV_FLAG_ENABLE_S0IX_FLOWS)
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
@@ -7676,7 +7684,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	e1000e_ptp_init(adapter);
 
 	if (hw->mac.type >= e1000_pch_mtp)
-		adapter->flags2 |= FLAG2_DISABLE_K1;
+		adapter->priv_flags |= PRIV_FLAG_DISABLE_K1;
 
 	/* reset the hardware with the new settings */
 	e1000e_reset(adapter);
@@ -7689,7 +7697,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		e1000e_get_hw_control(adapter);
 
 	if (hw->mac.type >= e1000_pch_cnp)
-		adapter->flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+		adapter->priv_flags |= PRIV_FLAG_ENABLE_S0IX_FLOWS;
 
 	strscpy(netdev->name, "eth%d", sizeof(netdev->name));
 	err = register_netdev(netdev);
-- 
2.34.1

