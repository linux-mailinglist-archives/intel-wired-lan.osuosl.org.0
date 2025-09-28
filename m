Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 170CCBA6A94
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Sep 2025 10:07:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A511140684;
	Sun, 28 Sep 2025 08:07:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sod9h7jpBtXJ; Sun, 28 Sep 2025 08:07:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE6C740687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759046876;
	bh=hDXW97NmM2CvlCjSIT1EV0pyZ30Zx/qj3KkFfU0QVfY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DoYUro36YY7kcDUCCqScY61RW79kqhf+6wNRkS8ZBISttehNoRraHxOGg4EdhNrJi
	 i2osXPuxz6yG7NHZm+ghF8dHcBFBhh/k8V6NkHFTOppDFoDBGs29+tKjCeCV0QKnln
	 JPrqY6FiQ0Jz6Vsys2nfqViJJd1urJBgO5VQeV18DXHhi7D8ij9CAh7EUY1yimeYQ9
	 3+dlnMPno++467baNSGzDLYXBiOPych3XQhi4H0akBYhvMfF6k8yea4ra2n8HjxECt
	 nG9iTEm3DxX+nNZq3quzs40/HOELNHdSadGH7d5i4zO/NbNwAKXc2Sp0xeWwbh92Jo
	 qXHfdIjkv1smQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE6C740687;
	Sun, 28 Sep 2025 08:07:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B268197
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 08:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3609760721
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 08:07:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h0UB80nYuCen for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Sep 2025 08:07:53 +0000 (UTC)
X-Greylist: delayed 424 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 28 Sep 2025 08:07:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 045F660720
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 045F660720
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 045F660720
 for <intel-wired-lan@osuosl.org>; Sun, 28 Sep 2025 08:07:52 +0000 (UTC)
X-CSE-ConnectionGUID: ZdMgc59ISaOKvCZ4Rcu6GA==
X-CSE-MsgGUID: IeberXkORZ6iMJpHAdVaqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61366694"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61366694"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 01:00:46 -0700
X-CSE-ConnectionGUID: HZ9U9FYmQNOqIP+9s/tizQ==
X-CSE-MsgGUID: OGLgL2GwQ3auxQW8HnUslQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="201643251"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 01:00:44 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: timo.teras@iki.fi, marmarek@invisiblethingslab.com,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Sun, 28 Sep 2025 11:00:40 +0300
Message-Id: <20250928080040.6309-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759046874; x=1790582874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S40H/pgjPtG9jDwvS9Ag+dR8I9JiBJ2tyPAFGnjV8ds=;
 b=VkXqwZdi5hPYCWCvHty11RzEqX8JTwpIdjRliieojrP/lQenEs9vEMGD
 V7q4iMdgn/Bi0yu/HLeNxQ8ZgtsQz6HUjFYpqzBNACiqMoYOZOjpkpTL+
 xujfnv4fJ1aYmNsIT907TOgKvkXkl/VNvJ2/lrZUrWtTvj8YbaKO8I0Yk
 GrO9lKRZMFrKouOkiLV2zMtxm6Kfhuy/Mb13I09azeFWSgDto8HCL5QbD
 iaQNSovHmPVeW0l2YBE+k5AyIzqHhslak+2z74lTOhp32no/NTq/jAoxl
 Szqq3sh1te924sazTWMdTqni7s+CTzE8HfQc/vkSevttjZNMgdUaN4u2/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VkXqwZdi
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce private
 flag to disable K1
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

The K1 state reduces power consumption on ICH family network controllers
during idle periods, similarly to L1 state on PCI Express NICs. Therefore,
it is recommended and enabled by default.
However, on some systems it has been observed to have adverse side
effects, such as packet loss. It has been established through debug that
the problem may be due to firmware misconfiguration of specific systems,
interoperability with certain link partners, or marginal electrical
conditions of specific units.

These problems typically cannot be fixed in the field, and generic
workarounds to resolve the side effects on all systems, while keeping K1
enabled, were found infeasible.
Therefore, add the option for users to globally disable K1 idle state on
the adapter.

Additionally, disable K1 by default for MTL and later platforms, due to
issues reported with the current configuration.

Link: https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
Link: https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
Link: https://github.com/QubesOS/qubes-issues/issues/9896
Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v4: Revert changing the reconfiguring function from static
v3: Removed disabling K1 in watchdog_task and change the private flag setting
v2: Add a missing semaphore acquiring and disable K1 on MTL by default
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
 drivers/net/ethernet/intel/e1000e/ethtool.c | 45 ++++++++++++++++++---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 41 ++++++++++---------
 drivers/net/ethernet/intel/e1000e/netdev.c  |  3 ++
 4 files changed, 67 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 018e61aea787..aa08f397988e 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -461,6 +461,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
 #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
 #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
 #define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
+#define FLAG2_DISABLE_K1		   BIT(16)
 
 #define E1000_RX_DESC_PS(R, i)	    \
 	(&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 06482ad50508..6e7b15c7fe5f 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -26,6 +26,8 @@ struct e1000_stats {
 static const char e1000e_priv_flags_strings[][ETH_GSTRING_LEN] = {
 #define E1000E_PRIV_FLAGS_S0IX_ENABLED	BIT(0)
 	"s0ix-enabled",
+#define E1000E_PRIV_FLAGS_DISABLE_K1	BIT(1)
+	"disable-k1",
 };
 
 #define E1000E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(e1000e_priv_flags_strings)
@@ -2297,26 +2299,59 @@ static u32 e1000e_get_priv_flags(struct net_device *netdev)
 	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 		priv_flags |= E1000E_PRIV_FLAGS_S0IX_ENABLED;
 
+	if (adapter->flags2 & FLAG2_DISABLE_K1)
+		priv_flags |= E1000E_PRIV_FLAGS_DISABLE_K1;
+
 	return priv_flags;
 }
 
 static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	struct e1000_hw *hw = &adapter->hw;
 	unsigned int flags2 = adapter->flags2;
+	unsigned int changed;
 
-	flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
-	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
-		struct e1000_hw *hw = &adapter->hw;
+	flags2 &= ~(FLAG2_ENABLE_S0IX_FLOWS | FLAG2_DISABLE_K1);
 
-		if (hw->mac.type < e1000_pch_cnp)
+	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
+		if (hw->mac.type < e1000_pch_cnp) {
+			e_err("S0ix is not supported on this device\n");
 			return -EINVAL;
+		}
+
 		flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
 	}
 
-	if (flags2 != adapter->flags2)
+	if (priv_flags & E1000E_PRIV_FLAGS_DISABLE_K1) {
+		if (hw->mac.type < e1000_ich8lan) {
+			e_err("Disabling K1 is not supported on this device\n");
+			return -EINVAL;
+		}
+
+		flags2 |= FLAG2_DISABLE_K1;
+	}
+
+	changed = adapter->flags2 ^ flags2;
+	if (changed)
 		adapter->flags2 = flags2;
 
+	if (changed & FLAG2_DISABLE_K1) {
+		/* reset the hardware to apply the changes */
+		while (test_and_set_bit(__E1000_RESETTING,
+					&adapter->state))
+			usleep_range(1000, 2000);
+
+		if (netif_running(adapter->netdev)) {
+			e1000e_down(adapter, true);
+			e1000e_up(adapter);
+		} else {
+			e1000e_reset(adapter);
+		}
+
+		clear_bit(__E1000_RESETTING, &adapter->state);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index df4e7d781cb1..0ff8688ac3b8 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -286,21 +286,26 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
 }
 
 /**
- * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
- * align to MTP and later platform requirements.
+ * e1000_reconfigure_k1_params - reconfigure Kumeran K1 parameters.
  * @hw: pointer to the HW structure
  *
+ * By default K1 is enabled after MAC reset, so this function only
+ * disables it.
+ *
  * Context: PHY semaphore must be held by caller.
  * Return: 0 on success, negative on failure
  */
-static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
+static s32 e1000_reconfigure_k1_params(struct e1000_hw *hw)
 {
 	u16 phy_timeout;
 	u32 fextnvm12;
 	s32 ret_val;
 
-	if (hw->mac.type < e1000_pch_mtp)
+	if (hw->mac.type < e1000_pch_mtp) {
+		if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
+			return e1000_configure_k1_ich8lan(hw, false);
 		return 0;
+	}
 
 	/* Change Kumeran K1 power down state from P0s to P1 */
 	fextnvm12 = er32(FEXTNVM12);
@@ -310,6 +315,8 @@ static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
 
 	/* Wait for the interface the settle */
 	usleep_range(1000, 1100);
+	if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
+		return e1000_configure_k1_ich8lan(hw, false);
 
 	/* Change K1 exit timeout */
 	ret_val = e1e_rphy_locked(hw, I217_PHY_TIMEOUTS_REG,
@@ -373,8 +380,8 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		/* At this point the PHY might be inaccessible so don't
 		 * propagate the failure
 		 */
-		if (e1000_reconfigure_k1_exit_timeout(hw))
-			e_dbg("Failed to reconfigure K1 exit timeout\n");
+		if (e1000_reconfigure_k1_params(hw))
+			e_dbg("Failed to reconfigure K1 parameters\n");
 
 		fallthrough;
 	case e1000_pch_lpt:
@@ -473,10 +480,10 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		if (hw->mac.type >= e1000_pch_mtp) {
 			ret_val = hw->phy.ops.acquire(hw);
 			if (ret_val) {
-				e_err("Failed to reconfigure K1 exit timeout\n");
+				e_err("Failed to reconfigure K1 parameters\n");
 				goto out;
 			}
-			ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+			ret_val = e1000_reconfigure_k1_params(hw);
 			hw->phy.ops.release(hw);
 		}
 	}
@@ -4948,17 +4955,15 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
 	u16 i;
 
 	e1000_initialize_hw_bits_ich8lan(hw);
-	if (hw->mac.type >= e1000_pch_mtp) {
-		ret_val = hw->phy.ops.acquire(hw);
-		if (ret_val)
-			return ret_val;
+	ret_val = hw->phy.ops.acquire(hw);
+	if (ret_val)
+		return ret_val;
 
-		ret_val = e1000_reconfigure_k1_exit_timeout(hw);
-		hw->phy.ops.release(hw);
-		if (ret_val) {
-			e_dbg("Error failed to reconfigure K1 exit timeout\n");
-			return ret_val;
-		}
+	ret_val = e1000_reconfigure_k1_params(hw);
+	hw->phy.ops.release(hw);
+	if (ret_val) {
+		e_dbg("Error failed to reconfigure K1 parameters\n");
+		return ret_val;
 	}
 
 	/* Initialize identification LED */
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 201322dac233..116f3c92b5bc 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7675,6 +7675,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* init PTP hardware clock */
 	e1000e_ptp_init(adapter);
 
+	if (hw->mac.type >= e1000_pch_mtp)
+		adapter->flags2 |= FLAG2_DISABLE_K1;
+
 	/* reset the hardware with the new settings */
 	e1000e_reset(adapter);
 
-- 
2.34.1

