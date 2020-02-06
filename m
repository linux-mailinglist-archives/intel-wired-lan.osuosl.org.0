Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30514154AB2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 19:01:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1A6787BEE;
	Thu,  6 Feb 2020 18:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NoExDICym-pi; Thu,  6 Feb 2020 18:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8171E87C11;
	Thu,  6 Feb 2020 18:01:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0BDA1BF326
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 18:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9922D20382
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 18:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3NEGVCDmNJ9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 18:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 1BDAB2002D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 18:01:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 10:01:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="404560830"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2020 10:01:04 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2020 01:28:10 -0800
Message-Id: <20200206092810.26378-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Fix the conditional for
 i40e_vc_validate_vqs_bitmaps
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

From: Brett Creeley <brett.creeley@intel.com>

Commit d9d6a9aed3f6 ("i40e: Fix virtchnl_queue_select bitmap
validation") introduced a necessary change for verifying how queue
bitmaps from the iavf driver get validated. Unfortunately, the
conditional was reversed. Fix this.

Fixes: d9d6a9aed3f6 ("i40e: Fix virtchnl_queue_select bitmap validation")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 69523ac85639..56b9e445732b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2362,7 +2362,7 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (i40e_vc_validate_vqs_bitmaps(vqs)) {
+	if (!i40e_vc_validate_vqs_bitmaps(vqs)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
@@ -2424,7 +2424,7 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (i40e_vc_validate_vqs_bitmaps(vqs)) {
+	if (!i40e_vc_validate_vqs_bitmaps(vqs)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
