Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981033D26A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jul 2021 17:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CD0D40148;
	Thu, 22 Jul 2021 15:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWwKQYuw91vU; Thu, 22 Jul 2021 15:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00A3C40114;
	Thu, 22 Jul 2021 15:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B20521BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 15:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CA96605DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 15:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWN1LN7E1ffP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jul 2021 15:29:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 68180605DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 15:29:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="233484600"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="233484600"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 08:29:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="415509900"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga006.jf.intel.com with ESMTP; 22 Jul 2021 08:29:07 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Jul 2021 17:19:31 +0200
Message-Id: <20210722151931.28037-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix ATR queue selection
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Without this patch, ATR does not work. Receive/transmit uses queue
selection based on SW DCB hashing method.

If traffic classes are not configured for PF, then use
netdev_pick_tx function for selecting queue for packet transmission.
Instead of calling i40e_swdcb_skb_tx_hash, call netdev_pick_tx,
which ensures that packet is transmitted/received from CPU that is
running the application.

Reproduction steps:
1. Load i40e driver
2. Map each MSI interrupt of i40e port for each CPU
3. Disable ntuple, enable ATR i.e.:
ethtool -K $interface ntuple off
ethtool --set-priv-flags $interface flow-director-atr
4. Run application that is generating traffic and is bound to a
single CPU, i.e.:
taskset -c 9 netperf -H 1.1.1.1 -t TCP_RR -l 10
5. Observe behavior:
Application's traffic should be restricted to the CPU provided in
taskset.

Fixes: 821bd0c990ba ("i40e: Fix queue-to-TC mapping on Tx")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2: Improved commit message
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 3f25bd8..10a83e5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -3663,8 +3663,7 @@ u16 i40e_lan_select_queue(struct net_device *netdev,
 
 	/* is DCB enabled at all? */
 	if (vsi->tc_config.numtc == 1)
-		return i40e_swdcb_skb_tx_hash(netdev, skb,
-					      netdev->real_num_tx_queues);
+		return netdev_pick_tx(netdev, skb, sb_dev);
 
 	prio = skb->priority;
 	hw = &vsi->back->hw;

base-commit: e84671cd9648eb1f2b346378c100b4ebfbd1b01c
-- 
2.18.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
