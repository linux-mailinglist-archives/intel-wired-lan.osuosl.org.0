Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1577D64E85C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 09:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71EED82168;
	Fri, 16 Dec 2022 08:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71EED82168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671181122;
	bh=6h3vyZ3fx29AE6gz2sc23FSjO55M0/pIgn/5xYU/3e4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SiPAvNFRqg71eu+u8qqbU5pRUBlk8ipsX+rehCuFF507zLpVtLc3sDCe4dbzz7wRb
	 BLecsDeh5Nod6xN7HbLLWt61pVSPFUFo7wL5Dy3bWC2FRqzFT0XfnyGG/d4fsPmIml
	 00QRLAfbFOst7TvJN0X4uYxvgxnuIcJ0MNXMJJjrQ/qydhhVF/+iSUS53yA6ayfQfj
	 veGTqLzlRHQ/daKfqEt5XydXkKvSYKjPezLUuYhkM5cLQ4qA+MwEg15tdsAUAnFvMI
	 /6f8Pe3dtfyZVgZvSd3uJC/W4/M9KGFT5ZFiKXp1XMBzbTpM+ZoxOPqA2ZM8H4nmvC
	 r77+8uhxtC9FQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nP_ZjnuFoUHK; Fri, 16 Dec 2022 08:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 898DC82165;
	Fri, 16 Dec 2022 08:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 898DC82165
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06F931BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D63DE4104C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D63DE4104C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0DthJ-4V6wE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 08:58:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 425E940459
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 425E940459
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383256525"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="383256525"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 00:58:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="738471587"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="738471587"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2022 00:58:16 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 09:43:11 +0100
Message-Id: <20221216084319.11699-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
References: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671181116; x=1702717116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hQRjRJRxu6zvKZ+KBQHMEO2sO57BiWQYMINIf++VJxo=;
 b=NEB+XUmI82WKQbyvdzj8CHoMggbA4w4XuuJfLIpl82jKq8o/mRSdpViE
 5aJovb/IpqIvXllo5SWqZHa9g0wrO69PUHz4Oo+WQbeTGXKif3u+jzMBG
 +/0/gpnQHvBIDR1vCo0Dw7JM1zZqLhyEBGR495BK9eSAP/NuoSXmgK/hU
 3yyeLkhN1THZIZDWLZM10UjyO8tVgqcSV4w+leTR5CJRP0dN1bO+JupaP
 W3EcyZVdDDCBettRJ7XuGQR/91sDQ/19ynAwfuhJBWZAYkZu7Hw1rVLt3
 MuHJ8RAvnbOekhiNt4V6yReAyZhkGT1anDGDNUqWXlidGa9gWsDiTqdCf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NEB+XUmI
Subject: [Intel-wired-lan] [PATCH net-next v2 02/10] ice: alloc id for RDMA
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index 2148e49679b1..36f6d34d5cb5 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -6,7 +6,7 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
-static DEFINE_IDA(ice_aux_ida);
+static DEFINE_XARRAY_ALLOC1(ice_aux_id);
 
 /**
  * ice_get_auxiliary_drv - retrieve iidc_auxiliary_drv struct
@@ -352,8 +352,9 @@ int ice_init_rdma(struct ice_pf *pf)
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
@@ -374,7 +375,7 @@ int ice_init_rdma(struct ice_pf *pf)
 	ice_free_rdma_qvector(pf);
 err_reserve_rdma_qvector:
 	pf->adev = NULL;
-	ida_free(&ice_aux_ida, pf->aux_idx);
+	xa_erase(&ice_aux_id, pf->aux_idx);
 	return ret;
 }
 
@@ -389,5 +390,5 @@ void ice_deinit_rdma(struct ice_pf *pf)
 
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
