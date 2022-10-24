Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F6E609D1F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Oct 2022 10:50:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7478404DF;
	Mon, 24 Oct 2022 08:50:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7478404DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666601418;
	bh=KftowHYRdpEemm+Pn39q31F+3f0tiWGUeOTC0d0ZnuU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WQXXmR4Augml/lI+X2dLk2v0/hVjeqPyCbvsd6jN/V7bpfD94JObn4deyYjAMda0n
	 mnfrSA0KjWUkIKbQ0eA6Ey8aGZGRuMKxIihM19fBHMpCrJqXrneNKlZxLVgKlb+5gc
	 wwH/Pp8xcJuBA8B0f24BgiT58moUlRdbBM0bvTNes3hT08kp895c8RvnwpzkCUTpkI
	 eiU4JexuwWvmZmBLqT/upbKOsB0vj0X/C4LJ2TLnzIjME6ZqsUrAnnJcglsl4u2LrH
	 B2X5/H/yaTzi7ewBkyhxyWlL2EpUe0JRQHHs/29FJ1VHovJ1DYKb27JQa5PkzQ8s/L
	 ajz3Kh1iaeu9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5YAWYSFclzTy; Mon, 24 Oct 2022 08:50:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFAD8404C1;
	Mon, 24 Oct 2022 08:50:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFAD8404C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CF001BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Oct 2022 08:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 439FE80E55
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Oct 2022 08:50:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 439FE80E55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50N1_lhhNOHd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Oct 2022 08:50:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62FA780DF9
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62FA780DF9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Oct 2022 08:50:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="371588457"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="371588457"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 01:50:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="700094095"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="700094095"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga004.fm.intel.com with ESMTP; 24 Oct 2022 01:50:00 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Oct 2022 10:49:55 +0200
Message-Id: <20221024084955.60038-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666601410; x=1698137410;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nehaLcLQNb8wl39/6QfxLLQUyzZSGLAkIp7DcKg5STE=;
 b=KXOGrFs76uj5sD48UMWT6k1dYxKDT3z43UiY9ekrlJ+8lx4ZX5Z9XxXk
 DL6tIGi2+QU6YHA2BpTWQDVeDidXdbT505ULttiUg4vnQA497QA4taNw0
 0opAkNF7AuvxAc/8z+tQzlbe/FwPU/UfWLGr8FrRvLyD1LccWECjwSwYg
 W+iLANKOqkIQ2VY1YYLfEvSWH00i4i66sA2FHIkrYrkUgpoD3Oj9rKmOz
 J53OEusUFVtGdRMAqxkHRewOdUpGNy4pwrIc7JtW9rsbH5x2zfzeMFEiM
 katDrVKNko4Semo9W7Pl8PSKbWWsnFUH6YfHbpyIHz9UHlMb3FEr4JcBu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KXOGrFs7
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Change information
 about device removal in dmesg
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Bartosz Staszewski <bartoszx.staszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bartosz Staszewski <bartoszx.staszewski@intel.com>

Changed information about device removal in dmesg.
In function iavf_remove changed printed message from
"Remove" to "Removing" after hot vf plug/unplug.
Reason for this change is that, that "Removing" word
is better because it is clearer for the user that
the device is already being removed rather than implying
that the user should remove this device.

Signed-off-by: Bartosz Staszewski <bartoszx.staszewski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3fc572341781..a61e0e3e39b6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5083,7 +5083,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 
 	mutex_lock(&adapter->crit_lock);
-	dev_info(&adapter->pdev->dev, "Remove device\n");
+	dev_info(&adapter->pdev->dev, "Removing device\n");
 	iavf_change_state(adapter, __IAVF_REMOVE);
 
 	iavf_request_reset(adapter);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
