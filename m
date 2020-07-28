Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DFA231647
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 01:38:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12EC685C47;
	Tue, 28 Jul 2020 23:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-X5LXn3Vat1; Tue, 28 Jul 2020 23:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44FF085EC1;
	Tue, 28 Jul 2020 23:38:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E23651BF990
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6BF4883A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PiA47R2zPAER for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A66B883F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
IronPort-SDR: vKEZPwSWrO7mnH4wjjjm48NqmkQkk5yVaEJsLo5MNhjSPwhN1ZVuY8gitHZ7O0OxSMRu38jAMY
 omogumxlZPBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="150501220"
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="150501220"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 16:38:15 -0700
IronPort-SDR: WVhKQ1oo4/HjBn8byB6YrHK2Ikj9zduBcWJ1yxr6LZHS8TfOYrqjywaqGDF88GP8Sp9F0juCp5
 qp7XTOTQO59A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="328484696"
Received: from dpavlopo-mobl2.amr.corp.intel.com ([10.251.22.240])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2020 16:38:15 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jul 2020 16:37:52 -0700
Message-Id: <20200728233754.65747-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728233754.65747-1-andre.guedes@intel.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/4] igc: Don't reschedule ptp_tx work
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

The ptp_tx work is scheduled only if TSICR.TXTS bit is set, therefore
TSYNCTXCTL.TXTT_0 bit is expected to be set when we check it igc_ptp_tx_
work(). If it isn't, something is really off and rescheduling the ptp_tx
work to check it later doesn't help much. This patch changes the code to
WARN_ON_ONCE() if this situation ever happens.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 79802fb4ea83..b912830ea7bb 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -410,11 +410,10 @@ static void igc_ptp_tx_work(struct work_struct *work)
 	}
 
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
-	if (tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)
-		igc_ptp_tx_hwtstamp(adapter);
-	else
-		/* reschedule to check later */
-		schedule_work(&adapter->ptp_tx_work);
+	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
+		return;
+
+	igc_ptp_tx_hwtstamp(adapter);
 }
 
 /**
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
