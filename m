Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3D8958FB0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 23:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE27340B7F;
	Tue, 20 Aug 2024 21:30:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mRnAMCwSkGXO; Tue, 20 Aug 2024 21:30:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49AA740B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724189443;
	bh=mlj2OU/9jQQlYVgc8xXGFGEbmSA2BUO2s9ZMNvlZa5E=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=7KW2z4nlufsxEcPrFVU8kQw9I1GYMofS5OuFuFxLft535SNhqccTWPnZTQvUQr442
	 n+1r9V4mdnTkfBSD26M0olJyyYHw+4CudfVMG1R2PDjlgHg8DvIoqLkf+UyXkw8lKq
	 RuxzV7UwEptpiL5RWy/EV4ZQnNhtEkXyBQ4xC+eMepB+7662R6WTdT1NeV6kys2ZaW
	 dSSMiKz0aDZ1jENrxrAMrnphh9XFEqRQ8yyECRtsqbvDehOcGqo2+QTTjqyDU8qiWN
	 KEf1miVFA9FxFDsepidfR8e0uz9q+uXi7A/mdjJu3yz26SnwXXqpBmciLY+dPyt45V
	 JdNSf+4UqD28A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49AA740B5E;
	Tue, 20 Aug 2024 21:30:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B70001BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B04CA4067F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:30:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6VOvnWK04xp7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 21:30:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3098940679
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3098940679
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3098940679
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:30:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EF93D60DF6;
 Tue, 20 Aug 2024 21:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A00BC4AF09;
 Tue, 20 Aug 2024 21:30:37 +0000 (UTC)
Date: Tue, 20 Aug 2024 16:30:35 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Petr Valenta <petr@jevklidu.cz>
Message-ID: <20240820213035.GA226181@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ec28d20-c729-496a-b8bf-2bf88bbb4d70@jevklidu.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724189437;
 bh=0t79HOH2kYVclDTTF8FvHw6OfaaM4JS6jorC17zXI3k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=GhFyFhraHJm9t4ey15N3XxG5Bc8U2z1N5/4pJSFm4vNlndjUOQltzb39mj8r5tzdO
 0Qrk2iUfn9usdQTfr3eHowUDbvxoFI6z/iFJUe0kPts5eaue6Z5J1ESezm6daA6gwZ
 yJtcho1EXrvEH0dGBx7xhKIKBezS0BAXW2lbUFKuTB9YSHJvprlgy0VZjDNjg/G3WL
 4nV3cEtNJ3EiMYMMNl9JNQtJDhvg/VIeHBFzQPJHHzBh+gZ4MmwNPJSkTNCDceZicW
 OJIm3Vprxxg/osSezx/ysd0VAXqV7ywftKaXHshPID8u49v2SiJtBafOh/+7jMlh+U
 CASP86+QHj9sA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GhFyFhra
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "Rafael J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Jiri Slaby <jirislaby@kernel.org>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 20, 2024 at 11:13:54PM +0200, Petr Valenta wrote:
> Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
> > On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
> > > On 19. 08. 24, 6:50, Jiri Slaby wrote:
> > > > CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
> > > 
> > > Bjorn,
> > > 
> > > I am confused by these changes:
> > > ==========================================
> > > @@ -291,16 +288,13 @@ static int e1000_set_link_ksettings(struct net_device
> > > *net
> > > dev,
> > >           * duplex is forced.
> > >           */
> > >          if (cmd->base.eth_tp_mdix_ctrl) {
> > > -               if (hw->phy.media_type != e1000_media_type_copper) {
> > > -                       ret_val = -EOPNOTSUPP;
> > > -                       goto out;
> > > -               }
> > > +               if (hw->phy.media_type != e1000_media_type_copper)
> > > +                       return -EOPNOTSUPP;
> > > 
> > >                  if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
> > >                      (cmd->base.autoneg != AUTONEG_ENABLE)) {
> > >                          e_err("forcing MDI/MDI-X state is not supported when
> > > lin
> > > k speed and/or duplex are forced\n");
> > > -                       ret_val = -EINVAL;
> > > -                       goto out;
> > > +                       return -EINVAL;
> > >                  }
> > >          }
> > > 
> > > @@ -347,7 +341,6 @@ static int e1000_set_link_ksettings(struct net_device
> > > *netde
> > > v,
> > >          }
> > > 
> > >   out:
> > > -       pm_runtime_put_sync(netdev->dev.parent);
> > >          clear_bit(__E1000_RESETTING, &adapter->state);
> > >          return ret_val;
> > >   }
> > > ==========================================
> > > 
> > > So no more clear_bit(__E1000_RESETTING in the above fail paths. Is that
> > > intentional?
> > 
> > Not intentional.  Petr, do you have the ability to test the patch
> > below?  I'm not sure it's the correct fix, but it reverts the pieces
> > of b2c289415b2b that Jiri pointed out.
> 
> I tested the patch below but it didn't help. After the first boot with new
> kernel it looked promising as the irq storm only appeared for a few seconds,
> but with subsequent reboots it was the same as without the patch.

Thank you very much for testing that!

> To be sure, I also send the md5sum of ethtool.c after applying the patch:
> 
> a25c003257538f16994b4d7c4260e894 ethtool.c

Thanks, that matches what I get when applying the patch on v6.10.

I'm at a loss.  You could try reverting the entire b2c289415b2b commit
(patch for that is below).

If that doesn't help, I guess you could try reverting the other
commits Jiri mentioned:

  76a0a3f9cc2f e1000e: fix force smbus during suspend flow
  c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
  bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp function
  6918107e2540 net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates
  1eb2cded45b3 net: annotate writes on dev->mtu from ndo_change_mtu()
  b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
  75a3f93b5383 net: intel: implement modern PM ops declarations

If you do this, I would revert 76a0a3f9cc2f, test, then revert
c93a6f62cb1b in addition, test, then revert bfd546a552e1 in addition,
etc.

commit 5e92945ffe5c ("Revert "e1000e: Remove redundant runtime resume for ethtool_ops"")
Author: Bjorn Helgaas <bhelgaas@google.com>
Date:   Tue Aug 20 16:18:32 2024 -0500

    Revert "e1000e: Remove redundant runtime resume for ethtool_ops"
    
    This reverts commit b2c289415b2b2ef112b78d5e73b4acecf5db409e.


diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..61fa2f6b3708 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -156,7 +156,7 @@ static int e1000_get_link_ksettings(struct net_device *netdev,
 			speed = adapter->link_speed;
 			cmd->base.duplex = adapter->link_duplex - 1;
 		}
-	} else {
+	} else if (!pm_runtime_suspended(netdev->dev.parent)) {
 		u32 status = er32(STATUS);
 
 		if (status & E1000_STATUS_LU) {
@@ -274,13 +274,16 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	ethtool_convert_link_mode_to_legacy_u32(&advertising,
 						cmd->link_modes.advertising);
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	/* When SoL/IDER sessions are active, autoneg/speed/duplex
 	 * cannot be changed
 	 */
 	if (hw->phy.ops.check_reset_block &&
 	    hw->phy.ops.check_reset_block(hw)) {
 		e_err("Cannot change link characteristics when SoL/IDER is active.\n");
-		return -EINVAL;
+		ret_val = -EINVAL;
+		goto out;
 	}
 
 	/* MDI setting is only allowed when autoneg enabled because
@@ -288,13 +291,16 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	 * duplex is forced.
 	 */
 	if (cmd->base.eth_tp_mdix_ctrl) {
-		if (hw->phy.media_type != e1000_media_type_copper)
-			return -EOPNOTSUPP;
+		if (hw->phy.media_type != e1000_media_type_copper) {
+			ret_val = -EOPNOTSUPP;
+			goto out;
+		}
 
 		if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
 		    (cmd->base.autoneg != AUTONEG_ENABLE)) {
 			e_err("forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\n");
-			return -EINVAL;
+			ret_val = -EINVAL;
+			goto out;
 		}
 	}
 
@@ -341,6 +347,7 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	}
 
 out:
+	pm_runtime_put_sync(netdev->dev.parent);
 	clear_bit(__E1000_RESETTING, &adapter->state);
 	return ret_val;
 }
@@ -376,6 +383,8 @@ static int e1000_set_pauseparam(struct net_device *netdev,
 	while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
 		hw->fc.requested_mode = e1000_fc_default;
 		if (netif_running(adapter->netdev)) {
@@ -408,6 +417,7 @@ static int e1000_set_pauseparam(struct net_device *netdev,
 	}
 
 out:
+	pm_runtime_put_sync(netdev->dev.parent);
 	clear_bit(__E1000_RESETTING, &adapter->state);
 	return retval;
 }
@@ -438,6 +448,8 @@ static void e1000_get_regs(struct net_device *netdev,
 	u32 *regs_buff = p;
 	u16 phy_data;
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	memset(p, 0, E1000_REGS_LEN * sizeof(u32));
 
 	regs->version = (1u << 24) |
@@ -483,6 +495,8 @@ static void e1000_get_regs(struct net_device *netdev,
 	e1e_rphy(hw, MII_STAT1000, &phy_data);
 	regs_buff[24] = (u32)phy_data;	/* phy local receiver status */
 	regs_buff[25] = regs_buff[24];	/* phy remote receiver status */
+
+	pm_runtime_put_sync(netdev->dev.parent);
 }
 
 static int e1000_get_eeprom_len(struct net_device *netdev)
@@ -515,6 +529,8 @@ static int e1000_get_eeprom(struct net_device *netdev,
 	if (!eeprom_buff)
 		return -ENOMEM;
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	if (hw->nvm.type == e1000_nvm_eeprom_spi) {
 		ret_val = e1000_read_nvm(hw, first_word,
 					 last_word - first_word + 1,
@@ -528,6 +544,8 @@ static int e1000_get_eeprom(struct net_device *netdev,
 		}
 	}
 
+	pm_runtime_put_sync(netdev->dev.parent);
+
 	if (ret_val) {
 		/* a read error occurred, throw away the result */
 		memset(eeprom_buff, 0xff, sizeof(u16) *
@@ -577,6 +595,8 @@ static int e1000_set_eeprom(struct net_device *netdev,
 
 	ptr = (void *)eeprom_buff;
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	if (eeprom->offset & 1) {
 		/* need read/modify/write of first changed EEPROM word */
 		/* only the second byte of the word is being modified */
@@ -617,6 +637,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		ret_val = e1000e_update_nvm_checksum(hw);
 
 out:
+	pm_runtime_put_sync(netdev->dev.parent);
 	kfree(eeprom_buff);
 	return ret_val;
 }
@@ -712,6 +733,8 @@ static int e1000_set_ringparam(struct net_device *netdev,
 		}
 	}
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	e1000e_down(adapter, true);
 
 	/* We can't just free everything and then setup again, because the
@@ -750,6 +773,7 @@ static int e1000_set_ringparam(struct net_device *netdev,
 		e1000e_free_tx_resources(temp_tx);
 err_setup:
 	e1000e_up(adapter);
+	pm_runtime_put_sync(netdev->dev.parent);
 free_temp:
 	vfree(temp_tx);
 	vfree(temp_rx);
@@ -1792,6 +1816,8 @@ static void e1000_diag_test(struct net_device *netdev,
 	u8 autoneg;
 	bool if_running = netif_running(netdev);
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	set_bit(__E1000_TESTING, &adapter->state);
 
 	if (!if_running) {
@@ -1877,6 +1903,8 @@ static void e1000_diag_test(struct net_device *netdev,
 	}
 
 	msleep_interruptible(4 * 1000);
+
+	pm_runtime_put_sync(netdev->dev.parent);
 }
 
 static void e1000_get_wol(struct net_device *netdev,
@@ -2018,11 +2046,15 @@ static int e1000_set_coalesce(struct net_device *netdev,
 		adapter->itr_setting = adapter->itr & ~3;
 	}
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	if (adapter->itr_setting != 0)
 		e1000e_write_itr(adapter, adapter->itr);
 	else
 		e1000e_write_itr(adapter, 0);
 
+	pm_runtime_put_sync(netdev->dev.parent);
+
 	return 0;
 }
 
@@ -2036,7 +2068,9 @@ static int e1000_nway_reset(struct net_device *netdev)
 	if (!adapter->hw.mac.autoneg)
 		return -EINVAL;
 
+	pm_runtime_get_sync(netdev->dev.parent);
 	e1000e_reinit_locked(adapter);
+	pm_runtime_put_sync(netdev->dev.parent);
 
 	return 0;
 }
@@ -2050,8 +2084,12 @@ static void e1000_get_ethtool_stats(struct net_device *netdev,
 	int i;
 	char *p = NULL;
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	dev_get_stats(netdev, &net_stats);
 
+	pm_runtime_put_sync(netdev->dev.parent);
+
 	for (i = 0; i < E1000_GLOBAL_STATS_LEN; i++) {
 		switch (e1000_gstrings_stats[i].type) {
 		case NETDEV_STATS:
@@ -2108,7 +2146,9 @@ static int e1000_get_rxnfc(struct net_device *netdev,
 		struct e1000_hw *hw = &adapter->hw;
 		u32 mrqc;
 
+		pm_runtime_get_sync(netdev->dev.parent);
 		mrqc = er32(MRQC);
+		pm_runtime_put_sync(netdev->dev.parent);
 
 		if (!(mrqc & E1000_MRQC_RSS_FIELD_MASK))
 			return 0;
@@ -2171,9 +2211,13 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		return -EOPNOTSUPP;
 	}
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	ret_val = hw->phy.ops.acquire(hw);
-	if (ret_val)
+	if (ret_val) {
+		pm_runtime_put_sync(netdev->dev.parent);
 		return -EBUSY;
+	}
 
 	/* EEE Capability */
 	ret_val = e1000_read_emi_reg_locked(hw, cap_addr, &phy_data);
@@ -2213,6 +2257,8 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	if (ret_val)
 		ret_val = -ENODATA;
 
+	pm_runtime_put_sync(netdev->dev.parent);
+
 	return ret_val;
 }
 
@@ -2253,12 +2299,16 @@ static int e1000e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 
 	hw->dev_spec.ich8lan.eee_disable = !edata->eee_enabled;
 
+	pm_runtime_get_sync(netdev->dev.parent);
+
 	/* reset the link */
 	if (netif_running(netdev))
 		e1000e_reinit_locked(adapter);
 	else
 		e1000e_reset(adapter);
 
+	pm_runtime_put_sync(netdev->dev.parent);
+
 	return 0;
 }
 
