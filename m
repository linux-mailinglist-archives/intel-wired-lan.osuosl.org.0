Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE09A79DF29
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 06:29:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4255441A04;
	Wed, 13 Sep 2023 04:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4255441A04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694579353;
	bh=sJD5RvRt4de4R38lI0713INaVjkRk9PGjdO8fZqE4vQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MG+oIWynOBJNIItl2Grd29WiVr03huEuDCDYeD3/Y9AKO1/mUhvgVbbWgvfvW4Du7
	 V5u2geC6zc7LdNaPSsMJebpbmO9C20K87zHBR8FDfKGR4NYbeskR4SvwGGIMLxh6wi
	 eoZNsTMfzOJwXObrlqkxs0aCqaO7/OSxCwJ5peAYfg0v71GvMJDaZ0MygGM6hGvIZI
	 YdOUNi0HkzRoHjUPahRcH8GEIXOix8EyQ0tXP97J4zfG+kaaIvbd5iqxpjpXausnkR
	 ochheD8aiyRMkI0NmPI6ufh4qeXEp/zMhLb/F+lRMPKLYaK8LFSKDd0HloSA1fcxtT
	 DbbdRPCf/dAaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDS8Vb0RcoS7; Wed, 13 Sep 2023 04:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A6AD41904;
	Wed, 13 Sep 2023 04:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A6AD41904
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 177011BF5A3
 for <intel-wired-lan@osuosl.org>; Wed, 13 Sep 2023 04:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6F6240102
 for <intel-wired-lan@osuosl.org>; Wed, 13 Sep 2023 04:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6F6240102
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0FKbVAtp10QG for <intel-wired-lan@osuosl.org>;
 Wed, 13 Sep 2023 04:29:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B338400BF
 for <intel-wired-lan@osuosl.org>; Wed, 13 Sep 2023 04:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B338400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442592265"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="442592265"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 21:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="990764952"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="990764952"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga006.fm.intel.com with ESMTP; 12 Sep 2023 21:29:03 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 13 Sep 2023 12:27:52 +0800
Message-Id: <20230913042752.11947-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694579346; x=1726115346;
 h=from:to:cc:subject:date:message-id;
 bh=6PavsG4BOGn130XowheC0RrjlIHWokCjpjd8uE1eelQ=;
 b=HcCmumF+5FBkRIg7WPMV7FjVzCyRBAlxFfKsgGDhNidHORQjv56x85Q7
 jT0P+8Brv6+2y5vDm/Lq0kVMzTuYrx81Vxr8gSZtGr5WWGh4XE8ZgdmEA
 s06ms+NAtE71k33uUte/V4vbpx/jP87zbKHdUgi1uiBwd84rsCq8TwpYR
 T1+w63RVvQnABdPES43oveOlc2ezVyW4qM58er0NsGdvSqYgPts2vB/70
 TNe0KHxINoavVAU/Y0lsiWM/8sucfFVoiLxMH6qR7rDbXHMBHPf9rAO8p
 XeJjGqFYjEzMso/PC9/xnSSNJ8/AHq3ZrYd71hhk2IP3XVMcoAdsHqpQg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HcCmumF+
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Add support for receiving
 error frames
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
Cc: husainizulkifli@gmail.com, anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch enables the NIC to (optionally, via ethtool) receives
the errored packet frames as it was not provided to user before.

According to Software User Manual Chapter 8.9.1, once Bit(2) is set
in Receive Control Register (RCTL), bad packets will be received and
sent to host memory. Receive descriptor error field (RDESC.ERRORS)
shall have the corresponding bit to signal the driver that packets
is errored.

By turning on NETIF_F_RXALL as well, all broadcast packets will be
received and any flow control packets that aren't recognised will
be sent to the host.

How to test:
User can set to receive all frames using ethtool command.

Example command:
ethtool -K <interface> rx-all on

Previous output:

ethtool -K enp1s0 rx-all on
Actual changes:
rx-all: off [requested on]
Could not change any device features

New output:

ethtool -K enp1s0 rx-all on
ethtool -k enp1s0 | grep rx-all
rx-all: on

Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
---
V1 -> V2: Fix typo in commit message
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 98de34d0ce07..e3f4b3e95cd0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6850,6 +6850,7 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->hw_features |= NETIF_F_NTUPLE;
 	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
 	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
+	netdev->hw_features |= NETIF_F_RXALL;
 	netdev->hw_features |= netdev->features;
 
 	netdev->features |= NETIF_F_HIGHDMA;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
