Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0759669F62E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 15:11:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F50E4196F;
	Wed, 22 Feb 2023 14:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F50E4196F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677075115;
	bh=K5y2AbPVNy1043gi0Bqhp0MnW7oMHQX2WzBv6b5dDC8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fljWpsQRyFUobTT7H7dP7IxRdLLqRcBXJBfm0MWiluoyhjFHrQtZf7prm4XKoE362
	 JVpa69nwcoi55zq3+xtk0Oyai4/cAAVM+m7AcA9TNJC28aBFGHxcpUFKqWPG2S6N3X
	 g9bZgz2kets/kKJpyj0sgCr/EoP2vbu/JmXqYBMYE3OfYMI3FqLbEeboAaLaBF7Gek
	 +wd9zg/BpzUNY9olZG/uyMk/8fAymBa3wEhUNyeLEvUM2MpmiFJfjdqISSVjKPeNH/
	 NMGwL3EC/kW9p/8AWWLmUbbrWz9J4vvJq5AMYclw4qlqnkcTDoyYU98X10clxB8vqi
	 OQN48zB5iLyIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eydKPpIRChR9; Wed, 22 Feb 2023 14:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 277E741969;
	Wed, 22 Feb 2023 14:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 277E741969
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 776E51BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CC5461107
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC5461107
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGbHwUDBTMps for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 14:11:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0BC7610FA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F0BC7610FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:11:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="316656755"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="316656755"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 06:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="672080420"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="672080420"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga002.jf.intel.com with ESMTP; 22 Feb 2023 06:11:44 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Feb 2023 09:07:41 -0500
Message-Id: <20230222140741.35550-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677075107; x=1708611107;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fCLcHbEgMvzzi56tfMDZvPGucf+ER51FByogUMBYyzo=;
 b=gYn/jRMn4AO1b6KbhnzyD5xQt9EqfhlilXj6E1BSiT95j1Fn4XWPFxak
 0rbsK86Rsn8ucjekj+eP2zOJRWbyTxHmFFQTnRkz4vC6PPrvtSVsuA6TC
 6Q8W+DuhXEatjB4UPIf+26/5JScy7Nw0/oR8R3izkfkQdhEdotPKkdmJQ
 V2A0GSlF0fB56TSDtKnMvR4v1Jc0ndHwy6Ilh+WJnteSuyb5ideSidvBb
 iPuL1Q9Y1Bt+iw1Pz+qNE/+ANM9zuutMKK1sOD7MeOPZTN9Gp7zGzRTVI
 ad6RvrbWQWyp7iYwsSUDqGNnwqpDU7xr+Linnb/faAzs9oGNhGNG8XJRF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gYn/jRMn
Subject: [Intel-wired-lan] [PATCH net v3] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: pmenzel@molgen.mpg.de, Sebastian Basierski <sebastianx.basierski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Basierski <sebastianx.basierski@intel.com>

While using i219-LM card currently it was only possible to achieve
about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
This was caused by TSO not being disabled by default despite commit
f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
implementation. Fix that by disabling TSO during driver probe.

Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3: Changed the patch to disable TSO during the probe
 v2: Fixed commit message and comment inside the code
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 04acd1a992fa..863796acf8d7 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7529,6 +7529,14 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			    NETIF_F_RXCSUM |
 			    NETIF_F_HW_CSUM);
 
+	 /* Disable TSO for i219 to avoid transfer speed
+	  * being capped at 60%.
+	  */
+	if (hw->mac.type == e1000_pch_spt) {
+		netdev->features &= ~NETIF_F_TSO;
+		netdev->features &= ~NETIF_F_TSO6;
+	}
+
 	/* Set user-changeable features (subset of all device features) */
 	netdev->hw_features = netdev->features;
 	netdev->hw_features |= NETIF_F_RXFCS;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
