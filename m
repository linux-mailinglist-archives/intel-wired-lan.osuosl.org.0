Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA5032697F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFFE46F4D2;
	Fri, 26 Feb 2021 21:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SXybHqMc_4ne; Fri, 26 Feb 2021 21:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B11B66F99F;
	Fri, 26 Feb 2021 21:29:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF9CE1BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B6F5431C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97-UHu_DKOoL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6459D43429
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
IronPort-SDR: prEHHKN+48GAqP+uMXDDRmCW1FxzTEUPyR/a/aPY5VJ0WEAE3UyrPWAd0C5NoilcAG31a/++xv
 yG+45Tl6y39w==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="186117845"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="186117845"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:56 -0800
IronPort-SDR: G8xrX+p5YHlwdslVmzqa58pCCve3DsZQQSYVgNn/U5+1qqZ56OG0lv4VCB2JAzlRykI3DnSyvk
 q6wxYTcWjQwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913441"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:55 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:24 -0800
Message-Id: <20210226211932.46683-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 05/13] ice: Increase control queue
 timeout
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

From: Fabio Pricoco <fabio.pricoco@intel.com>

250 msec timeout is insufficient for some AQ commands. Advice from FW
team was to increase the timeout. Increase to 1 second.

Fixes: 7ec59eeac804 ("ice: Add support for control queues")
Signed-off-by: Fabio Pricoco <fabio.pricoco@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index faaa08e8171b..68866f4f0eb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -31,8 +31,8 @@ enum ice_ctl_q {
 	ICE_CTL_Q_MAILBOX,
 };
 
-/* Control Queue timeout settings - max delay 250ms */
-#define ICE_CTL_Q_SQ_CMD_TIMEOUT	2500  /* Count 2500 times */
+/* Control Queue timeout settings - max delay 1s */
+#define ICE_CTL_Q_SQ_CMD_TIMEOUT	10000 /* Count 10000 times */
 #define ICE_CTL_Q_SQ_CMD_USEC		100   /* Check every 100usec */
 #define ICE_CTL_Q_ADMIN_INIT_TIMEOUT	10    /* Count 10 times */
 #define ICE_CTL_Q_ADMIN_INIT_MSEC	100   /* Check every 100msec */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
