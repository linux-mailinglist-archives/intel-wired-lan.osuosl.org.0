Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 710FF736898
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07B58418C4;
	Tue, 20 Jun 2023 10:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07B58418C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255257;
	bh=oN3Sv6U0OWEYP/j/4zGTyY+rXe5ENEhEvRp+jzAEx7g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=irnO7OAes0HpeE795FFCv4/4AEmRrssjl4aq0eihyTxRk+rM6YjinlKRZhuvJ0MXz
	 IxMFG0QDR+NaKqH2r5sqYmkC4OGw69TP4IfZ6F6air3FDYfQkjVMzCDp26B7iefZiY
	 tUuRx9gH/SpT/xV7gQUeMO/VOBSNdK7emAAOSfMn0WvIlO13kp6pL/kvRQhYjWiDAI
	 jqUl81NqfL39mwyeJ69EnLjBSS84IMpg2UuSZHpGlIicbPpmOrOdhas0C6m7U3BIhZ
	 PBb+3DhE9nnj7FvHWC/zwW+0lVU3cjv6qqIR4OTzDO5ooVpCO30MLJFepDAo0V7xzY
	 T+wsHw78+q2cA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSEwXU8mKTns; Tue, 20 Jun 2023 10:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89DB0418C0;
	Tue, 20 Jun 2023 10:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89DB0418C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD8A91BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1EC3410A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1EC3410A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdUoII62YnTN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F45F4099D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F45F4099D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688301"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688301"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227067"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227067"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:31 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:47 +0000
Message-Id: <20230620100001.5331-2-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255249; x=1718791249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AcaCFsonEGPgYn2LlpM5wkTUExPFHQgqU5EPNplCrRA=;
 b=CC+rn2vA8BKPFBCNd8GBQpNOkR2nMtQF+i6F2PM61SXL+D9v7lF2+r94
 FdmqQ9hE9Uk6jtyQ65YvuDyVlCcwfqz6QEEsBvyJyzXi3Qu/iVNiNGHSI
 kEnaDQSqjN2PN+twKvzJqNMfgiM/1Q07dNFwZk6MGkUir/l+6uZEXLE6a
 pPm6llGifO3dfdSLMQxRPlzd/lop/DGY9n5pxVVBMLL6xxqnayjJt9/kj
 7+A972Bb69g1GHY22Z1xWfvK3Yf+P/oMN3SZeMNnlRSCcNcbAzKMYKupx
 aLLc43TN4T+8DqNsGJ5yDGEo759Bmj0b/qZuP0ElQIPkGF7CWS7B633qR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CC+rn2vA
Subject: [Intel-wired-lan] [PATCH iwl-next V1 01/15] ice: Fix missing legacy
 32byte RXDID in the supported bitmap
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com,
 Xu Ting <ting.xu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Xu Ting <ting.xu@intel.com>

32byte legacy descriptor format is preassigned.
Commit e753df8fbca5 ("ice: Add support Flex RXD") created a
supported RXDIDs bitmap according to DDP package. But it missed
the legacy 32byte RXDID since it is not listed in the package.
This patch adds this RXDID to the bitmap.

Signed-off-by: Xu Ting <ting.xu@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 92490fe655ea..ae1e09f0875b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2615,12 +2615,14 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 		goto err;
 	}
 
-	/* Read flexiflag registers to determine whether the
-	 * corresponding RXDID is configured and supported or not.
-	 * Since Legacy 16byte descriptor format is not supported,
-	 * start from Legacy 32byte descriptor.
+	/* RXDIDs supported by DDP package can be read from the register
+	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
+	 * is not listed in DDP package, add it in the bitmap manually.
+	 * Legacy 16byte descriptor is not supported.
 	 */
-	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
+	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
+
+	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
 		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
 		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
 			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
