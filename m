Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 279E32328AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 181C788246;
	Thu, 30 Jul 2020 00:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjlxh6E74LfH; Thu, 30 Jul 2020 00:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 907E18825B;
	Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3609C1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 32F36877E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zh7KLk-8VmR2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B842F87C50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
IronPort-SDR: wbTBqWo8JQVqIBymLYjR8QCtFhLzr5svb+xxE4BtHKjq0aDqy1pdJcRToKtO565qN8SztgxyZd
 dr4xUFFgGA4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004468"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004468"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: lElGJRfp1onLEVaW8UHy7ezA+RB8ZfuiRKvN8tTyKWgJS8cE2MSDHoIOU2rIeTVw82NOLvwj4m
 9jw3MsiX/DvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908827"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:50 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:18 -0700
Message-Id: <20200730001922.52568-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 09/13] ice: Graceful error handling in
 HW table calloc failure
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

From: Surabhi Boob <surabhi.boob@intel.com>

In the ice_init_hw_tbls, if the devm_kcalloc for es->written fails, catch
that error and bail out gracefully, instead of continuing with a NULL
pointer.

Fixes: 32d63fa1e9f3 ("ice: Initialize DDP package structures")
Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index d59869b2c65e..d8ada9675650 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -3152,9 +3152,13 @@ enum ice_status ice_init_hw_tbls(struct ice_hw *hw)
 					     sizeof(*es->ref_count),
 					     GFP_KERNEL);
 
+		if (!es->ref_count)
+			goto err;
+
 		es->written = devm_kcalloc(ice_hw_to_dev(hw), es->count,
 					   sizeof(*es->written), GFP_KERNEL);
-		if (!es->ref_count)
+
+		if (!es->written)
 			goto err;
 	}
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
