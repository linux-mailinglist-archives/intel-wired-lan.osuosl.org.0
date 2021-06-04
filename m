Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A402639BE0D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A9B5607BB;
	Fri,  4 Jun 2021 17:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ucRSasgFTHD; Fri,  4 Jun 2021 17:05:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3187E607B5;
	Fri,  4 Jun 2021 17:05:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F74E1C1170
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DB714023E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYbAo982I-vN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6F5B41DAB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: Lj8Zpo/QTjdngSOQvzuNbgFvPCxL+VG/QIthjSXGBiyR2rOIOmFY1ibqzL0GbvUqg9Ge8m5MSa
 SsbsRuvwAQbg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666477"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666477"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:03 -0700
IronPort-SDR: ai+cT1PlK62T4ZYNJBLFz+CoSgir9LzPfbxv+Vo/KId2gka2Damri0AElElOMJsGHwHk+g2lFO
 QHfm1KwtlSBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086386"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:28 -0700
Message-Id: <20210604165335.33329-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 08/15] iavf: restore MSI state on
 reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mitch Williams <mitch.a.williams@intel.com>

If the PF experiences an FLR, the VF's MSI and MSI-X configuration will
be conveniently and silently removed in the process. When this happens,
reset recovery will appear to complete normally but no traffic will
pass. The netdev watchdog will helpfully notify everyone of this issue.

To prevent such public embarrassment, restore MSI configuration at every
reset. For normal resets, this will do no harm, but for VF resets
resulting from a PF FLR, this will keep the VF working.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 06db563a6190..2c639c7ebd1b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2183,6 +2183,7 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 
 	pci_set_master(adapter->pdev);
+	pci_restore_msi_state(adapter->pdev);
 
 	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
