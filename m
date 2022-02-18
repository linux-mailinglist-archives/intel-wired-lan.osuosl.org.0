Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A88FC4BBAB8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 15:34:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A5D784035;
	Fri, 18 Feb 2022 14:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7xHxZBK4oOp; Fri, 18 Feb 2022 14:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97C1084C9F;
	Fri, 18 Feb 2022 14:34:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DAD21BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 14:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 495838330B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 14:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s81TauxJ4wbU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 14:34:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AFF481402
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 14:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645194844; x=1676730844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3mguA7T8gPO9xy5mz3iK3OuTX76nydO7+YHGulwGu9w=;
 b=bXe9k3ZsKw/tBBHAwHC3fQL0XbPw7cko1J5quXRWd662PMbzEpl6c+3u
 TSgy5xmnbqvEyT9Uw2zzPpXcsKvAuDtpuJ1bUVz5+jes4fnXgHKMFYeSD
 GuGPJ0UwKKwfBRXbtpaPhLvrYyX/wbgLYzYgO8T2vkBLK2v4bJriXDWW0
 LkoOhQNE6omdaFIdXs+BdaItHS0iTQikZ8f/ShOW8jRNHRbNUzBAagLAZ
 nybefSL7J9xdkbgtXcaAbw/gRfKw2a+YjAoWNF3noWyrYr8A0jOY5wA/i
 Hp/uyjract9HyVAU5stxHti6ZIWnLKpATUPyFXPqbJo+//8zisMzZQDAq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="250890553"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="250890553"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 06:34:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="682525678"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2022 06:34:02 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Feb 2022 15:32:16 +0100
Message-Id: <20220218143216.10359-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] Revert "i40e: Fix reset bw limit
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
to reset bw limit introduced a several regressions related to
creation and managing tc. Currently there are errors when creating
a tc on both pf and vf.

Error log:
[17428.783095] i40e 0000:3b:00.1: AQ command Config VSI BW allocation per TC failed = 14
[17428.783107] i40e 0000:3b:00.1: Failed configuring TC map 0 for VSI 391
[17428.783254] i40e 0000:3b:00.1: AQ command Config VSI BW allocation per TC failed = 14
[17428.783259] i40e 0000:3b:00.1: Unable to  configure TC map 0 for VSI 391

This reverts commit 3d2504663c41104b4359a15f35670cfa82de1bbf.

Fixes: 3d2504663c41 (i40e: Fix reset bw limit when DCB enabled with 1 TC)
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed commit message
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
