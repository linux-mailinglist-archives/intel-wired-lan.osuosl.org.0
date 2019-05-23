Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E7E274C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2019 05:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EEF6487A56;
	Thu, 23 May 2019 03:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8FLro07boYY8; Thu, 23 May 2019 03:23:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FA1687D36;
	Thu, 23 May 2019 03:23:13 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBFE61BF2FF
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2019 03:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B820287A96
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2019 03:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kPlhwbq47C+W for <intel-wired-lan@osuosl.org>;
 Thu, 23 May 2019 03:23:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4290B87A56
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2019 03:23:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 20:23:11 -0700
X-ExtLoop1: 1
Received: from shbuild888.sh.intel.com ([10.239.147.114])
 by fmsmga007.fm.intel.com with ESMTP; 22 May 2019 20:23:10 -0700
From: Feng Tang <feng.tang@intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Aaron F Brown <aaron.f.brown@intel.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org
Date: Thu, 23 May 2019 11:22:33 +0800
Message-Id: <20190523032233.29277-1-feng.tang@intel.com>
X-Mailer: git-send-email 2.14.1
Subject: [Intel-wired-lan] [RESEND PATCH] intel-ethernet: warn when fatal
 read failure happens
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Failed in reading the HW register is very serious for igb/igc driver,
as its hw_addr will be set to NULL and cause the adapter be seen as
"REMOVED".

We saw the error only a few times in the MTBF test for suspend/resume,
but can hardly get any useful info to debug.

Adding WARN() so that we can get the necessary information about
where and how it happens, and use it for root causing and fixing
this "PCIe link lost issue"

This affects igb, igc.

Signed-off-by: Feng Tang <feng.tang@intel.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 39f33afc479c..e5b7e638df28 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -753,6 +753,7 @@ u32 igb_rd32(struct e1000_hw *hw, u32 reg)
 		struct net_device *netdev = igb->netdev;
 		hw->hw_addr = NULL;
 		netdev_err(netdev, "PCIe link lost\n");
+		WARN(1, "igb: Failed to read reg 0x%x!\n", reg);
 	}
 
 	return value;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 34fa0e60a780..28072b9aa932 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3934,6 +3934,7 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 		hw->hw_addr = NULL;
 		netif_device_detach(netdev);
 		netdev_err(netdev, "PCIe link lost, device now detached\n");
+		WARN(1, "igc: Failed to read reg 0x%x!\n", reg);
 	}
 
 	return value;
-- 
2.14.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
