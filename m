Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5F16E549C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 00:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7639140BB7;
	Mon, 17 Apr 2023 22:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7639140BB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681769943;
	bh=NjjIbRUZ7PcUCzNQBXIPLrYVBCDym2QpNBdeEu80GVo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iD0zbn2XlAKaqcViY7tYHdvGvAF+4uyvwIUWah/YoB3rIAfKFl3OWgiXDAVRm1IgE
	 MN9KbQ/oPczE92WqxIfjGUA6e/lY10LaXX6DtOagCl6qcffVxv04QjLALn3Dl0BHzv
	 NjEk1zfG1ud6eu5RnN7WL8p+NRsKZZ9gGCPeAf9eNqmTSlJWGxzwKgOFa9d+c0/HN2
	 oqBfijthj3oWkPmUWHSsrqQf4XHC0dGdVCtf+E/e62NGVpWm+aGutv49iaP4IUJrTH
	 FaTswv9kns2C64D3azaaKaLr/cmd1jEy57Z+GNBQR1JohgTLf9XjNTqPDhW1Zgz6S7
	 TCzU7YlGuJKVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJvreOgo2RtL; Mon, 17 Apr 2023 22:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5D9140BBB;
	Mon, 17 Apr 2023 22:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5D9140BBB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4137F1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 22:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22F4460F12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 22:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22F4460F12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LMp2QLTOdS0e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 22:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE09F60E11
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE09F60E11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 22:18:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="407916694"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="407916694"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 15:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="668253587"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="668253587"
Received: from cwallin-mobl.amr.corp.intel.com (HELO vcostago-mobl3.intel.com)
 ([10.252.134.34])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 15:18:52 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 15:18:39 -0700
Message-Id: <20230417221839.292728-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681769935; x=1713305935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tf1QCB0sO5X7ewnkTnUPPrLD6jpRZbZifVjbgVErRO0=;
 b=RN649M7GZhGAJL/iUYyyvHZ2fFERRO0Vqdmn4oNkO0PUBzXhLcIixq5f
 y11EgVnd3z6PB/lU1UjScNUdvs4BM49wogedTmk0gKwooeBzP03fkFqVq
 gVaeEAW62i0IecnzdkBTccMSiaUkQ79sDv7mlXony3x4cgLCIXcw00YdI
 ezroKs0ckNSKuWysNtcMGRnZbzBkbS/u6/x3KGdfHjJzyIDYpcaN3kdXV
 8IWjnkFdrYavVwxZQjqWPnBMCbCIVvAdRafWqsfCYN8GzJe5CmOVALVhQ
 ZYSzRBc9owTc55oMV3Jv9rVc66SHJYBbkrI/VtHByMqKPmbzgq5mPa1dZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RN649M7G
Subject: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix possible system
 crash when loading module
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
Cc: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Guarantee that when probe() is run again, PTM and PCI busmaster will be
in the same state as it was if the driver was never loaded.

Avoid an i225/i226 hardware issue that PTM requests can be made even
though PCI bus mastering is not enabled. These unexpected PTM requests
can crash some systems.

So, "force" disable PTM and busmastering before removing the driver,
so they can be renabled in the right order during probe(). This is
more like a workaround and should be applicable for i225 and i226, in
any platform.

Fixes: 1b5d73fb8624 ("igc: Enable PCIe PTM")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 25fc6c65209b..2544bb06246c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6712,6 +6712,9 @@ static void igc_remove(struct pci_dev *pdev)
 
 	igc_ptp_stop(adapter);
 
+	pci_disable_ptm(pdev);
+	pci_clear_master(pdev);
+
 	set_bit(__IGC_DOWN, &adapter->state);
 
 	del_timer_sync(&adapter->watchdog_timer);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
