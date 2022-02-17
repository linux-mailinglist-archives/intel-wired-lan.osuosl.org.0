Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21CA4B9C5D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 10:47:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58F9241E0F;
	Thu, 17 Feb 2022 09:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UtI5kcCttPxp; Thu, 17 Feb 2022 09:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0798E40185;
	Thu, 17 Feb 2022 09:47:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 518821BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 09:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E126410AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 09:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXCWbip7sfke for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 09:47:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62476410A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 09:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645091240; x=1676627240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vW6O+ba9edmuHK1ahVbvGP4Z1JiaQrHxB1I3RfASvlI=;
 b=CZGfJuoFzpSdTVj//iEWC+jTveKWnmUVqlioa+XEc846Zer+iZdOJ7UR
 NhX/Zu6cPj+BXZeZI2jyhDMo3mJiWQZAIfz3Qlk7dVFprTlkyTD+N6yj0
 LhFjsn3BZo1TAdAsWkr2GQWp4mlfMxbPT4GGOsOpdGkubuwrpMtZfU6tt
 8c3ysR42TfiOKOAaWH7VMiEYIH8ci/BsLVLHfqoPcBJrF64kEpHH8Nepp
 lPoy9CjHOCzQdxgPLqXF199z8iV7OCjjSa2ik2sMWBBQTfBqmh2PEWgxK
 sP7e040Qb9ANhPthFZmRDkGHC1vtOwcNK3QnMmBYLKKqFSRHfJbxZXwtf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275426148"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="275426148"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 01:47:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="589242964"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 17 Feb 2022 01:47:18 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Feb 2022 10:45:32 +0100
Message-Id: <20220217094532.14543-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] Revert "i40e: Fix reset bw limit
 when DCB enabled with 1 TC"
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Revert of a patch that instead of fixing a AQ error when trying
to reset bw limit introduced a several regression related to
creation and managing tc. Currently there are errors when creating
a tc on both pf and vf.

This reverts commit 3d2504663c41104b4359a15f35670cfa82de1bbf.

Fixes: 3d250466 (i40e: Fix reset bw limit when DCB enabled with 1 TC)
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8572993..2f8ddfa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5372,15 +5372,7 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 	/* There is no need to reset BW when mqprio mode is on.  */
 	if (pf->flags & I40E_FLAG_TC_MQPRIO)
 		return 0;
-
-	if (!vsi->mqprio_qopt.qopt.hw) {
-		if (pf->flags & I40E_FLAG_DCB_ENABLED)
-			goto skip_reset;
-
-		if (IS_ENABLED(CONFIG_I40E_DCB) &&
-		    i40e_dcb_hw_get_num_tc(&pf->hw) == 1)
-			goto skip_reset;
-
+	if (!vsi->mqprio_qopt.qopt.hw && !(pf->flags & I40E_FLAG_DCB_ENABLED)) {
 		ret = i40e_set_bw_limit(vsi, vsi->seid, 0);
 		if (ret)
 			dev_info(&pf->pdev->dev,
@@ -5388,8 +5380,6 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 				 vsi->seid);
 		return ret;
 	}
-
-skip_reset:
 	memset(&bw_data, 0, sizeof(bw_data));
 	bw_data.tc_valid_bits = enabled_tc;
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
