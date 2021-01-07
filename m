Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13202ECA59
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 07:10:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16976872D8;
	Thu,  7 Jan 2021 06:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ym-nDYzuKXBO; Thu,  7 Jan 2021 06:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 948DF872AB;
	Thu,  7 Jan 2021 06:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 393271BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 06:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 326F5872A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 06:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBgd07nAdJug for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jan 2021 06:10:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kevlo.org (ns.kevlo.org [220.134.220.36])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC7C7872A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 06:10:41 +0000 (UTC)
Received: from localhost (ns.kevlo.org [local])
 by ns.kevlo.org (OpenSMTPD) with ESMTPA id 746f951c;
 Thu, 7 Jan 2021 14:10:38 +0800 (CST)
Date: Thu, 7 Jan 2021 14:10:38 +0800
From: Kevin Lo <kevlo@kevlo.org>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Message-ID: <X/al3kv9JKN8nhFw@ns.kevlo.org>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH] igc: check return value of ret_val in
 igc_config_fc_after_link_up
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
Cc: "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Check return value from ret_val to make error check actually work.

Fixes: 4eb8080143a9 ("igc: Add setup link functionality")
Signed-off-by: Kevin Lo <kevlo@kevlo.org>
---
diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 09cd0ec7ee87..67b8ffd21d8a 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -638,7 +638,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
 	}
 
 out:
-	return 0;
+	return ret_val;
 }
 
 /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
