Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAD47FD39A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 11:09:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD18B61435;
	Wed, 29 Nov 2023 10:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD18B61435
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701252583;
	bh=otmhd0YLsx/EDofzQitVerxZinN1V4tdCKebCwsz9+I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5QMcOHaHYbJPTlYMmuaWPIFFYYG7kIkGz1etXW7tPqZZPfX6RShitn6Q5pcjkNU6z
	 84Fis+s94gu9InQUjB2lSTN4vAwkFTTOJY62WV3oxgT03V5bWyVbK9pJTQ8lh9TljA
	 WZAIlBrwJXTRFMoLr2JyHNHYAjJ2UbzFD7mvTkV4rFXktp5lSZAEhcGEhPNrGFeRPQ
	 bU9JiqNDJe0hHwZZtTBz5Btx8YGMnKRYIMI8E0A4MmYmj7VLiO8nH41bNTACB0X9bl
	 Zy/gw8FyLmiPagPzMTfvt+dmvbyafjvfYN8Cfwz2AOzu8KZonvA5cLfcSbL/uKBGRn
	 IP8r5eSfmo2lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdnJMfLPhwhI; Wed, 29 Nov 2023 10:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9210960EDB;
	Wed, 29 Nov 2023 10:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9210960EDB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E37601BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 10:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA0A284388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 10:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA0A284388
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rUHbGwJMHHT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 10:09:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1094D82157
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 10:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1094D82157
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="372503089"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="372503089"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 02:09:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="1016218517"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="1016218517"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga006.fm.intel.com with ESMTP; 29 Nov 2023 02:09:34 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 29 Nov 2023 11:09:33 +0100
Message-Id: <20231129100933.2753577-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701252577; x=1732788577;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fcXVVs2hlViGP6v0YIAXDTaYl5u9PA6AXiePriwmiyU=;
 b=YBIhur1mQuTPIePifqF4nrdvUsdwVxdOn/Na1xsGF+1I4oeBDVhvQE9b
 Ib/amtsuTONU7U8toJKk5Ep8Y3stAd4QiT6rHwAbo+Az8+Kl5thwaBHta
 aaJ6JvADg7y15lFGrEFvnnVAy7VOTp+YJMGPnKsaqyBWdGYuzgeazyMfJ
 A/mjTG1ynLE5sDkR+EJySDSfUixaYI5IIt2C1HmAuU/LaxfH9gSWD34Z8
 je/QVg5bckftCAFE+V7ewcMP1iLz39DNHhQeQ4SxEWhmJixrluxPPlM+I
 FrIM3BtP7TWEzCMdVCL5jT6Z5fB+CfbsBE0QTJTdP7cx6JGOdaOQFeYUY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YBIhur1m
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e:Fix filter input checks
 to prevent config with invalid values
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
Cc: netdev@vger.kernel.org, Andrii Staikov <andrii.staikov@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

Prevent VF from configuring filters with unsupported actions or use
REDIRECT action with invalid tc number. Current checks could cause
out of bounds access on PF side.

Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 3f99eb1..031b15c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3521,16 +3521,16 @@ static int i40e_validate_cloud_filter(struct i40e_vf *vf,
 	bool found = false;
 	int bkt;
 
-	if (!tc_filter->action) {
+	if (tc_filter->action != VIRTCHNL_ACTION_TC_REDIRECT) {
 		dev_info(&pf->pdev->dev,
-			 "VF %d: Currently ADq doesn't support Drop Action\n",
-			 vf->vf_id);
+			 "VF %d: ADQ doesn't support this action (%d)\n",
+			 vf->vf_id, tc_filter->action);
 		goto err;
 	}
 
 	/* action_meta is TC number here to which the filter is applied */
 	if (!tc_filter->action_meta ||
-	    tc_filter->action_meta > I40E_MAX_VF_VSI) {
+	    tc_filter->action_meta > vf->num_tc) {
 		dev_info(&pf->pdev->dev, "VF %d: Invalid TC number %u\n",
 			 vf->vf_id, tc_filter->action_meta);
 		goto err;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
