Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91355392170
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 22:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0066860674;
	Wed, 26 May 2021 20:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPCOlxVAWf6T; Wed, 26 May 2021 20:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12398605EB;
	Wed, 26 May 2021 20:23:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0D371BF35C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 May 2021 20:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB43340621
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 May 2021 20:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ze--oh8i9X_h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 May 2021 20:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD29640620
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 May 2021 20:23:24 +0000 (UTC)
IronPort-SDR: DoxeiRqc7n4xHyelwWV1Be10bJAjnnl+felsRENPeo7pKdP1DVX5pQ38uIZvQNbJl0AaoYZVmb
 zBwY+k2E4rmQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202328170"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202328170"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 13:23:23 -0700
IronPort-SDR: vP7ahVeiHRE1VPWwOcEazezHklg0IoEnAjyoTlHjJnRb/a0bRdYB8DW5H7AwiQKYz2ZElo1rmV
 +0p7SthFv9vA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="472142323"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 13:23:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 26 May 2021 13:23:13 -0700
Message-Id: <20210526202313.3354027-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fixup! ice: add support for sideband
 messages
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The check in ice_clean_sbq_subtask for whether to exit early
accidentally checked for if the sbq was supported. This check should be
negated, so that we only try to clean the sideband queue on devices
which support it. Otherwise without this fix, on devices that do not
support the sideband queue, the following message may get spammed into
the log:

ice 0000:af:00.0: Sideband Receive Queue event error ICE_ERR_AQ_EMPTY

Additionally, on devices which do support the sideband queue, the
receive portion will never be properly cleaned.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

Tony, if you wouldn't mind squashing this into the noted patch in the
description before we send this to netdev.

 drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3cc1237a2ebe..ca80b858ef20 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1430,7 +1430,8 @@ static void ice_clean_sbq_subtask(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	if (ice_is_sbq_supported(hw)) {
+	/* Nothing to do here if sideband queue is not supported */
+	if (!ice_is_sbq_supported(hw)) {
 		clear_bit(ICE_SIDEBANDQ_EVENT_PENDING, pf->state);
 		return;
 	}

base-commit: 80e0251735737d53ea5dc85e2cf5596df721ddc5
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
