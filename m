Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 583E94BC129
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 21:26:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B050584C7E;
	Fri, 18 Feb 2022 20:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gW2U-ceGdfJ; Fri, 18 Feb 2022 20:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB63B83F76;
	Fri, 18 Feb 2022 20:26:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5ACC81BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4555C40114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Otr3ZqNvg2LT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 20:25:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ED20400E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645215959; x=1676751959;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4TlWTwwKk6OjflN2haesJ/4IhImYqOWtpBN33W5Z1Hw=;
 b=cLFG6gsly/t990/yfDjRqQWgBm1bxD9g3xO+jzQineGIOHDqiUfOr7HU
 zEXYqxGoMtsOtJ9Jg4orV5vx/Wzez/0CNnQSdg5JL2CTHR/5H0brQzCUz
 /PtF10TWywVAP27Y3rJRiOSW7usqImmr3vZWSaLhPExAwzZHCx2SnOtpB
 yTQAI5ULWcDMaZj/d91gaEvYC7C8tioqPUueDa9l9gGgIWeQnWV1tC8Ys
 r36lIniU0JQgAwn6YO4Ek/uR3itfikY7PUeku1ZnfEnT6X2cV/dhja1Tl
 GmSok9c+wQ/GlF91NKsle4wScJ6Aa5iwn2DAdM6ezTQLwoUCiBv9qLqYs g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="234748608"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="234748608"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:24:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="531055622"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:23:41 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 18 Feb 2022 12:23:34 -0800
Message-Id: <20220218202334.822004-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fixup! ice: fix concurrent reset and
 removal of VFs
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

One call to ice_vc_reset_vf failed to grab the VF cfg_lock. Add the
missing mutex_lock/unlock to ice_vf_lan_overflow_event.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 353c2a3755d0..1be3cd4b2bef 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2150,7 +2150,9 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	if (!vf)
 		return;
 
+	mutex_lock(&vf->cfg_lock);
 	ice_vc_reset_vf(vf);
+	mutex_unlock(&vf->cfg_lock);
 }
 
 /**

base-commit: 967260db57d52ff5e97dc07407aeeb014653b969
-- 

Noticed this gap while reviewing other refactor work I am planning on. Tony,
can you squash this into the relevant commit? Thanks.

2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
