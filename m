Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE//IEiHnWnBQQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 12:11:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ED9185EAF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 12:11:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0785641C88;
	Tue, 24 Feb 2026 11:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RNIHAqqLrnxg; Tue, 24 Feb 2026 11:10:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57E2F41C1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771931456;
	bh=bTfKP/5IARJExguxQh9Y+wJipUWgM/G5DIZmN+mUT5U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MidMqdUDL1Y5tsftuyKffkzJ6L1ETRy9gl+H1aZxKOvEkCHMVtxFAd3QpcCojjZJb
	 tT4zL9vkszOFclGzoKsuV9SwgynD/cbIdVbUwQNJk0djvjJ3bIAUrAyg7kGcnwZuPZ
	 hvsokQ8MOtvCpFFMXqFQqBphQH+Fg0zqt1oY+HxMQlvfrT4ErwayGuC9KJmy7dmVEM
	 KFGBfPb7myaRYVAAZDZJZYjpInKlH6of5ehtV+ATbTUd6qPyBZaosLTMq3a5zjNj1r
	 mB5hMw0XwuJ1EOpZ3SefBBiZGMa2JWvFdFV7cfJpe+maYG3JwatwX2rHGoDAzgGg4w
	 0lN0+ueBpFzgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57E2F41C1B;
	Tue, 24 Feb 2026 11:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0575D237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B225041BED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4K8Q3p_TfsbB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 11:10:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mika.westerberg@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1152F41BF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1152F41BF3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1152F41BF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:10:52 +0000 (UTC)
X-CSE-ConnectionGUID: oWiunOGXRjCZkP+vmQ2aUA==
X-CSE-MsgGUID: sCuDFG/mSyKHEBjUYS4s9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="98405008"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="98405008"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 03:10:50 -0800
X-CSE-ConnectionGUID: vLSKuYS3SjSjDD4qLWSjqQ==
X-CSE-MsgGUID: WTJXnrQmSyu+OemXyCYZ6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215892055"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa008.jf.intel.com with ESMTP; 24 Feb 2026 03:10:45 -0800
Received: by black.igk.intel.com (Postfix, from userid 1001)
 id 220E69D; Tue, 24 Feb 2026 12:10:44 +0100 (CET)
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: linux-pci@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Date: Tue, 24 Feb 2026 12:10:42 +0100
Message-ID: <20260224111044.3487873-4-mika.westerberg@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771931452; x=1803467452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=56yevZUMPDZILbEoozNRhpdvOE4yXm35dKj3iYbqF3E=;
 b=YmIcji9HizgAIqvDgqkppEqYuG8iSvOK+DpAY0xxmo3GF5mVeaDi7cf4
 GRPRfKx5o0WDIqIldOQtXboSFMYOcYFkAeJjWxtF0tgyEnKws/FCAQsWt
 doGRc7LS71n84OBhxysO/bi56i1sOL7+uLnB3cQjaC3+YSvy5Pesaf2b8
 nJlSNoGDifG1WL9L9nUDEnV6t8NYfrpSFJll1l47Ox390OK+A21bceS2a
 m8ToMuHxsDAMWB1NQOYTnhS6nN8M8RN4sEQn8rP8Nod0l74nhbQbCZLj7
 YdSenDxpYBtOzuy7G+Yim5B+4x+vCwpr3OkrVhfaSf5OOBShUBwtwMN4W
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YmIcji9H
Subject: [Intel-wired-lan] [PATCH 3/5] igc: Don't reset the hardware on
 suspend path
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:mika.westerberg@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.870];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 52ED9185EAF
X-Rspamd-Action: no action

Commit c01163dbd1b8 ("PCI/PM: Always disable PTM for all devices during
suspend") made the PCI core to suspend (disable) PTM before driver
suspend hooks are called. In case of igc what happens is that on suspend
path PCI core calls pci_suspend_ptm() then igc suspend hook that calls
igc_down() that ends up calling igc_ptp_reset() (which according to the
comment is actually needed for re-enabling the device). Anyways that
function also poll IGC_PTM_STAT that will end up timing out because PTM
is already disabled:

  [  160.716119] igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register

There should be no reason resetting the hardware on suspend path so fix
this by avoiding the reset.

Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  6 +++---
 drivers/net/ethernet/intel/igc/igc_main.c    | 13 +++++++------
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index a427f05814c1..21d6eba1cc09 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -349,7 +349,7 @@ struct igc_adapter {
 };
 
 void igc_up(struct igc_adapter *adapter);
-void igc_down(struct igc_adapter *adapter);
+void igc_down(struct igc_adapter *adapter, bool reset);
 int igc_open(struct net_device *netdev);
 int igc_close(struct net_device *netdev);
 int igc_setup_tx_resources(struct igc_ring *ring);
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 0122009bedd0..4d1bcc19255f 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -638,7 +638,7 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
 		goto clear_reset;
 	}
 
-	igc_down(adapter);
+	igc_down(adapter, true);
 
 	/* We can't just free everything and then setup again,
 	 * because the ISRs in MSI-X mode get passed pointers
@@ -737,7 +737,7 @@ static int igc_ethtool_set_pauseparam(struct net_device *netdev,
 	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
 		hw->fc.requested_mode = igc_fc_default;
 		if (netif_running(adapter->netdev)) {
-			igc_down(adapter);
+			igc_down(adapter, true);
 			igc_up(adapter);
 		} else {
 			igc_reset(adapter);
@@ -2077,7 +2077,7 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 
 	/* reset the link */
 	if (netif_running(adapter->netdev)) {
-		igc_down(adapter);
+		igc_down(adapter, true);
 		igc_up(adapter);
 	} else {
 		igc_reset(adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 99a4c99ddd57..84f5d92c81cc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5308,8 +5308,9 @@ void igc_update_stats(struct igc_adapter *adapter)
 /**
  * igc_down - Close the interface
  * @adapter: board private structure
+ * @reset: issue reset
  */
-void igc_down(struct igc_adapter *adapter)
+void igc_down(struct igc_adapter *adapter, bool reset)
 {
 	struct net_device *netdev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
@@ -5365,7 +5366,7 @@ void igc_down(struct igc_adapter *adapter)
 	adapter->link_speed = 0;
 	adapter->link_duplex = 0;
 
-	if (!pci_channel_offline(adapter->pdev))
+	if (reset && !pci_channel_offline(adapter->pdev))
 		igc_reset(adapter);
 
 	/* clear VLAN promisc flag so VFTA will be updated if necessary */
@@ -5383,7 +5384,7 @@ void igc_reinit_locked(struct igc_adapter *adapter)
 {
 	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
-	igc_down(adapter);
+	igc_down(adapter, true);
 	igc_up(adapter);
 	clear_bit(__IGC_RESETTING, &adapter->state);
 }
@@ -5437,7 +5438,7 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
 	adapter->max_frame_size = max_frame;
 
 	if (netif_running(netdev))
-		igc_down(adapter);
+		igc_down(adapter, true);
 
 	netdev_dbg(netdev, "changing MTU from %d to %d\n", netdev->mtu, new_mtu);
 	WRITE_ONCE(netdev->mtu, new_mtu);
@@ -6301,7 +6302,7 @@ static int __igc_close(struct net_device *netdev, bool suspending)
 	if (!suspending)
 		pm_runtime_get_sync(&pdev->dev);
 
-	igc_down(adapter);
+	igc_down(adapter, !suspending);
 
 	igc_release_hw_control(adapter);
 
@@ -7628,7 +7629,7 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
 	}
 
 	if (netif_running(netdev))
-		igc_down(adapter);
+		igc_down(adapter, true);
 	pci_disable_device(pdev);
 	rtnl_unlock();
 
-- 
2.50.1

