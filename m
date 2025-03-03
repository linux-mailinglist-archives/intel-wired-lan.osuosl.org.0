Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D778A4C020
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 13:20:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A32360725;
	Mon,  3 Mar 2025 12:20:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lN0uXheAJy4z; Mon,  3 Mar 2025 12:20:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 709EA606D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741004434;
	bh=2V0HiRaEAinLUNUzEf2xUSgbH97jCw7NoCyfi2mc5AA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e6IJEnQqoSZ6BotDGCBC3g3R5/97OHFgxDOs5VdCH1eVvElpwlNUDd5KZvTcOtKXc
	 xLJNdU1RgIiDaQ1nM8rGPDSnBaURURiCs1Ayu4VNGafGVmSE65Oi82e2pxjiqqoks7
	 GvbYnyZLwM2GIGIf1y4fMcS02sf+vF1j04rC2MJjI8rUVKQn9WiJphFGH+1uHeVoVK
	 rq0j5ke5hg75uRcqzP+czap9J5+chJBv97HcrhIpaam6PK6ARkowgdCmHR/BxtmoyE
	 d8qt6X+l52wfMGxal88FAWOQsJgXLWEJ4NMFh9kQkW27YETd2wKywNtx+QImJOwe0p
	 uwkTa+oqt5Mew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 709EA606D7;
	Mon,  3 Mar 2025 12:20:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 31E34C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15DC281E7F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j8ebbrTpKKbp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 12:20:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 336CA81E61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 336CA81E61
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 336CA81E61
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:31 +0000 (UTC)
X-CSE-ConnectionGUID: nj/BYLA6TFWvC0fHQXziDA==
X-CSE-MsgGUID: eemrCwTLSleVvM7cqB57IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41052428"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41052428"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:20:31 -0800
X-CSE-ConnectionGUID: vL6S6XntST2OHEJ/7gFfsA==
X-CSE-MsgGUID: iP1bj8zvR0K72wL6PLMF7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117976106"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 04:20:29 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, andrew@lunn.ch,
 pmenzel@molgen.mpg.de, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  3 Mar 2025 13:06:27 +0100
Message-Id: <20250303120630.226353-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741004431; x=1772540431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gv85Hsty2Iv5ISvvHpbT+I2EWz07RxluAVDdb+7pWo8=;
 b=CNST8RUl1E5H6+lhqKlyiUVTdRvxD7dxj9GdIc34eNxiaOBIEHpvc4e5
 hXkzRHrY/G3es2Q7BetCT8lkErRUymsqvx8b19RLqEMr9kkyHyjGGhykq
 YB9N8yv1qQYRZ9L4UY+QEn6TynO/s+DiDX8Tq56CdhMvQP3zf3MCudaof
 mmXNGBr+heFB8PNp6Txq3PJJ88WHR201nElVK3X/40rp3G0FJcrnD7Hc8
 1E4l5NqbtC+QGZcS0k5kcRi/RRLdwAUChdG7t3nCVEzhQ3TZM6yGoV3Bh
 TQI8f61aSSU4fmzz5rAheKawdUOC9k+R8LKSH01yQ6clGoXS+4qC0ib1a
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CNST8RUl
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ixgbe: create E610
 specific ethtool_ops structure
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

E610's implementation of various ethtool ops is different than
the ones corresponding to ixgbe legacy products. Therefore create
separate E610 ethtool_ops struct which will be filled out in the
forthcoming patches.

Add adequate ops struct basing on MAC type. This step requires
changing a bit the flow of probing by placing ixgbe_set_ethtool_ops
after hw.mac.type is assigned. So move the whole netdev assignment
block after hw.mac.type is known. This step doesn't have any additional
impact on probing sequence.

Suggested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v3: correct the commit msg
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 52 ++++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 ++--
 2 files changed, 56 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index c86103eccc8a..83d9ee3941e5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3650,7 +3650,57 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
 	.set_link_ksettings     = ixgbe_set_link_ksettings,
 };
 
+static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
+	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
+	.get_drvinfo            = ixgbe_get_drvinfo,
+	.get_regs_len           = ixgbe_get_regs_len,
+	.get_regs               = ixgbe_get_regs,
+	.get_wol                = ixgbe_get_wol,
+	.set_wol                = ixgbe_set_wol,
+	.nway_reset             = ixgbe_nway_reset,
+	.get_link               = ethtool_op_get_link,
+	.get_eeprom_len         = ixgbe_get_eeprom_len,
+	.get_eeprom             = ixgbe_get_eeprom,
+	.set_eeprom             = ixgbe_set_eeprom,
+	.get_ringparam          = ixgbe_get_ringparam,
+	.set_ringparam          = ixgbe_set_ringparam,
+	.get_pause_stats	= ixgbe_get_pause_stats,
+	.get_pauseparam         = ixgbe_get_pauseparam,
+	.set_pauseparam         = ixgbe_set_pauseparam,
+	.get_msglevel           = ixgbe_get_msglevel,
+	.set_msglevel           = ixgbe_set_msglevel,
+	.self_test              = ixgbe_diag_test,
+	.get_strings            = ixgbe_get_strings,
+	.set_phys_id            = ixgbe_set_phys_id,
+	.get_sset_count         = ixgbe_get_sset_count,
+	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
+	.get_coalesce           = ixgbe_get_coalesce,
+	.set_coalesce           = ixgbe_set_coalesce,
+	.get_rxnfc		= ixgbe_get_rxnfc,
+	.set_rxnfc		= ixgbe_set_rxnfc,
+	.get_rxfh_indir_size	= ixgbe_rss_indir_size,
+	.get_rxfh_key_size	= ixgbe_get_rxfh_key_size,
+	.get_rxfh		= ixgbe_get_rxfh,
+	.set_rxfh		= ixgbe_set_rxfh,
+	.get_eee		= ixgbe_get_eee,
+	.set_eee		= ixgbe_set_eee,
+	.get_channels		= ixgbe_get_channels,
+	.set_channels		= ixgbe_set_channels,
+	.get_priv_flags		= ixgbe_get_priv_flags,
+	.set_priv_flags		= ixgbe_set_priv_flags,
+	.get_ts_info		= ixgbe_get_ts_info,
+	.get_module_info	= ixgbe_get_module_info,
+	.get_module_eeprom	= ixgbe_get_module_eeprom,
+	.get_link_ksettings     = ixgbe_get_link_ksettings,
+	.set_link_ksettings     = ixgbe_set_link_ksettings,
+};
+
 void ixgbe_set_ethtool_ops(struct net_device *netdev)
 {
-	netdev->ethtool_ops = &ixgbe_ethtool_ops;
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+
+	if (adapter->hw.mac.type == ixgbe_mac_e610)
+		netdev->ethtool_ops = &ixgbe_ethtool_ops_e610;
+	else
+		netdev->ethtool_ops = &ixgbe_ethtool_ops;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 90cffa50221c..b6ce1017bf13 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11610,11 +11610,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_ioremap;
 	}
 
-	netdev->netdev_ops = &ixgbe_netdev_ops;
-	ixgbe_set_ethtool_ops(netdev);
-	netdev->watchdog_timeo = 5 * HZ;
-	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
-
 	/* Setup hw api */
 	hw->mac.ops   = *ii->mac_ops;
 	hw->mac.type  = ii->mac;
@@ -11644,6 +11639,11 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->phy.mdio.mdio_read = ixgbe_mdio_read;
 	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
 
+	netdev->netdev_ops = &ixgbe_netdev_ops;
+	ixgbe_set_ethtool_ops(netdev);
+	netdev->watchdog_timeo = 5 * HZ;
+	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
+
 	/* setup the private structure */
 	err = ixgbe_sw_init(adapter, ii);
 	if (err)
-- 
2.31.1

