Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B244B7C67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDC1340566;
	Wed, 16 Feb 2022 01:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NsojFANgPXn4; Wed, 16 Feb 2022 01:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 792954056D;
	Wed, 16 Feb 2022 01:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1991B1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 251654052D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GG_2V9RJMQKP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 462084056A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975098; x=1676511098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gEB1JrV2Od880m4Gy+rHG17i6nKd11Y0hSYUA+nzNZc=;
 b=FzeEWH9gbpy+1exMZqo8obhnyualUfY0NqO+HvSU4LjYWLU6HhMPZKDN
 FCeozEQ3yyPUfNoT7O7nGuXHj42Q5i3CY+4l2qkYx4D1xPZH6UEiFQSZD
 T9C5ass1K2UBu1gFJJXFDhWLxcp21JDf6QRbf0fiWnBBuZRYppqxFltZX
 7yFFt7i2xbtvCXggsZFvqKFrvPeYlHwuoUARY5qrso1+n/JEvK+xIBaTk
 ubeX2Wy3wZzHg5dLgZAjidpd15eG4jnHY31OeB/T4FP55/Tin0rVewjFH
 xRSrqYkzoqt8wUpb+11Gy/DGHzJKAL7h1J8LPQ4NaQp+b70v+Iv/vYBV+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237903431"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237903431"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="588077360"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Feb 2022 17:31:23 -0800
Message-Id: <20220216013127.3263153-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216013127.3263153-1-jacob.e.keller@intel.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 07/11] ice: use ice_for_each_vf
 for iteration during removal
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

When removing VFs, the driver takes a weird approach of assigning
pf->num_alloc_vfs to 0 before iterating over the VFs using a temporary
variable.

This logic has been in the driver for a long time, and seems to have
been carried forward from i40e.

We want to refactor the way VFs are stored, and iterating over the data
structure without the ice_for_each_vf interface impedes this work.

The logic relies on implicitly using the num_alloc_vfs as a sort of
"safe guard" for accessing VF data.

While this sort of guard makes sense for Single Root IOV where all VFs
are added at once, the data structures don't work for VFs which can be
added and removed dynamically. We also have a separate state flag,
ICE_VF_DEINIT_IN_PROGRESS which is a stronger protection against
concurrent removal and access.

Avoid the custom tmp iteration and replace it with the standard
ice_for_each_vf iterator. Delay the assignment of num_alloc_vfs until
after this loop finishes.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 6351af58f74e..3e2357460f34 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -500,7 +500,7 @@ void ice_free_vfs(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	unsigned int tmp, i;
+	unsigned int i;
 
 	if (!pf->vf)
 		return;
@@ -519,10 +519,7 @@ void ice_free_vfs(struct ice_pf *pf)
 	else
 		dev_warn(dev, "VFs are assigned - not disabling SR-IOV\n");
 
-	tmp = pf->num_alloc_vfs;
-	pf->num_qps_per_vf = 0;
-	pf->num_alloc_vfs = 0;
-	for (i = 0; i < tmp; i++) {
+	ice_for_each_vf(pf, i) {
 		struct ice_vf *vf = &pf->vf[i];
 
 		mutex_lock(&vf->cfg_lock);
@@ -558,6 +555,8 @@ void ice_free_vfs(struct ice_pf *pf)
 	if (ice_sriov_free_msix_res(pf))
 		dev_err(dev, "Failed to free MSIX resources used by SR-IOV\n");
 
+	pf->num_qps_per_vf = 0;
+	pf->num_alloc_vfs = 0;
 	devm_kfree(dev, pf->vf);
 	pf->vf = NULL;
 
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
