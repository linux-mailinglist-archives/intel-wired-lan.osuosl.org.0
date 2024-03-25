Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6D188B410
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 23:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 086BA608CC;
	Mon, 25 Mar 2024 22:30:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JyCYcT4aryxa; Mon, 25 Mar 2024 22:30:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C67646082F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711405805;
	bh=ANK2q+I+gIAJ17sXDKdOkIRnTzRYt/V5DvuvsYTRRzQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NWvxcWVAtGBm///HPtCyAm5s0BeiCtgbyBRnlkrUIx7jAtZWKyx/M+TEebrdiJma5
	 l4FJxb3rgUT2sPupCnxQBQAsTaJk1Tq6gMYy9CXdADo5FxtR55dDcdlZ7ai8VAwOw8
	 m1x1ZKKpBKgQ8agnCElw6Vma+wf9YPCrQNF3IC/kmsyCmf4Xz+VMgcRKVeg8YvC29U
	 l+DdIu9J8zaIk0jZ7nWgHswR7vGtw6eBp3HHhSxPGsy5XyNe+CilhOzn4Hyiqn6TGQ
	 xSNci1aKTN14TgiL6poHuFNRx2VUzfdSjQLea7IuHQQMuIle1w60JusTS9mnS2a7W5
	 JC0TGAhb647TQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C67646082F;
	Mon, 25 Mar 2024 22:30:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6D831BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A210C608C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kg5hEwIfxe5c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 22:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 716D9605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 716D9605D8
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 716D9605D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2B087611A9;
 Mon, 25 Mar 2024 22:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9A39C433C7;
 Mon, 25 Mar 2024 22:30:00 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Mon, 25 Mar 2024 17:29:49 -0500
Message-Id: <20240325222951.1460656-2-helgaas@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325222951.1460656-1-helgaas@kernel.org>
References: <20240325222951.1460656-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711405801;
 bh=MYtuaNUJeMTbUf5/FlGpfe5gChN7TQVXtRJ2/x7au8g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UESx4f49vZ/tuacJLsdTkaicefWP8ndJnZx+rYOgPjDc9rR+47fGHbtRnApcfjsAn
 lyNAfZ+MZLInP8fClt5Vki9DGpOEKlFWbYK/urkHiYVPhsoxWu4Ow8MfgbeD+E9Koo
 P14gAbiKy8giL7kb7kFl9EeOH2KOuEqvx4du7o2Rj9YXlZrv+Qdg9qaQgUTUx0C6M1
 cBGbCy+rP6a1QeSlodCH5PJ4P7JEVSPuNOkbIJ12HaY+7lDKXH4R8vXSIqM07f11QR
 K+ID3KCt5CHSQuGx5yl8Z/zEEfvXdJ9yVvHzRBdcRviIpTVyIkVAzsIsWkvYDgR9+G
 zsVWTTm3AFQrg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UESx4f49
Subject: [Intel-wired-lan] [PATCH 1/3] e1000e: Remove redundant runtime
 resume for ethtool_ops
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
Cc: Sasha Neftin <sasha.neftin@intel.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Zheng Yan <zheng.z.yan@intel.com>,
 Konstantin Khlebnikov <khlebnikov@openvz.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

e60b22c5b7e5 ("e1000e: fix accessing to suspended device") added
ethtool_ops.begin() and .complete(), which used pm_runtime_get_sync() to
resume suspended devices before any ethtool_ops callback and allow suspend
after it completed.

3ef672ab1862 ("e1000e: ethtool unnecessarily takes device out of RPM
suspend") removed ethtool_ops.begin() and .complete() and instead did
pm_runtime_get_sync() only in the individual ethtool_ops callbacks that
access device registers.

Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
so the device is resumed before *any* ethtool_ops callback, as it was
before 3ef672ab1862.

Remove most runtime resumes from ethtool_ops, which are now redundant
because the resume has already been done by dev_ethtool().  This is
essentially a revert of 3ef672ab1862 ("e1000e: ethtool unnecessarily takes
device out of RPM suspend").

There are a couple subtleties:

  - Prior to 3ef672ab1862, the device was resumed only for the duration of
    a single ethtool callback.  3ef672ab1862 changed e1000_set_phys_id() so
    the device was resumed for ETHTOOL_ID_ACTIVE and remained resumed until
    a subsequent callback for ETHTOOL_ID_INACTIVE.  Preserve that part of
    3ef672ab1862 so the device will not be runtime suspended while in the
    ETHTOOL_ID_ACTIVE state.

  - 3ef672ab1862 added "if (!pm_runtime_suspended())" in before reading the
    STATUS register in e1000_get_settings().  This was racy and is now
    unnecessary because dev_ethtool() has resumed the device already, so
    revert that.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 62 ++-------------------
 1 file changed, 6 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index dc553c51d79a..85da20778e0f 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -156,7 +156,7 @@ static int e1000_get_link_ksettings(struct net_device *netdev,
 			speed = adapter->link_speed;
 			cmd->base.duplex = adapter->link_duplex - 1;
 		}
-	} else if (!pm_runtime_suspended(netdev->dev.parent)) {
+	} else {
 		u32 status = er32(STATUS);
 
 		if (status & E1000_STATUS_LU) {
@@ -274,16 +274,13 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	ethtool_convert_link_mode_to_legacy_u32(&advertising,
 						cmd->link_modes.advertising);
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	/* When SoL/IDER sessions are active, autoneg/speed/duplex
 	 * cannot be changed
 	 */
 	if (hw->phy.ops.check_reset_block &&
 	    hw->phy.ops.check_reset_block(hw)) {
 		e_err("Cannot change link characteristics when SoL/IDER is active.\n");
-		ret_val = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	/* MDI setting is only allowed when autoneg enabled because
@@ -291,16 +288,13 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	 * duplex is forced.
 	 */
 	if (cmd->base.eth_tp_mdix_ctrl) {
-		if (hw->phy.media_type != e1000_media_type_copper) {
-			ret_val = -EOPNOTSUPP;
-			goto out;
-		}
+		if (hw->phy.media_type != e1000_media_type_copper)
+			return -EOPNOTSUPP;
 
 		if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
 		    (cmd->base.autoneg != AUTONEG_ENABLE)) {
 			e_err("forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\n");
-			ret_val = -EINVAL;
-			goto out;
+			return -EINVAL;
 		}
 	}
 
@@ -347,7 +341,6 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	}
 
 out:
-	pm_runtime_put_sync(netdev->dev.parent);
 	clear_bit(__E1000_RESETTING, &adapter->state);
 	return ret_val;
 }
@@ -383,8 +376,6 @@ static int e1000_set_pauseparam(struct net_device *netdev,
 	while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
 		hw->fc.requested_mode = e1000_fc_default;
 		if (netif_running(adapter->netdev)) {
@@ -417,7 +408,6 @@ static int e1000_set_pauseparam(struct net_device *netdev,
 	}
 
 out:
-	pm_runtime_put_sync(netdev->dev.parent);
 	clear_bit(__E1000_RESETTING, &adapter->state);
 	return retval;
 }
@@ -448,8 +438,6 @@ static void e1000_get_regs(struct net_device *netdev,
 	u32 *regs_buff = p;
 	u16 phy_data;
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	memset(p, 0, E1000_REGS_LEN * sizeof(u32));
 
 	regs->version = (1u << 24) |
@@ -495,8 +483,6 @@ static void e1000_get_regs(struct net_device *netdev,
 	e1e_rphy(hw, MII_STAT1000, &phy_data);
 	regs_buff[24] = (u32)phy_data;	/* phy local receiver status */
 	regs_buff[25] = regs_buff[24];	/* phy remote receiver status */
-
-	pm_runtime_put_sync(netdev->dev.parent);
 }
 
 static int e1000_get_eeprom_len(struct net_device *netdev)
@@ -529,8 +515,6 @@ static int e1000_get_eeprom(struct net_device *netdev,
 	if (!eeprom_buff)
 		return -ENOMEM;
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	if (hw->nvm.type == e1000_nvm_eeprom_spi) {
 		ret_val = e1000_read_nvm(hw, first_word,
 					 last_word - first_word + 1,
@@ -544,8 +528,6 @@ static int e1000_get_eeprom(struct net_device *netdev,
 		}
 	}
 
-	pm_runtime_put_sync(netdev->dev.parent);
-
 	if (ret_val) {
 		/* a read error occurred, throw away the result */
 		memset(eeprom_buff, 0xff, sizeof(u16) *
@@ -595,8 +577,6 @@ static int e1000_set_eeprom(struct net_device *netdev,
 
 	ptr = (void *)eeprom_buff;
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	if (eeprom->offset & 1) {
 		/* need read/modify/write of first changed EEPROM word */
 		/* only the second byte of the word is being modified */
@@ -637,7 +617,6 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		ret_val = e1000e_update_nvm_checksum(hw);
 
 out:
-	pm_runtime_put_sync(netdev->dev.parent);
 	kfree(eeprom_buff);
 	return ret_val;
 }
@@ -733,8 +712,6 @@ static int e1000_set_ringparam(struct net_device *netdev,
 		}
 	}
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	e1000e_down(adapter, true);
 
 	/* We can't just free everything and then setup again, because the
@@ -773,7 +750,6 @@ static int e1000_set_ringparam(struct net_device *netdev,
 		e1000e_free_tx_resources(temp_tx);
 err_setup:
 	e1000e_up(adapter);
-	pm_runtime_put_sync(netdev->dev.parent);
 free_temp:
 	vfree(temp_tx);
 	vfree(temp_rx);
@@ -1816,8 +1792,6 @@ static void e1000_diag_test(struct net_device *netdev,
 	u8 autoneg;
 	bool if_running = netif_running(netdev);
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	set_bit(__E1000_TESTING, &adapter->state);
 
 	if (!if_running) {
@@ -1903,8 +1877,6 @@ static void e1000_diag_test(struct net_device *netdev,
 	}
 
 	msleep_interruptible(4 * 1000);
-
-	pm_runtime_put_sync(netdev->dev.parent);
 }
 
 static void e1000_get_wol(struct net_device *netdev,
@@ -2046,15 +2018,11 @@ static int e1000_set_coalesce(struct net_device *netdev,
 		adapter->itr_setting = adapter->itr & ~3;
 	}
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	if (adapter->itr_setting != 0)
 		e1000e_write_itr(adapter, adapter->itr);
 	else
 		e1000e_write_itr(adapter, 0);
 
-	pm_runtime_put_sync(netdev->dev.parent);
-
 	return 0;
 }
 
@@ -2068,9 +2036,7 @@ static int e1000_nway_reset(struct net_device *netdev)
 	if (!adapter->hw.mac.autoneg)
 		return -EINVAL;
 
-	pm_runtime_get_sync(netdev->dev.parent);
 	e1000e_reinit_locked(adapter);
-	pm_runtime_put_sync(netdev->dev.parent);
 
 	return 0;
 }
@@ -2084,12 +2050,8 @@ static void e1000_get_ethtool_stats(struct net_device *netdev,
 	int i;
 	char *p = NULL;
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	dev_get_stats(netdev, &net_stats);
 
-	pm_runtime_put_sync(netdev->dev.parent);
-
 	for (i = 0; i < E1000_GLOBAL_STATS_LEN; i++) {
 		switch (e1000_gstrings_stats[i].type) {
 		case NETDEV_STATS:
@@ -2146,9 +2108,7 @@ static int e1000_get_rxnfc(struct net_device *netdev,
 		struct e1000_hw *hw = &adapter->hw;
 		u32 mrqc;
 
-		pm_runtime_get_sync(netdev->dev.parent);
 		mrqc = er32(MRQC);
-		pm_runtime_put_sync(netdev->dev.parent);
 
 		if (!(mrqc & E1000_MRQC_RSS_FIELD_MASK))
 			return 0;
@@ -2211,13 +2171,9 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		return -EOPNOTSUPP;
 	}
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	ret_val = hw->phy.ops.acquire(hw);
-	if (ret_val) {
-		pm_runtime_put_sync(netdev->dev.parent);
+	if (ret_val)
 		return -EBUSY;
-	}
 
 	/* EEE Capability */
 	ret_val = e1000_read_emi_reg_locked(hw, cap_addr, &phy_data);
@@ -2257,8 +2213,6 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	if (ret_val)
 		ret_val = -ENODATA;
 
-	pm_runtime_put_sync(netdev->dev.parent);
-
 	return ret_val;
 }
 
@@ -2299,16 +2253,12 @@ static int e1000e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 
 	hw->dev_spec.ich8lan.eee_disable = !edata->eee_enabled;
 
-	pm_runtime_get_sync(netdev->dev.parent);
-
 	/* reset the link */
 	if (netif_running(netdev))
 		e1000e_reinit_locked(adapter);
 	else
 		e1000e_reset(adapter);
 
-	pm_runtime_put_sync(netdev->dev.parent);
-
 	return 0;
 }
 
-- 
2.34.1

