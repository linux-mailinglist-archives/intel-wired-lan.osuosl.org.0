Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8163649DC3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:33:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05E95813B4;
	Mon, 12 Dec 2022 11:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05E95813B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844782;
	bh=6h3vyZ3fx29AE6gz2sc23FSjO55M0/pIgn/5xYU/3e4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sBL60taTshGzFRhCS8BoaU6mRPacCXOSn3oinWD2Os1onMYgpIRmvF3TXNOTsXQxH
	 DnyyB9uNgCr5dr9v7CQ11iZoxrS6ji2E3d0gvCWoxtQAdAzRGu77mxr8R2bvKMuYJv
	 EMlaC9W0ziIPXsTYb969HeGcdYsVeZ2N+E+c4fSazuoSzOuJ+sTXCuiMDmZ7iqGsex
	 mYhzmaKVB6HcKcjdq0hleu5Pn8aYzoKQA6jwvwsAshGjrAd3pHWDgHI9F0/IGN0tKr
	 RJ75LbVRST0j/Jg0+Vf7WgoZNScvtDu2kNb+nHMzD+Gxd+m6QNNWb2oAxhCzxOdIX5
	 tR8sqGWb4HKwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 76ITfErhUJHQ; Mon, 12 Dec 2022 11:33:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF0D481353;
	Mon, 12 Dec 2022 11:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF0D481353
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1ACDA1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0328C81353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0328C81353
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6r41-QovyOz9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B13C8134E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B13C8134E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861440"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861440"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:32:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459697"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459697"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:32:51 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:37 +0100
Message-Id: <20221212111645.1198680-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844775; x=1702380775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hQRjRJRxu6zvKZ+KBQHMEO2sO57BiWQYMINIf++VJxo=;
 b=k+qKDPO2hHNJFSybnak5CsdFXWFpLpVDl74zJGejRg48MHgi9N1W1QLh
 FQyAk/uTPANyIc2YjkUfiP7Gc/7ldNfZzum//+IevXIbuPTmRm3aiPttK
 tik6rtKifOlQw41mk5mIpWAG3MG2hR2qg6JM4Ge3V1wfpjy+WycO/1jbJ
 rCb6/N60M8PrHZK3zwP5AgYQzD1p6GqOVE6HGH3blVi6Y2Zuhknwfnlqc
 2jNtfc+pCw6U5a0IzEaeVqsfPalxa92TIJHAevt+ThSGJzFUvWVJYPyul
 kydTSW5YqfM0PMFkT7Smsof4SCyIlqEKuwBurwy9j1KRC/oK7pmDTxTxM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k+qKDPO2
Subject: [Intel-wired-lan] [PATCH net-next v1 02/10] ice: alloc id for RDMA
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
