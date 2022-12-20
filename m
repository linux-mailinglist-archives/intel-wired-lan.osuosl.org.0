Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC12651E05
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 10:50:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F241D41571;
	Tue, 20 Dec 2022 09:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F241D41571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671529845;
	bh=4auBarMbTrkjBTGUToSNw1HL3WTIeGa9s3fP4Vs5rWE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NtUkGO0jBKvt3poWmA/oxgjmEVqxUADpcUguT5Z8MnZrXOrIotdW3VCWLQDg2f4Pa
	 gdauN8M+c2iuXp3uBXccPQ0fZ+H4SpL+U37koxxtdufyNJfbI0cBKYr23s9Wo2ZAp3
	 X63wSku6ejLaaGOgFssZlUt/0PgKn9h44ZXB5jxepCyX5DgnRz6REGGleyL9UJOioZ
	 wat/jmnpUj7QXQC9xbwLiptdp0HZDutuyCZ8f6LECly9n3hAMkwkTXa74wCKRgVYT/
	 MGoArft8VGjqqQpHk/S/XTtgY/LRn93/Zg6s95dMK1IJ4zP0ac7TeoTytArzLN9SSW
	 aEc0qvNrsvKcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wY_QSt0Ai27a; Tue, 20 Dec 2022 09:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7B1441529;
	Tue, 20 Dec 2022 09:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7B1441529
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFD4C1BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96975605C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96975605C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HyzaSfn4H_JF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 09:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0027B605A2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0027B605A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="319626200"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="319626200"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 01:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="739689988"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="739689988"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Dec 2022 01:50:36 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Dec 2022 04:47:52 -0500
Message-Id: <20221220094752.1010695-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671529838; x=1703065838;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J06hS5PaGDdWb+OuFea4Gd2N+bzbnjz03YAGoDJex4o=;
 b=Z9ECdg8ixXtgNz4RnmPxPL89EHLvgMXWD33NzE8oA8YHGPgu9Sv5Py8n
 poJW/ZULpOk7UApM8I+A7AZ8FXt1TWWS/UjMVZPqBNcTtVHKtQh1Y/TR+
 /vMUTjApd8xuEPDl7YtRw8L3BHs5VAdjiKRKZOoSKUazjVi7YASrRA/Tr
 wYqlkezW8OkJGX0QwUWQNc88SOvs7FIjXi1jOctBvGRv1zyJC46GBuaCd
 GVDQN6ijbU8+stgYQnbLstf2C99x8yIZXAmxncEVo8VIHJpae2NhzE5Nh
 FBDETiZdKkMzlrTR7FQrz1LDJw9gHW6XZudqNX3LHhgJ78pR7wYhYBHVt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z9ECdg8i
Subject: [Intel-wired-lan] [PATCH net v1] e1000e: Fix TSO not being disabled
 on i219-LM card
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

While using i219-LM card currently it was only possible to achieve
about 60% of maximum speed. This was caused by TSO not being disabled
even thought it should be on this specific card. Fix that by moving the
part of the code responsible for this outside of adapter->flags & FLAG_TSO_FORCE
check.

Fixes: f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 04acd1a992fa..24f4ccb82dc4 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5307,10 +5307,6 @@ static void e1000_watchdog_task(struct work_struct *work)
 					/* oops */
 					break;
 				}
-				if (hw->mac.type == e1000_pch_spt) {
-					netdev->features &= ~NETIF_F_TSO;
-					netdev->features &= ~NETIF_F_TSO6;
-				}
 			}
 
 			/* enable transmits in the hardware, need to do this
@@ -5326,6 +5322,12 @@ static void e1000_watchdog_task(struct work_struct *work)
 			if (phy->ops.cfg_on_link_up)
 				phy->ops.cfg_on_link_up(hw);
 
+			/* Disable TSO for i219, to avoid transfer speed issue */
+			if (hw->mac.type == e1000_pch_spt) {
+					netdev->features &= ~NETIF_F_TSO;
+					netdev->features &= ~NETIF_F_TSO6;
+			}
+
 			netif_wake_queue(netdev);
 			netif_carrier_on(netdev);
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
