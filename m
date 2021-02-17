Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADADB31E044
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Feb 2021 21:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 207358676C;
	Wed, 17 Feb 2021 20:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sdYTfaw8XCsc; Wed, 17 Feb 2021 20:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 169448671C;
	Wed, 17 Feb 2021 20:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED9541BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 20:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E64F1851AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 20:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HrgmwIRBlX-R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Feb 2021 20:28:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C044851AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 20:28:30 +0000 (UTC)
IronPort-SDR: rAFF+J/J9OokFsi2LQpTBqxbdWJWZc2HgOWJIwsyP3s4S3aOKdII+KbA13aJO/qtqiBlbn8WyD
 q/wfUr9PQ4iQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="268162083"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="268162083"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 12:28:30 -0800
IronPort-SDR: FI4twgDFDm6tAxwgE6L4mAEE139oNktm6QUgMvKEl2DjoycgN0ov6PjAn9r6tB06ZaJ/rjcEeh
 4hnt0OYEYXdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="426871981"
Received: from amlin-018-053.igk.intel.com (HELO 10.252.34.83) ([10.102.18.53])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Feb 2021 12:28:29 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Feb 2021 20:21:19 +0000
Message-Id: <20210217202119.228020-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix inconsistent indenting
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixed new static analysis findings:
"warn: inconsistent indenting" - introduced lately,
reported with lkp and smatch build.

Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based DCB")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 65fed08..c517209 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6739,9 +6739,9 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 			set_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
 			set_bit(__I40E_CLIENT_L2_CHANGE, pf->state);
 		}
-	/* registers are set, lets apply */
-	if (pf->hw_features & I40E_HW_USE_SET_LLDP_MIB)
-		ret = i40e_hw_set_dcb_config(pf, new_cfg);
+		/* registers are set, lets apply */
+		if (pf->hw_features & I40E_HW_USE_SET_LLDP_MIB)
+			ret = i40e_hw_set_dcb_config(pf, new_cfg);
 	}
 
 err:
@@ -10594,7 +10594,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 			i40e_aq_set_dcb_parameters(hw, false, NULL);
 			dev_warn(&pf->pdev->dev,
 				 "DCB is not supported for X710-T*L 2.5/5G speeds\n");
-				 pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
+			pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
 		} else {
 			i40e_aq_set_dcb_parameters(hw, true, NULL);
 			ret = i40e_init_pf_dcb(pf);

base-commit: b24edd0ad20365ec6d3ed342b58f65a2eaa7eded
-- 
2.18.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
