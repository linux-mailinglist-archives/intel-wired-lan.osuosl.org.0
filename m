Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 293C78D2C19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 07:13:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CEB98204F;
	Wed, 29 May 2024 05:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lo5c-HB5Z-Yb; Wed, 29 May 2024 05:13:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D77F82045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716959597;
	bh=U3obBKhq9tAGus7EUQDB4FnGYUCYuZUuD5PPszuZFhk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pQx8OW3D1vYE1nzPXuzI4oikU/yQAZG9sWdCEGJG8PztmQVfpJIjAs4szaicHVaaf
	 Gk8V7N01i3qpuG5vertcsgdSHNNQBWfhFWtXzgAq52O3khJoq8PdtTH2ERgvZohHRH
	 RZU9+a4KgdTDPxPQ+Sao4S5NOzBiVu7QtMCvOiaJboNvdpdSvf50WZkZmcBfvg+GKX
	 ICfY4RB4ZOFxzpfUEvw8AFMqZ40EheTvRq/RXLydckDlID96eW5/xWq+HQ2bSEE7Tr
	 zvdbpSIkxvThvrxUc6fFlTFSzYX0shUWFXyJ4uxHAEcpN1wJpfbMjrNHufEXDuHzAo
	 mOODALsDeXtkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D77F82045;
	Wed, 29 May 2024 05:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8ED1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 05:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 601684019D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 05:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LgQnGqU44NvG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 05:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 557844021B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 557844021B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 557844021B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 05:13:09 +0000 (UTC)
X-CSE-ConnectionGUID: m3bw8B9MRxykFi0P5dFMkA==
X-CSE-MsgGUID: KjIBczL0TBWf60jQz+u52w==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13509092"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="13509092"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 22:13:10 -0700
X-CSE-ConnectionGUID: ErN4Reb9TUSQRJgV7vww2Q==
X-CSE-MsgGUID: wHF60YUyRp+wje/ErJeLgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35776835"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by orviesa006.jf.intel.com with ESMTP; 28 May 2024 22:13:08 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 08:13:07 +0300
Message-Id: <20240529051307.3094901-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716959591; x=1748495591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+AKb4Zn2EtF/+Q4tqZV3yDCulTSvpnNgEQko/OKghi8=;
 b=beI7UcnniT/DKVaACmxxhevgYbNTRUDkx2qYMn6+qr1itPdsjrn4oUq7
 7wTBKE49JkTk4bYJFk7u06MPvFSJEEYbIZdej7zlvJWHdHm1wpxjv1KVy
 IUBsVa65jo1qGwD+N9mPvCpKHS1+H1rNlo3jAqKeWCjWgAzNHRgyxRzzd
 JvQr8Veb9phPOwI1vxW9jrm3PhDBVPv3/u/vynqo3UywAHrw7rGXtE6wv
 FAcnOFBae88ogwDY87P5tLg660Fw1JC0jAe6WAHooN+4hsvaC5zNRpyXF
 X+4xcP1VkdL22tJVt/o7sXFkf2FnOxQFxELcSRWLTFdzwwbGKT6/oZACE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=beI7Ucnn
Subject: [Intel-wired-lan] [iwl-net v1 1/1] Revert "igc: fix a log entry
 using uninitialized netdev"
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit 86167183a17e03ec77198897975e9fdfbd53cb0b.

igc_ptp_init() needs to be called before igc_reset(), otherwise kernel
crash could be observed. Following the corresponding discussion [1] and
[2] revert this commit.

Link: https://lore.kernel.org/all/8fb634f8-7330-4cf4-a8ce-485af9c0a61a@int
el.com/ [1]
Link: https://lore.kernel.org/all/87o78rmkhu.fsf@intel.com/ [2]
Fixes: 86167183a17e ("igc: fix a log entry using uninitialized netdev")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 305e05294a26..87b655b839c1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7032,6 +7032,8 @@ static int igc_probe(struct pci_dev *pdev,
 	device_set_wakeup_enable(&adapter->pdev->dev,
 				 adapter->flags & IGC_FLAG_WOL_SUPPORTED);
 
+	igc_ptp_init(adapter);
+
 	igc_tsn_clear_schedule(adapter);
 
 	/* reset the hardware with the new settings */
@@ -7053,9 +7055,6 @@ static int igc_probe(struct pci_dev *pdev,
 	/* Check if Media Autosense is enabled */
 	adapter->ei = *ei;
 
-	/* do hw tstamp init after resetting */
-	igc_ptp_init(adapter);
-
 	/* print pcie link status and MAC address */
 	pcie_print_link_status(pdev);
 	netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);
-- 
2.34.1

