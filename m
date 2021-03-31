Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F9235090B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7446B849C0;
	Wed, 31 Mar 2021 21:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQOEd3EXhx1R; Wed, 31 Mar 2021 21:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88F4E84958;
	Wed, 31 Mar 2021 21:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08B5D1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3610040E92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZdgul_S6SfX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 326FC40E9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
IronPort-SDR: 2n+LuzwcpcGjF+TA1oBqdYyLlv9b5b/V2WyBwB43AeospTAsBX6r4B5tTUu8Y1aM+92kP8trJn
 UqKcP62nrbIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117308"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117308"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:52 -0700
IronPort-SDR: kaaiYrLEA+e6QCwiuE3E0ULsvl8pA3qtDeIscfqadHt6NAfyff797kMUNU/oxAS7iopqBXoedo
 cX/AUqxzkdgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819640"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:01 -0700
Message-Id: <20210331211708.55205-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 06/13] ice: print name in /proc/iomem
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The driver previously printed it's PCI address in
the name field for the pci resource, which when displayed
via /proc/iomem, would print the same thing twice.

It's more useful for debugging to see the driver name, as
most other modules do.

Here's a diff of before and after this change:
     99100000-991fffff : 0000:3b:00.1
   9a000000-a04fffff : PCI Bus 0000:3b
     9a000000-9bffffff : 0000:3b:00.1
-      9a000000-9bffffff : 0000:3b:00.1
+      9a000000-9bffffff : ice
     9c000000-9dffffff : 0000:3b:00.0
-      9c000000-9dffffff : 0000:3b:00.0
+      9c000000-9dffffff : ice
     9e000000-9effffff : 0000:3b:00.1
     9f000000-9fffffff : 0000:3b:00.0
     a0000000-a000ffff : 0000:3b:00.1

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0a01acae6c96..1f88faab3ada 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4020,7 +4020,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (err)
 		return err;
 
-	err = pcim_iomap_regions(pdev, BIT(ICE_BAR0), pci_name(pdev));
+	err = pcim_iomap_regions(pdev, BIT(ICE_BAR0), dev_driver_string(dev));
 	if (err) {
 		dev_err(dev, "BAR0 I/O map error %d\n", err);
 		return err;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
