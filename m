Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84E73A5DA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 09:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FD6740274;
	Mon, 14 Jun 2021 07:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XzW_Uo8yI6g9; Mon, 14 Jun 2021 07:25:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E34840100;
	Mon, 14 Jun 2021 07:25:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E54821BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 07:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D326D83B2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 07:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ODEd8RrpzGuu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 07:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAF4F83B28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 07:24:57 +0000 (UTC)
IronPort-SDR: C60iQ8E0CgVRfoEhPaFWFwtiq2gB64GsP3A83zX3kbAmFFLEn5uOe8C64VdB7XUsSbXete+xet
 5aIiFtIkNQsQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="202744530"
X-IronPort-AV: E=Sophos;i="5.83,272,1616482800"; d="scan'208";a="202744530"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 00:24:57 -0700
IronPort-SDR: 8yxbK/J91mcuwyapaGc/hik0TWGwRWz1QJxNC+KQB6Ie2zzTq9XZ3ezZmtF+mGdJZhEbyqrOHT
 LhL7jKB8k0wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,272,1616482800"; d="scan'208";a="553285500"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2021 00:24:55 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Mon, 14 Jun 2021 10:24:52 +0300
Message-Id: <20210614072452.480186-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add space to the debug
 print
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

Complete to commit 3cf31b1a9eff ("e1000e: bump up timeout to
wait when ME un-configures ULP mode")
Minor fixes to allow debug prints more readable.

Fixes: 3cf31b1a9eff ("e1000e: bump up timeout to
wait when ME un-configures ULP mode")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 5b008c88beb7..a3cf0af7aedd 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1271,9 +1271,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 			usleep_range(10000, 11000);
 		}
 		if (firmware_bug)
-			e_warn("ULP_CONFIG_DONE took %dmsec.  This is a firmware bug\n", i * 10);
+			e_warn("ULP_CONFIG_DONE took %d msec.  This is a firmware bug\n", i * 10);
 		else
-			e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
+			e_dbg("ULP_CONFIG_DONE cleared after %d msec\n", i * 10);
 
 		if (force) {
 			mac_reg = er32(H2ME);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
