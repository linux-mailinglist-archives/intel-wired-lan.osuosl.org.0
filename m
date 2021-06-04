Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8002939BDE3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1292984319;
	Fri,  4 Jun 2021 17:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSZ5UKMaWaYR; Fri,  4 Jun 2021 17:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27EF0843E2;
	Fri,  4 Jun 2021 17:00:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E69CE1BF873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E384843A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YSxGi054UHG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAE85843A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:28 +0000 (UTC)
IronPort-SDR: /6ENPWv6vVw2tCwkF4j1XlF5L3M2ihes/iNf/QnyRGO3Ucj6vkH99XKPtiJb8ogLNGzw+KGdK+
 ZAyKapn2jn8Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289960222"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289960222"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:00:27 -0700
IronPort-SDR: /tD/udISoQ1V6+QaJS3ot4wGNFAnlkRkP5Ro6/vsp0AhKHBWF+W9BA8+lu0VRV9UmlKdg860Sl
 NeYcxo0a2rvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="401017758"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2021 10:00:26 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:48:55 -0700
Message-Id: <20210604164900.33156-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 3/8] iavf: don't clear a lock we don't
 hold
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

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

In iavf_configure_clsflower() the function will bail out if it is unable
to obtain the crit_section lock in a reasonable time. However, it will
clear the lock when exiting, so fix this.

Fixes: 640a8af5841f ("i40evf: Reorder configure_clsflower to avoid deadlock on error")
Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 989de52658dc..58624be64010 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3027,8 +3027,10 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 
 	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
 				&adapter->crit_section)) {
-		if (--count == 0)
-			goto err;
+		if (--count == 0) {
+			kfree(filter);
+			return err;
+		}
 		udelay(1);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
