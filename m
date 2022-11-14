Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D62CA6280E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 601A58197D;
	Mon, 14 Nov 2022 13:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 601A58197D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431538;
	bh=5q8Jx0RCvetMATsWuZMwio6ec79x1f62yKZFQPsIjAA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V8Xi2MRvVwM+hm9gBsPUPeuEgDvAybvU4QFdhursOEftunZLQIhz7ypjvF01tY4q0
	 ReMIk2k2EYWHjLe+d4OLeE/Sv4Aby6StM6ADtJ/nCpXmkrTQdoBDvxLvDnn9+HWqGm
	 0B4v/dAy9V6zL2wlqPScOrGlzwDkZH77hMqHL9456+bKxgXM5ugtFKU0Zfb9fZZsoj
	 eZqUfNM/Qbz9EVdCsSI6DT4IvbJlc06JMDV8IPOLX8NLOUe9bZh564SCCv7ma6xINZ
	 IU/N73yaROWQ9LIRs4+10uW2UGEo2HNdEmrtUJBziP7tyhORArDoVl6CRbX5OF593U
	 ZqHUZfoMVd4AA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wst1cGp4AYu; Mon, 14 Nov 2022 13:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B0E98186B;
	Mon, 14 Nov 2022 13:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B0E98186B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43D051BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CAB360DF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CAB360DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id biHlCQ2jpvpM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0519E60DCA
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0519E60DCA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310672421"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310672421"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:12:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616305911"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616305911"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:11:55 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:44 +0100
Message-Id: <20221114125755.13659-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431529; x=1699967529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RGhxY1WcWjeK9Ck3s1XWaiH0nTPWhb8gwqUkEEZ9TeY=;
 b=NDJr5x2i3ROJGuhY0zcDUbQ3y5bnBM+KEa0SNhRevaa8RVE8rU/p05hP
 c4exPqwN+Qpo56vjHNZr9d4+v/XTZgO37uh1McnMAlf9WfSb1YQ2s6/bF
 pokMOQ4TKrN6yJKDCfkakUehbiyWXgAwzgp3fwkex3EO1P2+y/bxUVWsV
 l3yWgsFYJ6t7aqDe1BjLAhLTxCGPqSngHpNVvw+6JDjtdbcKHHwDjISQN
 XGzusdUga5Y87kp+DANbSHTsSc+XHKbtmmI1jPoY6uQjgIQInnqoxpV6L
 Lhsz3TrZCjPp4Zl4UMNcnq27QT2Iga+d5xSEvXWVHE8QRaQ7bG1G/1LDD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NDJr5x2i
Subject: [Intel-wired-lan] [PATCH net-next 02/13] ice: alloc id for RDMA
 using xa_array
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use xa_array instead of deprecated ida to alloc id for RDMA aux driver.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 579d2a433ea1..e6bc2285071e 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -6,7 +6,7 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
-static DEFINE_IDA(ice_aux_ida);
+static DEFINE_XARRAY_ALLOC1(ice_aux_id);
 
 /**
  * ice_get_auxiliary_drv - retrieve iidc_auxiliary_drv struct
@@ -349,8 +349,9 @@ int ice_init_rdma(struct ice_pf *pf)
 		return 0;
 	}
 
-	pf->aux_idx = ida_alloc(&ice_aux_ida, GFP_KERNEL);
-	if (pf->aux_idx < 0) {
+	ret = xa_alloc(&ice_aux_id, &pf->aux_idx, NULL, XA_LIMIT(1, INT_MAX),
+		       GFP_KERNEL);
+	if (ret) {
 		dev_err(dev, "Failed to allocate device ID for AUX driver\n");
 		return -ENOMEM;
 	}
@@ -371,7 +372,7 @@ int ice_init_rdma(struct ice_pf *pf)
 	ice_free_rdma_qvector(pf);
 err_reserve_rdma_qvector:
 	pf->adev = NULL;
-	ida_free(&ice_aux_ida, pf->aux_idx);
+	xa_erase(&ice_aux_id, pf->aux_idx);
 	return ret;
 }
 
@@ -386,5 +387,5 @@ void ice_deinit_rdma(struct ice_pf *pf)
 
 	ice_unplug_aux_dev(pf);
 	ice_free_rdma_qvector(pf);
-	ida_free(&ice_aux_ida, pf->aux_idx);
+	xa_erase(&ice_aux_id, pf->aux_idx);
 }
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
