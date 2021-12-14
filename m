Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BCE474019
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 11:08:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C061640528;
	Tue, 14 Dec 2021 10:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c22BPvkdwHmA; Tue, 14 Dec 2021 10:08:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6967140502;
	Tue, 14 Dec 2021 10:08:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C1571BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4559540502
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zrph5VFlBj_q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 10:08:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5C3B40467
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639476507; x=1671012507;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9ZxXQNIhGYBq8W6InzLkzFyYlNvBDtBa9/Kbsouxkbo=;
 b=NFgRmEP0ShctotBjYHTq4afS0G45erCVUDcwPYq3SSCU9e3Iu/yK6s69
 a+Sdt545N5rQ22IRSUEBGnFu4bWmafiXcEDzShHu4klDjYZ8G9EYSwEhv
 VoLeRhKISlEeSb54YyZK9QRdGZGLwfTrZRWMgA3+AXe2a6vpGWsf7N1kV
 DrA3KZ/unZ4HhtBnWI2y93kSVNjKFW6T6Pk6PLFw4qTKWqi4DKIstR2Oa
 49eN8dwEden3vMl45njHQOFgxzwKlz0YcX/PcT2nhlWl+BzT9MYMMkIey
 7S+ClE20eGRjFLKyLZJkpO8fMss/5wEzSQCQ3B3wTHoXZrVPAIayZHWK2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="325221436"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="325221436"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 02:08:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="465015651"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 14 Dec 2021 02:08:25 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 10:08:22 +0000
Message-Id: <20211214100822.5781-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset bw limit when DCB
 enabled with 1 TC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There was an AQ error I40E_AQ_RC_EINVAL when trying
to reset bw limit as part of bw allocation setup.
This was caused by trying to reset bw limit with
DCB enabled. Bw limit should not be reset when
DCB is enabled. The code was relying on the pf->flags
to check if DCB is enabled but if only 1 TC is available
this flag will not be set even though DCB is enabled.
Add a check for number of TC and if it is 1
don't try to reset bw limit even if pf->flags shows
DCB as disabled.

Fixes: fa38e30ac73f ("i40e: Fix for Tx timeouts when interface is brought up if DCB is enabled")
Suggested-by: Alexander Lobakin <alexandr.lobakin@intel.com> # Flatten
the condition
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4a6e7822b4ab..817513a744e1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5404,7 +5404,15 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 	/* There is no need to reset BW when mqprio mode is on.  */
 	if (pf->flags & I40E_FLAG_TC_MQPRIO)
 		return 0;
-	if (!vsi->mqprio_qopt.qopt.hw && !(pf->flags & I40E_FLAG_DCB_ENABLED)) {
+
+	if (!vsi->mqprio_qopt.qopt.hw) {
+		if (pf->flags & I40E_FLAG_DCB_ENABLED)
+			goto skip_reset;
+
+		if (IS_ENABLED(CONFIG_I40E_DCB) &&
+		    i40e_dcb_hw_get_num_tc(&pf->hw) == 1)
+			goto skip_reset;
+
 		ret = i40e_set_bw_limit(vsi, vsi->seid, 0);
 		if (ret)
 			dev_info(&pf->pdev->dev,
@@ -5412,6 +5420,8 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 				 vsi->seid);
 		return ret;
 	}
+
+skip_reset:
 	memset(&bw_data, 0, sizeof(bw_data));
 	bw_data.tc_valid_bits = enabled_tc;
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
