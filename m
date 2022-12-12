Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C1664AB3A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 00:11:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A708B40526;
	Mon, 12 Dec 2022 23:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A708B40526
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670886712;
	bh=5Birng2sprBUzJPvm6FpRxJ0Ilr74Di3MSqeXPDNJiY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HPT+s23FbzYNPHVIF0XxWNLqd4ScLdtheBY19VPXmvQFTERPYHs3FsMADSrZZGds4
	 d5Mp+eqJKXgNUjw7VGsuuz2jnDJ2LqdgqemRG6c49hWYUlP1oOVIfLeKnkJi2ZrYV4
	 1Xm/4zFyx4wWy7C6NtO0hr+gsBQQM0ZAHP2Ugj+worf74Cdofa0D6RWv/FKQyMaWeY
	 FvdQQ4VeA9E6pmpxBltzeWPny9SNLgJbIZlClgAE7Gv6DskkHdhXWf0hhWYDfyy4r+
	 czXkV6KJaekSKmP2q8jccdVlrqiqEbpwwAxiV/9/dNlITJUjJTVcGjw1cVbQXYxPqz
	 G2vpV8wKp4msw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eadD3J89UzWx; Mon, 12 Dec 2022 23:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACB2E405FA;
	Mon, 12 Dec 2022 23:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACB2E405FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D80ED1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 23:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0B1E41625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 23:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0B1E41625
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDUyyiyzds2Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 23:11:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B338A410AB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B338A410AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 23:11:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="380195610"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="380195610"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:11:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679089254"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="679089254"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga008.jf.intel.com with ESMTP; 12 Dec 2022 15:11:44 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 15:11:26 -0800
Message-Id: <20221212231126.3986112-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670886705; x=1702422705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P51DKGtsbNDp8idGAL8M96g8t0DmayMECY5KT2U81cY=;
 b=R/8csoNIuVgagukgHpUc6yOkeLBrFkKzADRsXBUQ3k+hOj4Ebav/8wki
 3xUtYemqgpydXZ7OloCdCVJLZUrG3KbMes9tesr8vZOgvl9kjlltQ9FxG
 MN1akTzPBOB2SxAgIBxWnbJKN7SLfGmHaxKXc4JgMv1dLzqg7CWKcs1WT
 aqF1VeQ9iFMtUC9VbxBdGfO1v5R4q+sJ/Y7yveRM/roBZ3qlgS2hzpexG
 iztImB7OTKMyuCRz6uVfjwYvyJkJcgQzKW8NxqUPi9lfr3d8EeY1+PXF8
 B839x02xBtBhqA71hQQTTOYHw9GW6YXk9Fu6Lrl169wYJVywiVy2UM/9L
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R/8csoNI
Subject: [Intel-wired-lan] [net-queue v1 1/1] ice: switch: fix potential
 memleak in ice_add_adv_recipe()
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
Cc: Zhang Changzhong <zhangchangzhong@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Zhang Changzhong <zhangchangzhong@huawei.com>

When ice_add_special_words() fails, the 'rm' is not released, which will
lead to a memory leak. Fix this up by going to 'err_unroll' label.

Compile tested only.

Fixes: 8b032a55c1bd ("ice: low level support for tunnels")
Signed-off-by: Zhang Changzhong <zhangchangzhong@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 9b762f7972ce..61f844d22512 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5420,7 +5420,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	 */
 	status = ice_add_special_words(rinfo, lkup_exts, ice_is_dvm_ena(hw));
 	if (status)
-		goto err_free_lkup_exts;
+		goto err_unroll;
 
 	/* Group match words into recipes using preferred recipe grouping
 	 * criteria.
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
