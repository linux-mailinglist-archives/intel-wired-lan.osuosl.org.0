Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE15E219A0F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 09:34:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D610265F5;
	Thu,  9 Jul 2020 07:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUg9a9oXhVpd; Thu,  9 Jul 2020 07:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93B2D20433;
	Thu,  9 Jul 2020 07:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0E9D1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 07:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DCB9A88176
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 07:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbp4PQ9vsFgS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 07:34:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C6E8880D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 07:34:18 +0000 (UTC)
IronPort-SDR: g/VtXjejP9hpWq6RKSU1PpRDb2d8tVNgU0gWEnHSjSpnjkwWH9HtPf0ZnYrHgRg7RE2Hti5Lvu
 k2weeAj5uvjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="146041620"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="146041620"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 00:34:17 -0700
IronPort-SDR: RZjehw7CU5Jc0mZLybxok/xtlGDz3szgFZl9KMKQkHPvvF+RZuOu27pGf5GX5m/sYdfOau+cRe
 nCx1g8rBEm4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="267338933"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jul 2020 00:34:16 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 10:34:16 +0300
Message-Id: <20200709073416.14126-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix static checker warning
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

drivers/net/ethernet/intel/igc/igc_mac.c:424 igc_check_for_copper_link()
error: uninitialized symbol 'link'.
This patch come to fix this warning and initialize the 'link' symbol.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Fixes: 707abf069548 ("igc: Add initial LTR support")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 674b8ad21fea..09cd0ec7ee87 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -355,8 +355,8 @@ void igc_rar_set(struct igc_hw *hw, u8 *addr, u32 index)
 s32 igc_check_for_copper_link(struct igc_hw *hw)
 {
 	struct igc_mac_info *mac = &hw->mac;
+	bool link = false;
 	s32 ret_val;
-	bool link;
 
 	/* We only want to go out to the PHY registers to see if Auto-Neg
 	 * has completed and/or if our link status has changed.  The
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
