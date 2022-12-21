Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 691406531BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 14:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7A6B61053;
	Wed, 21 Dec 2022 13:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7A6B61053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671629278;
	bh=g5SYorXzikaUd+1Yi+3r2GDP8I1EJMoXnZFO/yyCHCQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vYPLZ4N/muEG+7piLeyUxt3fjy9syhsN5C8LwWLymT2HHwzaCNV3qwWs6fT2EQ3SA
	 yX4iVkW6jdCUypaMRerNN8rXd9e2ALhxZvixRouns1bfGbNM/1hHv7UiptZ2eQ9888
	 phDytF7UWeC+yS7ZN2M6TT3RNLwiIR1Q2vJi5TJb/eoky6fwIk1KsPM7cvXxbFEOdH
	 ByPs5P4XBoSASr1Wgg3zv9xvyirsK9vFnf4PaIT1pSEvHyc070xG/h1ojL9z/xqOOg
	 FVz4255GxxrszGNEZe6r/mnJ3OdeAZiy5bNMO2fGdeeC4FMCaV0upYRIoWZBxJo9EC
	 zvDfvXhhNs9PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_MT3ZcFGLN9; Wed, 21 Dec 2022 13:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA51C61050;
	Wed, 21 Dec 2022 13:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA51C61050
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 351D31BF284
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 13:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1956A61050
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 13:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1956A61050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffYqztvkiQbX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 13:27:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9782A60AA0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9782A60AA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 13:27:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="384217211"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="384217211"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 05:27:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="758516687"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="758516687"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2022 05:27:46 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 08:25:02 -0500
Message-Id: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671629270; x=1703165270;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lHbsIK+KaXrIox8NkiXLVL0dNhqWPoOCyRy9kLE97WQ=;
 b=awuUlo4NeV3Z6WowtSYEU6Qd1DfrVFzoEE+tTCuTNm5KMzviGbJzWatz
 J2Xtob0hInPgdUkxlM4ea16YmMx1Cl8gQFQwIcARoUjgtZNfGUz45NKiv
 EgobounKHikKOyAYXXa87zlZ502G/5sra9Zd8EkFfZtW3JEm0WoP33yGB
 HNmh/L4JJmSVoCQhJ4pUYPVXHmg8zQuWw86dcLM5u2jvXIuRvNvAT8o21
 O7bPYPvKNWb+SNdjzdygDM95qrNwUuQJpXdngTMa2UC/uPcN7a00jpA/z
 E9oFcm1O7lzcUSz9zLr1SEjuGBwRrbZWMMac7gb9fmgorcZVKd2qMO4Mv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=awuUlo4N
Subject: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While using i219-LM card currently it was only possible to achieve
about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
This was caused by TSO not being disabled by default despite commit
f29801030ac6 implementation. Fix that by moving the part of the code
responsible for this outside of adapter->flags & FLAG_TSO_FORCE check.

Fixes: f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed commit message and comment inside the code
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 04acd1a992fa..2f5cf125ff77 100644
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
@@ -5326,6 +5322,14 @@ static void e1000_watchdog_task(struct work_struct *work)
 			if (phy->ops.cfg_on_link_up)
 				phy->ops.cfg_on_link_up(hw);
 
+			/* Disable TSO for i219 to avoid transfer speed
+			 * being capped at 60%.
+			 */
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
