Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10B4BC354
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Feb 2022 01:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 746CC826C0;
	Sat, 19 Feb 2022 00:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGRfXZhTdRGB; Sat, 19 Feb 2022 00:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8382F82591;
	Sat, 19 Feb 2022 00:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A97041C11A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Feb 2022 00:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94D7740328
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Feb 2022 00:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BSePvSOUM53J for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Feb 2022 00:27:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7471940133
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Feb 2022 00:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645230448; x=1676766448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S4IJnnRty/u3sSGQoZu0aLPRCRqVDUSa+g5ci5dAHIk=;
 b=dRxWTzMC8jNbAB69ydSVYROn7Ob3CRTvE5onEdhC7AeQMOr7/Q0cZttD
 hXMQhjA+3nx0btNb5OpIcyYR9ksWuT+g1EaYRGHHUlFQY2cBgDERX2LtI
 qEzhTM9SZneXdd5W+ek6GSgyMO4JN6OIRxq+TqEQ7hGbPsTfwMbp0NoMf
 9YlFNfg2NQxik0U3SkF5Hbg7l0M3wkXFkPSAC2cWzblLgnzcdjlZnQxGO
 0eKfq3U/azwuHVyf7JHg+NKP0crLrL6nhw6wSIG8QUqSEF1xZHBAUqBeG
 uSe6KMdodiF0eE7iFXegNlq6b1dXexeqGjMkwiOYz4Jg8odoOoKhBdooG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="231873228"
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="231873228"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 16:27:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="489842081"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 16:27:27 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 18 Feb 2022 16:27:22 -0800
Message-Id: <20220219002722.2594405-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fixup! ice: convert VF storage to hash
 table with krefs and RCU
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

Rebase conflict on my end caused a missing hunk to remove the
mutex_destroy outside the ice_release_vf.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 29282dfb3a94..45fe36db076a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -666,8 +666,6 @@ void ice_free_vfs(struct ice_pf *pf)
 				vf->vf_id);
 
 		mutex_unlock(&vf->cfg_lock);
-
-		mutex_destroy(&vf->cfg_lock);
 	}
 
 	if (ice_sriov_free_msix_res(pf))

base-commit: 81003a1453e724321ed9cc9f75fb92d74884c413
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
