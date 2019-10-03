Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEFEC9DB0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2019 13:47:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6AF4805E1;
	Thu,  3 Oct 2019 11:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sRQCG2Pkgm7o; Thu,  3 Oct 2019 11:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2751287722;
	Thu,  3 Oct 2019 11:47:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BA231BF964
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 11:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2528E20527
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 11:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUm-2Pel+L9n for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 11:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 68955203AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 11:47:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 04:47:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="191244889"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2019 04:47:01 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2019 14:47:01 +0300
Message-Id: <20191003114701.33966-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Clean up unused shadow_vfta
 pointer
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

VLAN filter table array not implemented yet and shadow_vfta pointer
not used. Clean up the code and remove the unused shadow_vfta pointer.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 7e16345d836e..0868677d43ed 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -411,7 +411,6 @@ struct igc_adapter {
 	u32 tx_hwtstamp_timeouts;
 	u32 tx_hwtstamp_skipped;
 	u32 rx_hwtstamp_cleared;
-	u32 *shadow_vfta;
 
 	u32 rss_queues;
 	u32 rss_indir_tbl_init;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 52521a0bbf48..0a4bcd2d3b85 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4574,7 +4574,6 @@ static void igc_remove(struct pci_dev *pdev)
 	pci_release_mem_regions(pdev);
 
 	kfree(adapter->mac_table);
-	kfree(adapter->shadow_vfta);
 	free_netdev(netdev);
 
 	pci_disable_pcie_error_reporting(pdev);
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
