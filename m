Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F0E1486C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2020 15:19:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B79686D7B;
	Fri, 24 Jan 2020 14:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oz7mWyuMJJ3d; Fri, 24 Jan 2020 14:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2894686D77;
	Fri, 24 Jan 2020 14:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBB11BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2AECD203EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SI2nGo5Kx3Bp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2020 14:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 590F5203CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:19:02 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35123214AF;
 Fri, 24 Jan 2020 14:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875542;
 bh=gITOntd6JjepyRqHUzvVgH4Fg1uLC6E0WP0cBUWuEUc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aZDL0aGvq+AmgZKv/WjMhXqCszbGB/kN8Fd7OsLWn7cv08ybS8qPHk1C9/idCdkUA
 Xm9AcHLBPQW+9BlJ1ETujyKrrC/1nfhYgzaP5c8anXnILiMgW+7Jq9DT0gDHd59JAe
 Ucewostg4O+av5HOtdprVvWKeoqSIoNcXrgW6dG4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 24 Jan 2020 09:17:08 -0500
Message-Id: <20200124141817.28793-38-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 038/107] i40e: Fix
 virtchnl_queue_select bitmap validation
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Brett Creeley <brett.creeley@intel.com>, intel-wired-lan@lists.osuosl.org,
 Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

[ Upstream commit d9d6a9aed3f66f8ce5fa3ca6ca26007d75032296 ]

Currently in i40e_vc_disable_queues_msg() we are incorrectly
validating the virtchnl queue select bitmaps. The
virtchnl_queue_select rx_queues and tx_queue bitmap is being
compared against ICE_MAX_VF_QUEUES, but the problem is that
these bitmaps can have a value greater than I40E_MAX_VF_QUEUES.
Fix this by comparing the bitmaps against BIT(I40E_MAX_VF_QUEUES).

Also, add the function i40e_vc_validate_vqs_bitmaps() that checks to see
if both virtchnl_queue_select bitmaps are empty along with checking that
the bitmaps only have valid bits set. This function can then be used in
both the queue enable and disable flows.

Suggested-by: Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 3d24408388226..3515ace0f0201 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2322,6 +2322,22 @@ static int i40e_ctrl_vf_rx_rings(struct i40e_vsi *vsi, unsigned long q_map,
 	return ret;
 }
 
+/**
+ * i40e_vc_validate_vqs_bitmaps - validate Rx/Tx queue bitmaps from VIRTHCHNL
+ * @vqs: virtchnl_queue_select structure containing bitmaps to validate
+ *
+ * Returns true if validation was successful, else false.
+ */
+static bool i40e_vc_validate_vqs_bitmaps(struct virtchnl_queue_select *vqs)
+{
+	if ((!vqs->rx_queues && !vqs->tx_queues) ||
+	    vqs->rx_queues >= BIT(I40E_MAX_VF_QUEUES) ||
+	    vqs->tx_queues >= BIT(I40E_MAX_VF_QUEUES))
+		return false;
+
+	return true;
+}
+
 /**
  * i40e_vc_enable_queues_msg
  * @vf: pointer to the VF info
@@ -2347,7 +2363,7 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if ((0 == vqs->rx_queues) && (0 == vqs->tx_queues)) {
+	if (i40e_vc_validate_vqs_bitmaps(vqs)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
@@ -2409,9 +2425,7 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if ((vqs->rx_queues == 0 && vqs->tx_queues == 0) ||
-	    vqs->rx_queues > I40E_MAX_VF_QUEUES ||
-	    vqs->tx_queues > I40E_MAX_VF_QUEUES) {
+	if (i40e_vc_validate_vqs_bitmaps(vqs)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
