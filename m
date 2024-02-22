Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD1085FE0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 17:27:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2363E83260;
	Thu, 22 Feb 2024 16:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cxV2MR81qhj5; Thu, 22 Feb 2024 16:27:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C54A83267
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708619244;
	bh=gQ8k9gxqDr+NhkJpWULLvyV7u+9vvgEGyusqY8hLLXQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CWnXgR3KIZz364jN9WG+ovVy8ECSh3KPzklYpfLY8mHkOP2vT4rk3H74vwoaNqH9B
	 r98PMm8mP4sPXZrWf2pH3UXqXuH67/FTMIVI4PL3ueYwbvbrH9fgoronI1kRZEQYcc
	 lr1zQeWoQXckIYhU6k0m+uvmCDz8xKYs4fPrc+bY96xG72cSNTpm7hKd5eypNKMXJs
	 Qz7EZIlduXGArCLuOtD5D3lpGrYf+10XyNj0JV7vLSPavgg5ORAauc3mOawJ25H9Tr
	 XD43H2mH7t8eSQtJMpUxtcukved5+gEifz0LsSyo1ScByiSJXk5gA7KUlGbUVy/Al2
	 D0xfaF8ScAosQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C54A83267;
	Thu, 22 Feb 2024 16:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64BFA1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 16:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DA0B40948
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 16:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cpIMvG1YNatk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 16:27:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5548740166
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5548740166
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5548740166
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 16:27:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2963364"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2963364"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 08:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5932294"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa008.jf.intel.com with ESMTP; 22 Feb 2024 08:27:18 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 17:27:12 +0100
Message-Id: <20240222162712.722914-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708619242; x=1740155242;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DsNzO7fFajPMIW7btn9lHHhqZKjHYCknlu6PRuyC+hk=;
 b=ntreHXZGoC5MJpUyFqjNPxmvaMjhjmEER2Ml/ua+Sxi0R9twpwKcZUAR
 6YuZ+mVGFgXXnwTAeFvA0JnvhEmbL1OZP9hY5+RP4zbUQ+8E2YofU0HZS
 cVuUzzZ3U5Izp+9HOj3O5v9ZbKIlmmktdw1ABNQM8tCpZLhnsydH1WoS3
 W8AYjywBrAEJUQR4aLOULjG6KzxstB7mGpkoYnrMAYwoELla5p1eRI7su
 ELd3Z08122ifrkyMvVWmAG8hPAeteArKDAnhmFcuS61Rpj5K05JqoUPRj
 77bI+jaugEWagbg1vI9BMSFZVsZ4Iz0kntWqeYQRcay439nWXSyEbDTkw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ntreHXZG
Subject: [Intel-wired-lan] [PATCH RFC iwl-net] ixgbe: do not account for XDP
 rings in Tx watchdog
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
Cc: jacob.e.keller@intel.com, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 jesse.brandeburg@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix issue where ixgbe driver triggers resets in endless manner. A
snippet from dmesg:

[1879966.583523] ixgbe 0000:86:00.0 enp134s0f0: initiating reset to clear Tx work after link loss
[1879968.405694] ixgbe 0000:86:00.0 enp134s0f0: Reset adapter
[1879968.925689] ixgbe 0000:86:00.0 enp134s0f0: detected SFP+: 3
[1879969.185504] ixgbe 0000:86:00.0 enp134s0f0: NIC Link is Up 10 Gbps, Flow Control: RX/TX
[1879969.592433] ixgbe 0000:86:00.0 enp134s0f0: NIC Link is Down
[1879969.592539] ixgbe 0000:86:00.0 enp134s0f0: initiating reset to clear Tx work after link loss
[1879971.413253] ixgbe 0000:86:00.0 enp134s0f0: Reset adapter
[1879971.901400] ixgbe 0000:86:00.0 enp134s0f0: detected SFP+: 3
[1879972.161224] ixgbe 0000:86:00.0 enp134s0f0: NIC Link is Up 10 Gbps, Flow Control: RX/TX
[1879972.567922] ixgbe 0000:86:00.0 enp134s0f0: NIC Link is Down
[1879972.568023] ixgbe 0000:86:00.0 enp134s0f0: initiating reset to clear Tx work after link loss
[...]

This can happen when user launches multiple xdpsock in txonly mode and
flap the link few times. Commit c685c69fba71 ("ixgbe: don't do any
AF_XDP zero-copy transmit if netif is not OK") tried to address same
thing by calling netif_carrier_ok() in ZC Tx path, however as shown
above I am still able to trigger reset loop.

In watchdog subtask, when bringing link up, messages that are shown in
dmesg are:
Link is up
Link is down <--- at this state, !netif_carrier_ok() xsk managed to
                  produce tx desc, ixgbe_ring_tx_pending() will see
                  ntc != ntu at XDP ring at will schedule reset
Link is up

I am not sure if sequence of events when bringing interface up is
correct. I would expect that link would go just from downed state to up,
not up/down/up.

For now, do not look at XDP rings within watchdog. It is not common to
do so. After that it is no longer needed to call netif_carrier_ok() in
ZC Tx.

Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 7 -------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 3 ---
 2 files changed, 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bd541527c8c7..083f7e75f67c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7624,13 +7624,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
 			return true;
 	}
 
-	for (i = 0; i < adapter->num_xdp_queues; i++) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[i];
-
-		if (ring->next_to_use != ring->next_to_clean)
-			return true;
-	}
-
 	return false;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 59798bc33298..7d617a309967 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -409,9 +409,6 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 			break;
 		}
 
-		if (!netif_carrier_ok(xdp_ring->netdev))
-			break;
-
 		if (!xsk_tx_peek_desc(pool, &desc))
 			break;
 
-- 
2.34.1

