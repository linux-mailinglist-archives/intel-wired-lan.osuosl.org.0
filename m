Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6BF4B7C66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1EC660B6E;
	Wed, 16 Feb 2022 01:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBaNRGH8HuoN; Wed, 16 Feb 2022 01:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A439460B72;
	Wed, 16 Feb 2022 01:31:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2D731BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9CCA41617
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXw1Gb4MoRER for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 083E74160B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975098; x=1676511098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ynDggEalFvKV5QWIRP6XT8l4he3RlDIBfBkgG1UgcAU=;
 b=id6Nm+NIWFGJD8BbVw/msTVI0VY1aT3YqVx1t1LEF3KkYftXI04BkOhd
 bBjChmuUWXwwHz5kUqC7hlIW8VGuRfNEp9Y/ie7mYSKlhtJrouAZfc4U0
 I59dFAUL4kYJ9efi4A99RV59qW+AwiLb1gB1gCn43xwiCNuVUpoZDStsu
 qWOGML3wTIlPb73x6+qRpI2zRS05yI9mpDyEZdWPcgcE/5UFvivsweErV
 ahe/6oKNagAaUFYrg+6RUS74DAFTarq7D5OlH5XeILWRyFxxCO6gvKYDS
 PbD2uevCoi3exPIAGJiPHzWFDNWt1/oxpTuDCaFonO21oJ1Dt5Qs6SS92 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237903428"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237903428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="588077345"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Feb 2022 17:31:20 -0800
Message-Id: <20220216013127.3263153-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216013127.3263153-1-jacob.e.keller@intel.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 04/11] ice: move clear_malvf call
 in ice_free_vfs
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

The ice_mbx_clear_malvf function is used to clear the indication and
count of how many times a VF was detected as malicious. During
ice_free_vfs, we use this function to ensure that all removed VFs are
reset to a clean state.

The call currently is done at the end of ice_free_vfs() using a tmp
value to iterate over all of the entries in the bitmap.

This separate iteration using tmp is problematic for a planned refactor
of the VF array data structure. To avoid this, lets move the call
slightly higher into the function inside the loop where we teardown all
of the VFs. This avoids one use of the tmp value used for iteration.
We'll fix the other user in a future change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 44037d569755..c469b32f665b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -536,6 +536,12 @@ void ice_free_vfs(struct ice_pf *pf)
 			ice_free_vf_res(vf);
 		}
 
+		/* clear malicious info since the VF is getting released */
+		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs,
+					ICE_MAX_VF_COUNT, vf->vf_id))
+			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
+				vf->vf_id);
+
 		mutex_unlock(&vf->cfg_lock);
 
 		mutex_destroy(&vf->cfg_lock);
@@ -566,13 +572,6 @@ void ice_free_vfs(struct ice_pf *pf)
 		}
 	}
 
-	/* clear malicious info if the VFs are getting released */
-	for (i = 0; i < tmp; i++)
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs,
-					ICE_MAX_VF_COUNT, i))
-			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
-				i);
-
 	clear_bit(ICE_VF_DIS, pf->state);
 	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
 }
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
